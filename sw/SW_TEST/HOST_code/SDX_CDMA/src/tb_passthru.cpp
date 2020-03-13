#include<stdio.h>
#include<math.h>
#include <errno.h>

#include <fcntl.h>
#include <sys/types.h>
#include <sys/mman.h>

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <chrono>
#include <cmath>
#include "pcie_memio.h" 
#include "srai_accel_utils.h" 
#define ZERO_f 1.0e-4
#define ITERATION_SZ 1
//#define ITERATION_SZ 4096
//#define ITERATION_SZ 8192
//#define ITERATION_SZ 16384
//#define ITERATION_SZ 32768
#define ONE_GIG (1024UL*1024UL*1024UL)

#define USE_UDMABUF

#define DDR_TEST_INTERFACE 0

#define HW_Kernel_frequency 250000000.0


using namespace std;


int check_buf(unsigned char* buf, unsigned int size)
{
    int i;
    int error_count = 0;
    for(i = 0; i < size; i++) {
        buf[i] = (char)0xA5;
    }
    for(i = 0; i < size; i++) {
        if (buf[i] != (char)0xA5) {
         error_count++;
        }
    }
    return error_count;
}


int main(int argc, char** argv) {

  int            fd;
  char  attr[1024];
  unsigned int   udma_buf_size;
  unsigned int   buf_size;
  uint64_t phys_addr;
  uint64_t phys_addr_upper;
  unsigned long  debug_vma = 0;
  unsigned long  sync_mode = 2;
  uint32_t dbg_counter = 0;

  unsigned long int itrn = 0;
  int compute_itn_count;
  uint32_t TCR0;
  volatile uint32_t TCSR0;
  uint32_t itn_count = 0;
  time_t t;
  srand((unsigned) time(&t));
  double high_res_elapsed_time = 0.0f;
  double high_res_elapsed_time_HW = 0.0f;
  double high_res_elapsed_time_SW = 0.0f;
  chrono::high_resolution_clock::time_point start_t;
  chrono::high_resolution_clock::time_point stop_t;
  chrono::duration<double> elapsed_hi_res;


  int   fd_kmem;
  void* kmem_buf;
  unsigned char * kmem_buf_ptr;



  SysMon_temp_struct sys_temprature;
  deviceDNA_struct deviceDNA;
  bool RESULT_SUCESSFULL;
  kernel_execution_metric_struct kernel_execution_metric; 

  uint64_t cal_itn_count = 0;

// Compile for SRAI custom HLS accelerator platform 
    uint32_t PCI_BAR_base;
    stringstream PCI_BAR_base_str;
    string PR_binFile_name;

    if (argc != 3) {
        printf("usage: %s fpga_bin_file \n", argv[0]);
        return -1;
    }

    PCI_BAR_base_str << hex <<  argv[1]; 
    PR_binFile_name = argv[2];

    PCI_BAR_base_str >> PCI_BAR_base;

    
    cout << "Base Addr = 0x"  << hex << PCI_BAR_base << endl;

    cout << "Initializing FPGA\n";
    fpga_dev_mem *my_fpga_ptr = new fpga_dev_mem;
    my_fpga_ptr->fpga_dev_mem_init(PCI_BAR_base);

#ifdef USE_UDMABUF
    // __ udmabuf kernal mode driver needs to be installed 
    if ((fd  = open("/sys/class/udmabuf/udmabuf0/phys_addr", O_RDONLY)) != -1) {
      read(fd, attr, 1024);
      sscanf(attr, "%llx", &phys_addr);
      close(fd);
    }

    if ((fd  = open("/sys/class/udmabuf/udmabuf0/size"     , O_RDONLY)) != -1) {
      read(fd, attr, 1024);
      sscanf(attr, "%d", &udma_buf_size);
      close(fd);
    }

    if ((fd  = open("/sys/class/udmabuf/udmabuf0/sync_mode", O_WRONLY)) != -1) {
      sprintf(attr, "%d", sync_mode);
      write(fd, attr, strlen(attr));
      close(fd);
    }

    if ((fd  = open("/sys/class/udmabuf/udmabuf0/debug_vma", O_WRONLY)) != -1) {
      sprintf(attr, "%d", debug_vma);
      write(fd, attr, strlen(attr));
      close(fd);
    }

    //check_buf_test((64*1024), 0, 0);
    if ((fd  = open("/sys/class/udmabuf/udmabuf0/sync_mode", O_WRONLY)) != -1) {
      sprintf(attr, "%d", sync_mode);
      write(fd, attr, strlen(attr));
      close(fd);
    }

    //buf_size = udma_buf_size;
    buf_size = 512*1024;

    printf("phys_addr=0x%llx\n", phys_addr);
    printf("size=%d\n", udma_buf_size);
    printf("DMA size=%d\n", buf_size);
    printf("sync_mode=%d, O_SYNC=%d, ", sync_mode, (O_SYNC)?1:0);

    if ((fd_kmem  = open("/dev/udmabuf0", O_RDWR | O_SYNC)) != -1) {
      kmem_buf = mmap(NULL, buf_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
      kmem_buf_ptr = (unsigned char *)kmem_buf;
      printf ("SRAI__DBG :: Virtual Address = %llx\n", kmem_buf);
      //error_count = check_buf((unsigned char *)kmem_buf, size);
    }
    // __SRAI Initialize Kernel buffer (1MB worth)
    for (int i = 0; i < buf_size; i++) {
        kmem_buf_ptr[i] = (unsigned char)((rand() % 256));
//         if (i < (buf_size/2)) { 
//             kmem_buf_ptr[i] = (0x000000FF & i);
//         } else {
//             kmem_buf_ptr[i] = (0xA5);
//         }
    }
    // __ udmabuf kernal mode driver needs to be installed 
   printf("-------------------------------------------------------------\n\n\n");

#endif //USE_UDMABUF

    uint32_t AXI_LITE_SREF_REG = AXI_LITE_DDR4_2_SREF_REG;
    uint32_t AXI_LITE_SREF_STATE = AXI_LITE_DDR4_2_SREF_STATE;
    uint64_t AXI_MM_DDR4 = AXI_MM_DDR4_C2;
    string MIG_XSDB_GOLDEN_DATA_FILE = "mig_2_temp_test_GOLD.txt";

    switch (DDR_TEST_INTERFACE) {
        case 0 :
            AXI_LITE_SREF_REG = AXI_LITE_DDR4_0_SREF_REG;
            AXI_LITE_SREF_STATE = AXI_LITE_DDR4_0_SREF_STATE;
            MIG_XSDB_GOLDEN_DATA_FILE = "mig_0_temp_test_GOLD.txt";
            AXI_MM_DDR4 = AXI_MM_DDR4_C0;
            break;
        case 1 :
            AXI_LITE_SREF_REG = AXI_LITE_DDR4_1_SREF_REG;
            AXI_LITE_SREF_STATE = AXI_LITE_DDR4_1_SREF_STATE;
            MIG_XSDB_GOLDEN_DATA_FILE = "mig_1_temp_test_GOLD.txt";
            AXI_MM_DDR4 = AXI_MM_DDR4_C1;
            break;
        case 2 :
            AXI_LITE_SREF_REG = AXI_LITE_DDR4_2_SREF_REG;
            AXI_LITE_SREF_STATE = AXI_LITE_DDR4_2_SREF_STATE;
            MIG_XSDB_GOLDEN_DATA_FILE = "mig_2_temp_test_GOLD.txt";
            AXI_MM_DDR4 = AXI_MM_DDR4_C2;
            break;
        case 3 :
            AXI_LITE_SREF_REG = AXI_LITE_DDR4_3_SREF_REG;
            AXI_LITE_SREF_STATE = AXI_LITE_DDR4_3_SREF_STATE;
            MIG_XSDB_GOLDEN_DATA_FILE = "mig_3_temp_test_GOLD.txt";
            AXI_MM_DDR4 = AXI_MM_DDR4_C3;
            break;
        deafult :
            AXI_LITE_SREF_REG = AXI_LITE_DDR4_0_SREF_REG;
            AXI_LITE_SREF_STATE = AXI_LITE_DDR4_0_SREF_STATE;
            MIG_XSDB_GOLDEN_DATA_FILE = "mig_2_temp_test_GOLD.txt";
            AXI_MM_DDR4 = AXI_MM_DDR4_C2;
            break;

    }





    uint32_t curr_shell_version = fpga_report_SHELL_VER (my_fpga_ptr);
    cout << "Shell Version Number = 0x" << hex << curr_shell_version << endl;
    cout << "EFUSE val = 0x" << hex << fpga_report_EFUSE_VAL (my_fpga_ptr) << endl;

    cout << dec << "Testing Shell BRAM 8K Memory \n";
    fpga_test_AXIL_LITE_8KSCRATCHPAD_BRAM (my_fpga_ptr);

    //DeIsolate before doing anyting on AXI Buses
    cout << "DeIsolate PR region \n";
    my_fpga_ptr->fpga_poke(AXI_LITE_GPIO_PR_ISOLATION, DEISOLATE_NORTH_PR); 
    unset_ddr4_RESET_GATE (my_fpga_ptr);
    SR_CL_ddr_deassert_all (my_fpga_ptr, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
    cout << "Deassert SW reset to PR region PR region \n";
    assert_CL_rst_all_n(my_fpga_ptr);
    deassert_CL_rst_all_n (my_fpga_ptr);
    cout << "...Waiting for Cal Done......" << endl;
    cal_itn_count = wait_ddr_CAL_DONE (my_fpga_ptr, 0xF);//ddr_mask = 0xf = all DDR's
    cout << " ***********__SRAI_DBG cal_itn_count = " << cal_itn_count << endl;

    SR_CL_ddr_XSDB_read (my_fpga_ptr, MIG_XSDB_GOLDEN_DATA_FILE, DDR_TEST_INTERFACE);

    fpga_read_temprature(my_fpga_ptr, &sys_temprature, 10);
    cout << "Current FPGA Die Temprature (deg C) =  " << sys_temprature.current_temp << endl;
    cout << "Current FPGA Max Die Temprature (deg C) =  " << sys_temprature.maximum_temp << endl;
    cout << "Current FPGA Min Die Temprature (deg C) =  " << sys_temprature.minimum_temp << endl;

    fpga_device_DNA (my_fpga_ptr, &deviceDNA);
    cout << "FPGA Device DNA reg A = 0x" << hex << deviceDNA.devDNA_A << endl;
    cout << "FPGA Device DNA reg B = 0x" << hex << deviceDNA.devDNA_B << endl;
    cout << "FPGA Device DNA reg C = 0x" << hex << deviceDNA.devDNA_C << endl;

    cout << "Start HLS execution " << endl;
    cout << " ............... Programing PR clock ------------------ " << endl;
    fpga_PROGRAM_PR_CLOCK (my_fpga_ptr, HW_Kernel_frequency);
    cout << " ....DONE ...... Programing PR clock ------------------ " << endl;
    //
    //The timer is running at 50Mhz hence 
    // Exact Hex timer value for  1 Sec = 0x2FAF080 (50000000 Dec)
    //TCR0 = fpga_ICAP_DELAY_TIMER_SET_INITIALIZE (my_fpga_ptr, 0x02FAF080); // Corresponds to 1 Sec.
    //TCR0 = fpga_ICAP_DELAY_TIMER_SET_INITIALIZE (my_fpga_ptr, 0xFFFFFFFE);// Full Scale 32bit counter = 85.9 Sec (Max for 32bit timer)
    TCR0 = fpga_ICAP_DELAY_TIMER_SET_INITIALIZE (my_fpga_ptr, 0x000000FE);// Full Scale 32bit counter = 85.9 Sec (Max for 32bit timer)
    cout << "ICAP Delay Timer Value TCR0 = " << hex << TCR0 << endl;
    fpga_ICAP_DELAY_TIMER_RUN (my_fpga_ptr);
    //__SRAI
    // __SRAI Perform ICAP - IPROG Here and exit.
    // THe FPGA will get the IPROG Sequence when the timer expires.
    start_t = chrono::high_resolution_clock::now();
    TCSR0  = fpga_ICAP_DELAY_TIMER_READ_ICAP_ENABLE (my_fpga_ptr);
    itn_count = 0;
    while (TCSR0 != 1) {
        TCSR0  = fpga_ICAP_DELAY_TIMER_READ_ICAP_ENABLE (my_fpga_ptr);
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "ICAP TImer Execution Error !!!\n";
            cout << "ENABLE Bit TCSR0 = " << hex << TCSR0 << endl;
            TCR0 = fpga_ICAP_DELAY_TIMER_READ_CURRENT_VALUE (my_fpga_ptr);
            cout << "IDAP Delay Timer Value TCR0 = " << hex << TCR0 << endl;
            break;
        }
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "ICAP DElay time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "ICAP Delay Itn_count = " << dec << itn_count << endl;


    /* Program Partial Bit file */
    cout << " ............... Programing PR Kernel  bitstream  ------------------ " << endl;
    assert_CL_rst_all_n(my_fpga_ptr);
    set_ddr4_RESET_GATE (my_fpga_ptr);
    fpga_PROGRAM_NORTH_PR(my_fpga_ptr, PR_binFile_name);
    unset_ddr4_RESET_GATE (my_fpga_ptr);
    deassert_CL_rst_all_n(my_fpga_ptr);
    cout << "...Waiting for Cal Done......" << endl;
    cal_itn_count = wait_ddr_CAL_DONE (my_fpga_ptr, 0xF); //ddr_mask = 0xf = all DDR's
    cout << " ***********__SRAI_DBG cal_itn_count = " << cal_itn_count << endl;
    cout << " ............... Done Programing PR Kernel Bitstream ------------------ " << endl;

    cout << "Testing ROLE  BRAM 4K BRAM Memory \n";
    fpga_test_AXIL_LITE_4KSCRATCHPAD_BRAM_ROLE (my_fpga_ptr);

    fpga_device_DNA_ROLE (my_fpga_ptr, &deviceDNA);
    cout << "FPGA Device ROLE DNA reg A = 0x" << hex << deviceDNA.devDNA_A << endl;
    cout << "FPGA Device ROLE DNA reg B = 0x" << hex << deviceDNA.devDNA_B << endl;
    cout << "FPGA Device ROLE DNA reg C = 0x" << hex << deviceDNA.devDNA_C << endl;



#ifdef USE_UDMABUF
    phys_addr_upper = phys_addr + (uint64_t)(buf_size/2);

    // Throughput testing
    //SRAI_dbg_wait("Bandwidth test From Host to Card");
    cout << "\n\nTesting Host to Card Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (my_fpga_ptr, phys_addr, (AXI_MM_DDR4_C1 + itrn*buf_size), buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Host Memory to Card DDR4 xfer  Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Host Memory to Card DDR4 xfer  THroughput =  " <<  ((itrn*buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec  << (itrn*buf_size) << " bytes\n";

    //SRAI_dbg_wait("Bandwidth test From Card to Host ");
    cout << "\n\nTesting Card to Host Bandwidth .........\n";
    start_t = chrono::high_resolution_clock::now();
    for (itrn = 0; itrn < ITERATION_SZ; itrn++) {
        fpga_CDMA_XFER (my_fpga_ptr, (AXI_MM_DDR4_C1 + itrn*buf_size), phys_addr, buf_size );
    }
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "Card DDR4 xfer to Host Memory Execution time =  " <<  high_res_elapsed_time_HW << "s\n";
    cout << "Card DDR4 xfer to Host Memory THroughput =  " <<  ((itrn*buf_size)/high_res_elapsed_time_HW) << " Bytes/s   with " << dec << (itrn*buf_size) << " bytes\n\n\n";

    //SRAI_dbg_wait("CDMA From_Host");
    // __SRAI Initialize Kernel buffer (1MB worth)
    for (int i = 0; i < buf_size; i++) {
        kmem_buf_ptr[i] = (unsigned char)((rand() % 256));
    }

    start_t = chrono::high_resolution_clock::now();
    cout << " Initiating CDMA XFER From_host to DDR_C2 (shell DDR4)----------- " << endl;
    fpga_CDMA_XFER (my_fpga_ptr, phys_addr, AXI_MM_DDR4_C2, (uint32_t)(buf_size/2) );

//     cout << " Initiating CDMA XFER From DDR_C1 to DDR_C0 (shell DDR4)----------- " << endl;
//     fpga_CDMA_XFER (my_fpga_ptr, AXI_MM_DDR4_C1, AXI_MM_DDR4_C0,  (uint32_t)(buf_size/2) );
// 
//     cout << " -- Initiating CDMA XFER From DDR_C0 to DDR_C2 (shell DDR4)----------- " << endl;
//     fpga_CDMA_XFER (my_fpga_ptr, AXI_MM_DDR4_C0, AXI_MM_DDR4_C2,  (uint32_t)(buf_size/2) );

    cout << " Initiating CDMA XFER From DDR_C2 to DDR_C3 (shell DDR4)----------- " << endl;
    fpga_CDMA_XFER (my_fpga_ptr, AXI_MM_DDR4_C2, AXI_MM_DDR4_C3,  (uint32_t)(buf_size/2) );

    cout << " Initiating CDMA XFER From DDR_C3 to host (shell DDR4)----------- " << endl;
    fpga_CDMA_XFER (my_fpga_ptr, AXI_MM_DDR4_C3, phys_addr_upper, (uint32_t)(buf_size/2) );
    //      fpga_CDMA_XFER (my_fpga_ptr, phys_addr, phys_addr_upper, buf_size);


    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "CDMA HOST -> 4x DDR4 -> Host xfer time =  " <<  high_res_elapsed_time_HW << "s\n";
    
    unsigned int val_error = 0;
    for (int i = 0; i < (uint32_t)(buf_size/2); i++) {
        if(kmem_buf_ptr[i] != kmem_buf_ptr[i + (buf_size/2)]) {
            //cout << " At index = " << i <<"  Expected  " << hex << (unsigned int)kmem_buf_ptr[i] << " But Got  " << (unsigned int)kmem_buf_ptr[i + buf_size] << endl;
            val_error++;
        }
    }

    cout << "Kernel buffer validation : No. of Errors = " << dec << val_error << endl;
    cout << "------------------------------------------------------------------------\n";

    // ------------ Clean -----------------------
    close(fd_kmem);
#endif //USE_UDMABUF

    // Software reset rst_main_n test
    dbg_counter = my_fpga_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT); 
    cout << "DBG_counter itn_1  before SW rst man_rst_n = " << dbg_counter << endl;
    dbg_counter = my_fpga_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT); 
    cout << "DBG_counter itn_2  before SW rst man_rst_n = " << dbg_counter << endl;
    cout << "Assert CL rst_n \n";
    assert_CL_rst_main_n (my_fpga_ptr);
    deassert_CL_rst_main_n (my_fpga_ptr);
    cout << "deassert CL rst_n \n";
    dbg_counter = my_fpga_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT); 
    cout << "DBG_counter itn_1  after SW rst man_rst_n = " << dbg_counter << endl;
    dbg_counter = my_fpga_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT); 
    cout << "DBG_counter itn_2  after SW rst man_rst_n = " << dbg_counter << endl;


//-----------------------------------------------------------------------------------
//***********************************************************************************
//  SRAI test _temp
//-----------------------------------------------------------------------------------
//
//
//
if (0) { // __SRAI DBG
        cout << "**************************************************Srai temp test start...................\n"; 
        fpga_CDMA_RESET (my_fpga_ptr);
        assert_CL_rst_main_n (my_fpga_ptr);
        deassert_CL_rst_main_n (my_fpga_ptr);
        
        bool PR_FPGA = true;
        uint32_t MAX_NUM_ITERATIONS = 1;
        //uint32_t MAX_NUM_ITERATIONS = 10;
        //uint32_t MAX_NUM_ITERATIONS = 100;
        uint32_t SREF_SUCESS = 0;

        for (uint32_t indx = 0; indx < MAX_NUM_ITERATIONS; indx++) {


            for (int i = 0; i < buf_size; i++) {
                kmem_buf_ptr[i] = (unsigned char)((rand() % 256));
            }
            fpga_CDMA_XFER (my_fpga_ptr, phys_addr, AXI_MM_DDR4, (uint32_t)(buf_size/2) );

            usleep (100);
            SR_CL_ddr_sref_request (my_fpga_ptr, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
            set_ddr4_RESET_GATE (my_fpga_ptr);

            assert_CL_rst_all_n(my_fpga_ptr);
            if (PR_FPGA) {
                cout << "** SREF Entering FPGA PR Prog protocol" << endl;
                fpga_PROGRAM_NORTH_PR(my_fpga_ptr, PR_binFile_name);
            } else {
                cout << "** SREF Entering NON PR emulation" << endl;
                cout << "** SREF ...Waiting  6 sec post config ............................." << endl;
                usleep(6000000);
                cout << "** SREF ... Done Waiting " << endl;
            }
            
            SR_CL_ddr_mem_init_skip_assert (my_fpga_ptr, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
            unset_ddr4_RESET_GATE (my_fpga_ptr);
            deassert_CL_rst_all_n(my_fpga_ptr);
            cal_itn_count = wait_ddr_CAL_DONE (my_fpga_ptr, 0); // wait for DDR_0 
            cal_itn_count = wait_ddr_CAL_DONE (my_fpga_ptr, 1); //  wait for DDR_1 
            cal_itn_count = wait_ddr_CAL_DONE (my_fpga_ptr, 2); //  wait for DDR_2 
            cout << "** SREF  ***********__SRAI_DBG SREF RESTORE cal_itn_count for DDR4_... = " << cal_itn_count << endl;
            cout << "** SREF ....End FPGA PR Prog protocol" << endl;
            usleep(10000);


            SR_CL_ddr_XSDB_write (my_fpga_ptr, MIG_XSDB_GOLDEN_DATA_FILE, DDR_TEST_INTERFACE);
            SR_CL_ddr_XSDB_read (my_fpga_ptr, "mig_temp_test_rd.txt", DDR_TEST_INTERFACE);

            SR_CL_ddr_app_restore_complete_assert (my_fpga_ptr, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
            cout << "** SREF ...Waiting for Cal Done for DDR4......" << endl;
            cal_itn_count = wait_ddr_CAL_DONE (my_fpga_ptr,DDR_TEST_INTERFACE); // ddr_mask = 0x1 = DDR_3
            cout << " ** SREF ***********__SRAI_DBG cal_itn_count for DDR4 = " << cal_itn_count << endl;
            SR_CL_ddr_deassert_all (my_fpga_ptr, AXI_LITE_SREF_REG, AXI_LITE_SREF_STATE);
            if (cal_itn_count > 50000) {
                cout << " DDR Self Refresh Failed !!!!! \n";
                SR_CL_ddr_XSDB_read (my_fpga_ptr, "mig_temp_test_rd_FAIL.txt", DDR_TEST_INTERFACE);
                assert_CL_rst_n(my_fpga_ptr, DDR_TEST_INTERFACE);
                deassert_CL_rst_n(my_fpga_ptr, DDR_TEST_INTERFACE);
                cal_itn_count = wait_ddr_CAL_DONE (my_fpga_ptr, DDR_TEST_INTERFACE); // ddr_mask = 0x1 = DDR_3
                cout << " ***********__SRAI_DBG cal_itn_count for DDR4 = " << cal_itn_count << endl;
            } else {
                SREF_SUCESS++;
                cout << " DDR Self Refresh sucessfully finished\n";
                cout << " Initiating CDMA XFER From DDR to host (SREF  DDR4 )----------- " << endl;
                fpga_CDMA_XFER (my_fpga_ptr, AXI_MM_DDR4, phys_addr_upper, (uint32_t)(buf_size/2) );
                unsigned int val_error = 0;
                for (int i = 0; i < (uint32_t)(buf_size/2); i++) {
                    if(kmem_buf_ptr[i] != kmem_buf_ptr[i + (buf_size/2)]) {
                        val_error++;
                    }
                }
                cout << "Kernel buffer validation : No. of Errors = " << dec << val_error << endl;
                cout << "------------------------------------------------------------------------\n";
            }

            cout << "Testing ROLE  BRAM 4K BRAM Memory \n";
            fpga_test_AXIL_LITE_4KSCRATCHPAD_BRAM_ROLE (my_fpga_ptr);


            cout << "\n*****************************************************************************************\n"; 
            cout << "Iteration Count = " << (indx+1) << "  Sref scuss =  " << SREF_SUCESS << "  Sucess Rate = " << (double)((double)(SREF_SUCESS*100.0)/(double)(indx+1)) << "% "<< endl;
            cout << "*****************************************************************************************\n"; 
            cout << "**************************************************Srai temp test *End*...................\n"; 
    }

} // __SRAI DBG

//-----------------------------------------------------------------------------------
//***********************************************************************************
//  SRAI test _temp
//-----------------------------------------------------------------------------------


    fpga_clean(my_fpga_ptr);
    cout << "*************     Test finished ****************************************************************************\n"; 
    return 0;
}
