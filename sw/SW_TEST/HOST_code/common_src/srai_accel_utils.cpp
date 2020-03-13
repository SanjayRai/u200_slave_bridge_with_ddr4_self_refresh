/* Sanjay Rai - Test routing to access PCIe via  dev.mem mmap  */
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <errno.h>
#include <time.h>
#include <inttypes.h>
#include <iostream>
#include <fstream>
#include <string>
#include <chrono>
#include <cmath>
#include "pcie_memio.h" 
//#include "pcie_memio_winx.h" 
#include "srai_accel_utils.h" 

using namespace std;

void fpga_CDMA_RESET (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    volatile uint32_t ret_data = 0;
    uint32_t itn_count = 0;
    ret_data = (fpga_AXI_Lite_ptr->fpga_peek(CDMA_CTRL_REG) | 0x00000004); 
    fpga_AXI_Lite_ptr->fpga_poke(CDMA_CTRL_REG, ret_data); // Soft Reset
    usleep(10);
    itn_count = 4;
    while (ret_data != 0x0) {
        ret_data = (fpga_AXI_Lite_ptr->fpga_peek(CDMA_STATUS_REG) & 0x00000004); 
        usleep(10);
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "CDMA Execution Error :: CDMA Reset register indicates not ready ...! reg = " << ret_data << endl;
            break;
        }
    }
}
bool fpga_CDMA_XFER (fpga_dev_mem *fpga_AXI_Lite_ptr, uint64_t SRC_ADDR, uint64_t DEST_ADDR, uint32_t XFER_SZ ) {
    volatile uint32_t ret_data = 0;
    uint32_t itn_count = 0;
    fpga_CDMA_RESET(fpga_AXI_Lite_ptr);
    // Check if the CDMA is Idle
    bool ret_val = false;
    while (ret_data != 0x2) {
        ret_data = (fpga_AXI_Lite_ptr->fpga_peek(CDMA_STATUS_REG) & 0x00000002); 
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "CDMA Execution Error :: CDMA Status register indicates not ready ...!\n";
            ret_val = true;
            break;
        }
    }
    cout <<  "SRAI__DBG CDMA iteration_count IDL_START =  " << dec << itn_count << endl;

    //SRAI_dbg_wait("CDMA status loop 1");
    fpga_AXI_Lite_ptr->fpga_poke(CDMA_CTRL_REG, 0x00001000); //Enable IOC_Irq_enable (Interrupt on Complete) 
    fpga_AXI_Lite_ptr->fpga_poke(CDMA_SOURCE_ADDR_LSB_REG, (uint32_t)((0x00000000FFFFFFFFULL & SRC_ADDR)));
    fpga_AXI_Lite_ptr->fpga_poke(CDMA_SOURCE_ADDR_MSB_REG, (uint32_t)((0xFFFFFFFF00000000ULL & SRC_ADDR) >> 32));
    fpga_AXI_Lite_ptr->fpga_poke(CDMA_DEST_ADDR_LSB_REG,   (uint32_t)((0x00000000FFFFFFFFULL & DEST_ADDR)));
    fpga_AXI_Lite_ptr->fpga_poke(CDMA_DEST_ADDR_MSB_REG,   (uint32_t)((0xFFFFFFFF00000000ULL & DEST_ADDR) >> 32));
    fpga_AXI_Lite_ptr->fpga_poke(CDMA_BTT_REG, (uint32_t)XFER_SZ);
    //cout << "CDMA_STATUS_REG start = " << hex << (unsigned int)fpga_AXI_Lite_ptr->fpga_peek(CDMA_STATUS_REG) << endl;
    //usleep(150);
    //usleep(250);
    ret_data = 0;
    itn_count = 0;
    while (ret_data != 0x00001000) {
        ret_data = (fpga_AXI_Lite_ptr->fpga_peek(CDMA_STATUS_REG) & 0x00001000); 
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "CDMA Execution Timeout Error :: CDMA Interrupt Status register indicates no XFER happened!\n";
            break;
            ret_val = true;
        }
    }
    cout <<  "SRAI__DBG CDMA iteration_count INTR =  " << dec << itn_count << endl;
    fpga_AXI_Lite_ptr->fpga_poke(CDMA_STATUS_REG, (ret_val | 0x00001000)); 
    ret_data = 0;
    itn_count = 0;
    while (ret_data != 0x2) {
        ret_data = (fpga_AXI_Lite_ptr->fpga_peek(CDMA_STATUS_REG) & 0x00000002); 
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "CDMA Execution Error :: CDMA Status register indicates not ready!\n";
            break;
            ret_val = true;
        }
    }
    //cout << "CDMA_STATUS_REG end = " << hex << (unsigned int)fpga_AXI_Lite_ptr->fpga_peek(CDMA_STATUS_REG) << endl;
    cout <<  "SRAI__DBG CDMA iteration_count IDL_END =  " << dec << itn_count << endl;
    return (ret_val);
}

void fpga_test_64K_DDR4_SHELL (fpga_dev_mem *fpga_AXI_Lite_ptr) {

    cout << "Testing 64K DDR4 Memory\n";
    uint32_t i_val = 0;
    uint32_t tmp_dbg_val[64*1024];
    for (int idx = 0; idx < 64*1024; idx+=4) {
        tmp_dbg_val[idx]  = (uint32_t)i_val;
        i_val++;
        //tmp_dbg_val[idx]  = (uint32_t)(rand() % 0xffffffff); 
        //tmp_dbg_val[idx]  = (uint32_t)0x12345678;
        fpga_AXI_Lite_ptr->fpga_poke((AXI_LITE_SHELL_DDR4_BASE + idx), tmp_dbg_val[idx]);
    }
    uint32_t tmp_dbg;
    for (int idx = 0; idx < 64*1024; idx+=4) {
        tmp_dbg= fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SHELL_DDR4_BASE + idx);
        if (tmp_dbg != tmp_dbg_val[idx]) {
            printf("Error !!! Axi_lite Test failed @ Index = %d :: Expected %x but got %x\n", idx, tmp_dbg_val[idx], tmp_dbg);
        }
    }

    cout << "Done Testing Axi_Lite ScratchPad BRAM\n";

}

void fpga_test_AXIL_LITE_8KSCRATCHPAD_BRAM (fpga_dev_mem *fpga_AXI_Lite_ptr) {

    cout << "Testing Axi_Lite ScratchPad BRAM\n";
    uint32_t tmp_dbg_val[8192];
    for (int idx = 0; idx < 8192; idx+=4) {
        tmp_dbg_val[idx]  = (uint32_t)(rand() % 0xffffffff); 
        fpga_AXI_Lite_ptr->fpga_poke((AXI_LITE_SCRATCH_PAD_BRAM + idx), tmp_dbg_val[idx]);
    }
    uint32_t tmp_dbg;
    for (int idx = 0; idx < 8192; idx+=4) {
        tmp_dbg= fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SCRATCH_PAD_BRAM + idx);
        if (tmp_dbg != tmp_dbg_val[idx]) {
            printf("Error !!! Axi_lite Test failed @ Index = %d :: Expected %x but got %x\n", idx, tmp_dbg_val[idx], tmp_dbg);
        }
    }

    cout << "Done Testing Axi_Lite ScratchPad BRAM\n";

}

void fpga_test_AXIL_LITE_4KSCRATCHPAD_BRAM_ROLE (fpga_dev_mem *fpga_AXI_Lite_ptr) {

    cout << "Testing Axi_Lite ScratchPad Role BRAM\n";
    uint32_t tmp_dbg_val[4096];
    for (int idx = 0; idx < 4096; idx+=4) {
        tmp_dbg_val[idx]  = (uint32_t)(rand() % 0xffffffff); 
        fpga_AXI_Lite_ptr->fpga_poke((AXI_LITE_SCRATCH_PAD_BRAM_ROLE + idx), tmp_dbg_val[idx]);
    }
    uint32_t tmp_dbg;
    for (int idx = 0; idx < 4096; idx+=4) {
        tmp_dbg= fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SCRATCH_PAD_BRAM_ROLE + idx);
        if (tmp_dbg != tmp_dbg_val[idx]) {
            printf("Error !!! Axi_lite Test failed @ Index = %d :: Expected %x but got %x\n", idx, tmp_dbg_val[idx], tmp_dbg);
        }
    }

    cout << "Done Testing Axi_Lite ScratchPad Role BRAM\n";

}

void fpga_read_temprature (fpga_dev_mem *fpga_AXI_Lite_ptr, SysMon_temp_struct *sys_temp, int average_num) {
        double temprature_v = 0.0;
        for (int i = 0 ; i < average_num; i++) {
            temprature_v += ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_Temptature_register))*509.3140064/(65536.0))-280.23087870;
        }
        sys_temp->current_temp = (temprature_v/(double)average_num); 
        sys_temp->maximum_temp = ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_MAX_Temptature_register))*507.5921310/(65536.0))-279.42657680;
        sys_temp->minimum_temp = ((double)(fpga_AXI_Lite_ptr->fpga_peek(SYSMON_MIN_Temptature_register))*509.3140064/(65536.0))-280.23087870;
}

uint32_t fpga_report_EFUSE_VAL (fpga_dev_mem *fpga_AXI_Lite_ptr) {
        return ( (uint32_t)(fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_EFUSE_SHELL_VER + 0x0 )));
}

uint32_t fpga_report_SHELL_VER (fpga_dev_mem *fpga_AXI_Lite_ptr) {
        return ( (uint32_t)(fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_EFUSE_SHELL_VER + 0x8 )));
}

void fpga_device_DNA (fpga_dev_mem *fpga_AXI_Lite_ptr, deviceDNA_struct *devDNA) {
        devDNA->devDNA_A = (uint32_t)(fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_devDNA_A));
        devDNA->devDNA_B = (uint32_t)(fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_devDNA_B));
        devDNA->devDNA_C = (uint32_t)(fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_devDNA_C));
}

void fpga_device_DNA_ROLE (fpga_dev_mem *fpga_AXI_Lite_ptr, deviceDNA_struct *devDNA) {
        fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_ROLE_GPIO_OUT, 0x1); 
        fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_ROLE_GPIO_OUT, 0x0); 
        usleep (10);
        devDNA->devDNA_A = (uint32_t)(fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_IN_B0));
        devDNA->devDNA_B = (uint32_t)(fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_IN_A1));
        devDNA->devDNA_C = (uint32_t)(fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_IN_A0));
}

void fpga_CLEAR_NORTH_PR (fpga_dev_mem *fpga_AXI_Lite_ptr, string PR_binFile_name) {
    unsigned long long int itn_count = 0;
    volatile uint32_t status_val = 0;
    cout << "Partial Clearing binfile name = " << PR_binFile_name << endl;

    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_GPIO_PR_ISOLATION, ISOLATE_NORTH_PR); 
    ICAP_prog_PR_binfile (fpga_AXI_Lite_ptr, PR_binFile_name);
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_GPIO_PR_ISOLATION, DEISOLATE_NORTH_PR); 
}


void fpga_PROGRAM_NORTH_PR (fpga_dev_mem *fpga_AXI_Lite_ptr, string PR_binFile_name) {
    unsigned long long int itn_count = 0;
    volatile uint32_t status_val = 0;
    cout << "Partial binfile name = " << PR_binFile_name << endl;

    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_GPIO_PR_ISOLATION, ISOLATE_NORTH_PR); 
    ICAP_prog_PR_binfile (fpga_AXI_Lite_ptr, PR_binFile_name);
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_GPIO_PR_ISOLATION, DEISOLATE_NORTH_PR); 
}


// ------------ Clean -----------------------
int fpga_clean (fpga_dev_mem *my_fpga_ptr) {
        my_fpga_ptr->fpga_dev_mem_clean();

        return 0;
}

void ICAP_prog_NOOP (fpga_dev_mem *fpga_AXI_Lite_ptr) {

    volatile uint32_t ret_data = 0;
    uint32_t itn_count = 0;

    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0xffffffff); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0xAA995566); 
    for (int i = 0; i < 50; i++) {
        fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x20000000); 
    }
    // ICAP Fifo Flush
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x1); 

}


void ICAP_prog_IPROG (fpga_dev_mem *fpga_AXI_Lite_ptr) {

    volatile uint32_t ret_data = 0;
    uint32_t itn_count = 0;

    // Reset the ICAP
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0xC); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x0); 
    // Check if the ICAP is ready
    //printf (" Status Reg = %x\n", ret_data);
    while (ret_data != 0x5) {
        ret_data = fpga_AXI_Lite_ptr->fpga_peek(ICAP_STATUS_REG); 
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "HLS Execution Error :: ICAP Status register indicates not ready!\n";
            break;
        }
    }

    // ICAP Data File processing
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0xffffffff); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0xAA995566); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x20000000); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x30020001); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x00000000); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x30008001); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x0000000F); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x20000000); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x20000000); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x20000000); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, 0x20000000); 
            // Write to the COntrol register to drain the Data FIFO every 60 or writes 
    // Final ICAP Fifo Flush
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x1); 

}


void ICAP_prog_PR_binfile (fpga_dev_mem *fpga_AXI_Lite_ptr, string PR_binFile_name) {

    volatile uint32_t ret_data = 0;
    uint32_t itn_count = 0;
    uint32_t byte_swapped;
    fstream fpga_bin_file;
    long long file_size;
    long long file_size_words;
    char *bitStream_buffer;
    uint32_t *bitstream_ptr;

/* Program Partial Bit file */
    fpga_bin_file.open(PR_binFile_name, ios::in | ios::binary);
    fpga_bin_file.seekg(0, fpga_bin_file.end);
    file_size = fpga_bin_file.tellg();
    file_size_words = (file_size/4); 
    fpga_bin_file.seekg(0, fpga_bin_file.beg);
    cout << "PR Bitfile size =  " << file_size << " Bytes \n";
    bitStream_buffer = new char [file_size];
    bitstream_ptr = (uint32_t *)bitStream_buffer;
    fpga_bin_file.read(bitStream_buffer, file_size);
    fpga_bin_file.close();

    // Reset the ICAP
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0xC); 
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x0); 
    // Check if the ICAP is ready
    //printf (" Status Reg = %x\n", ret_data);
    while (ret_data != 0x5) {
        ret_data = fpga_AXI_Lite_ptr->fpga_peek(ICAP_STATUS_REG); 
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "HLS Execution Error :: ICAP Status register indicates not ready!\n";
            break;
        }
    }

    ret_data = 0;
    // ICAP Data File processing
    for (int i = 0 ; i < file_size_words; i++) {
        byte_swapped = ((*bitstream_ptr>>24)&0x000000ff) | \
                       ((*bitstream_ptr>>8) &0x0000ff00) | \
                       ((*bitstream_ptr<<8) &0x00ff0000) | \
                       ((*bitstream_ptr<<24)&0xff000000);
        bitstream_ptr++;
    
        //cout << *bitstream_ptr << " :  Writing :  " << hex << byte_swapped << endl;
        fpga_AXI_Lite_ptr->fpga_poke(ICAP_WR_FIFO_REG, byte_swapped); 
        if (((i+1) % 60) == 0) {
            // Write to the COntrol register to drain the Data FIFO every 60 or writes 
            fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x1); 
            itn_count = 0;
            // Wait till Fifo is drained
            while (ret_data != 0x3F) {
                ret_data = fpga_AXI_Lite_ptr->fpga_peek(ICAP_WR_FIFO_VACANCY_REG); 
                itn_count++; 
                if (itn_count > 10000000) {
                    cout << "HLS Execution Error : ICAP FIFO hasn't drained!\n";
                    break;
                }
            }
        }
    }
    // Final ICAP Fifo Flush
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_CNTRL_REG, 0x1); 
    itn_count = 0;
    ret_data = 0;
    while (ret_data != 0x5) {
        ret_data = fpga_AXI_Lite_ptr->fpga_peek(ICAP_STATUS_REG); 
        itn_count++; 
        if (itn_count > 10000000)  {
            cout << "HLS Execution Error :: ICAP Status register indicates not ready!\n";
            break;
        }
    }
    cout << "Final ICAP Status check : Val = " << itn_count << endl;

    ret_data = (fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_ICAP_PR_STATUS) & 0x00000007); 
    cout << "PR ICAP Status register : Val = " << ret_data  << endl;
    if (ret_data != 0x3) {
        cout << "PR Programming Error ** Cold Power Cycle System ** !!!\n";
    }

   delete [] bitStream_buffer;
}


void fpga_PROGRAM_PR_CLOCK (fpga_dev_mem *fpga_AXI_Lite_ptr, float PR_Frequency) {
    float MMCM_OUTPUT_DIV;
    float MMCM_OUTPUT_DIV_INT;
    float  MMCM_OUTPUT_DIV_FRAC;
    unsigned short  MMCM_OUTPUT_DIV_INT_REG;
    unsigned short  MMCM_OUTPUT_DIV_FRAC_REG;
    uint32_t MMCM_OUTPUT_DIV_REG;
    MMCM_OUTPUT_DIV = (float)(1550000000.0/PR_Frequency);
    MMCM_OUTPUT_DIV_FRAC = modf(MMCM_OUTPUT_DIV, &MMCM_OUTPUT_DIV_INT); 

    MMCM_OUTPUT_DIV_INT_REG = (unsigned short)MMCM_OUTPUT_DIV_INT;
    MMCM_OUTPUT_DIV_FRAC_REG = (unsigned short)(MMCM_OUTPUT_DIV_FRAC*1000.0f);
    MMCM_OUTPUT_DIV_REG = (uint32_t)((MMCM_OUTPUT_DIV_FRAC_REG << 8) | (MMCM_OUTPUT_DIV_INT_REG));
    cout << "Setting PR Module Clock Frequency to = " << PR_Frequency << endl;
    cout << "MMCM CLOCK_OUT_0 Output Divider = " << MMCM_OUTPUT_DIV << endl;
    cout << "MMCM CLOCK_OUT_0 Output Divider Integer = " << MMCM_OUTPUT_DIV_INT_REG << endl;
    cout << "MMCM CLOCK_OUT_0 Output Divider = " << MMCM_OUTPUT_DIV_FRAC_REG << endl;
    cout << "MMCM CLOCK_OUT_0 Output Register = " << hex << MMCM_OUTPUT_DIV_REG << endl;
    cout << dec;

    fpga_AXI_Lite_ptr->fpga_poke(PROG_CLOCK_DIVIDE_REGISTER, MMCM_OUTPUT_DIV_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(PROG_CLOCK_CONTROL_REGISTER, 0x00000003); 
}

void assert_CL_rst_all_n (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    unsigned short  RESET_REG;
    RESET_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_MAIN_RST_N_STATUS); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG & 0xF0)); 
}

void deassert_CL_rst_all_n (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    unsigned short  RESET_REG;
    RESET_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_MAIN_RST_N_STATUS); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG | 0x0F)); 
}


void assert_CL_rst_n (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t DDR_INTERFACE) {
    unsigned short  RESET_REG;
    RESET_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_MAIN_RST_N_STATUS); 
    switch (DDR_INTERFACE) {
        case 0 :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG & 0xFE)); 
            break;
        case 1 :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG & 0xFD)); 
            break;
        case 2 :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG & 0xFB)); 
            break;
        case 3 :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG & 0xF7)); 
            break;
        deafult :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG & 0xFB)); 
            break;

    }

}


void deassert_CL_rst_n (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t DDR_INTERFACE) {
    unsigned short  RESET_REG;
    RESET_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_MAIN_RST_N_STATUS); 
    switch (DDR_INTERFACE) {
        case 0 :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG | 0x01)); 
            break;
        case 1 :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG | 0x02)); 
            break;
        case 2 :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG | 0x04)); 
            break;
        case 3 :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG | 0x08)); 
            break;
        deafult :
            fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG | 0x04)); 
            break;

    }
}

void assert_CL_rst_main_n (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    unsigned short  RESET_REG;
    RESET_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_MAIN_RST_N_STATUS); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG & 0xEF)); 
}

void deassert_CL_rst_main_n (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    unsigned short  RESET_REG;
    RESET_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_MAIN_RST_N_STATUS); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG | 0x10)); 
}

void set_ddr4_RESET_GATE (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    unsigned short  RESET_REG;
    RESET_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_MAIN_RST_N_STATUS); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG | 0x20)); 
}

void unset_ddr4_RESET_GATE (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    unsigned short  RESET_REG;
    RESET_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_MAIN_RST_N_STATUS); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_MAIN_RST_N, (RESET_REG & 0xDF)); 
}


void SR_CL_ddr_sref_request (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE) {
    volatile unsigned short  CTRL_REG;
    volatile unsigned short  STATE_REG;
    volatile uint64_t itn_count = 0;
    // Toggles Sref 
    CTRL_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, (CTRL_REG | 0x1)); 
    STATE_REG = 0; 
    while (STATE_REG != 0x80) {
        itn_count++; 
        STATE_REG = ((fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_STATE)) & 0x80); 
        if (itn_count > 100)  {
            STATE_REG = ((fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_STATE)) & 0x80); 
            cout << "SREF Error :: Could not enter Selefrefresh state! STATE_REG = " << STATE_REG << endl;;
            break;
        }
    }
    cout << " Self Refresh Request Iteration count = " << itn_count << endl;
    CTRL_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, (CTRL_REG & 0xE)); 
}

void SR_CL_ddr_mem_init_skip_assert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE) {
    volatile unsigned short  CTRL_REG;
    CTRL_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, (CTRL_REG | 0x08)); 
}

void SR_CL_ddr_mem_init_skip_deassert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE) {
    volatile unsigned short  CTRL_REG;
    CTRL_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, (CTRL_REG & 0xF7)); 
}

void SR_CL_ddr_app_restore_en_assert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE) {
    volatile unsigned short  CTRL_REG;
    CTRL_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, (CTRL_REG | 0x02)); 
}

void SR_CL_ddr_app_restore_en_deassert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE) {
    volatile unsigned short  CTRL_REG;
    CTRL_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, (CTRL_REG & 0xFD)); 
}

void SR_CL_ddr_app_restore_complete_assert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE) {
    volatile unsigned short  CTRL_REG;
    CTRL_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, (CTRL_REG | 0x04));
}

void SR_CL_ddr_app_restore_complete_deassert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE) {
    volatile unsigned short  CTRL_REG;
    CTRL_REG = fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_SREF_REG); 
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, (CTRL_REG & 0xFB));
}

void SR_CL_ddr_deassert_all (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE) {
    volatile unsigned short  CTRL_REG;
    fpga_AXI_Lite_ptr->fpga_poke(AXI_LITE_SREF_REG, 0x00);
}

void SR_CL_ddr_XSDB_read (fpga_dev_mem *fpga_AXI_Lite_ptr, string mig_xsdb_file, uint32_t DDR_INTERFACE) {
  uint32_t XSDB_RAM_ADDR;
  ofstream  mig2_xsdb;

  mig2_xsdb.open(mig_xsdb_file);

    switch (DDR_INTERFACE) {
        case 0 :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_0_XSDB_RAM ;
            break;
        case 1 :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_1_XSDB_RAM ;
            break;
        case 2 :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_2_XSDB_RAM ;
            break;
        case 3 :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_3_XSDB_RAM ;
            break;
        deafult :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_2_XSDB_RAM ;
            break;

    }

    for (uint32_t i = 0; i < 4096; i++) {
      mig2_xsdb << hex << (fpga_AXI_Lite_ptr->fpga_peek(XSDB_RAM_ADDR + (i*4))) << "\n";
         
    }
    mig2_xsdb.close();
}

void SR_CL_ddr_XSDB_write (fpga_dev_mem *fpga_AXI_Lite_ptr, string mig_xsdb_gloden, uint32_t DDR_INTERFACE) {
  ifstream  mig2_xsdb;
  uint32_t xsdb_data;
  uint32_t XSDB_RAM_ADDR;

  mig2_xsdb.open(mig_xsdb_gloden);
    switch (DDR_INTERFACE) {
        case 0 :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_0_XSDB_RAM ;
            break;
        case 1 :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_1_XSDB_RAM ;
            break;
        case 2 :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_2_XSDB_RAM ;
            break;
        case 3 :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_3_XSDB_RAM ;
            break;
        deafult :
            XSDB_RAM_ADDR = AXI_LITE_DDR4_2_XSDB_RAM ;
            break;

    }

    for (uint32_t i = 0; i < 4096; i++) {
      mig2_xsdb >> hex  >> xsdb_data;
      fpga_AXI_Lite_ptr->fpga_poke(XSDB_RAM_ADDR + (i*4), xsdb_data);
    }
    mig2_xsdb.close();
}


uint64_t wait_ddr_CAL_DONE (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t DDR_INTERFACE) {
    volatile  unsigned short  RESET_REG;
    uint64_t itn_count = 0;
    uint32_t ddr_mask;
    switch (DDR_INTERFACE) {
        case 0 :
            ddr_mask = 0x8 ;
            break;
        case 1 :
            ddr_mask = 0x4 ;
            break;
        case 2 :
            ddr_mask = 0x2 ;
            break;
        case 3 :
            ddr_mask = 0x1 ;
            break;
        deafult :
            ddr_mask = 0xF ;
            break;

    }
    RESET_REG = (fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT) & ddr_mask);
    usleep(10);
    itn_count = 0;
    while (RESET_REG != ddr_mask) {
        itn_count++; 
        RESET_REG = (fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT) & ddr_mask);
        usleep(1);
        if (itn_count > 50000)  {
            RESET_REG = (fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT) & ddr_mask);
            cout << "SREF Error :: DDR Interface  mask  " <<  hex << ddr_mask << " did not complete calibration" <<  " Statux = " << fpga_AXI_Lite_ptr->fpga_peek(AXI_LITE_ROLE_GPIO_MIG_CAL_STAT) << endl;;
            break;
        }
    }
    return (itn_count);
}

uint32_t fpga_ICAP_DELAY_TIMER_SET_INITIALIZE (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t ICAP_DELAY_TIMER_VAL) {
    volatile uint32_t TCR0;
    cout << "Initilizing Delay Timer \n";
    //__SRAI 0x01e6 correspongs to the TImer COntrol register as described in Xilinx Doc PG079 (TCSR0 - Timer Control/Status Register)
    //__SRAI Refer to PG 079 (AXI Timer PIP Product guide for bit definations)
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_DLY_TIMER_COUNT0_LOAD_REG, ICAP_DELAY_TIMER_VAL);
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_DLY_TIMER_CONTROL0_STATUS_REG, 0x000001e6);
    TCR0 = fpga_AXI_Lite_ptr->fpga_peek(ICAP_DLY_TIMER_COUNT0_COUNTER_REG);
    cout << "Timer Value set to :  " << (double)((double)TCR0/50000000.0) << " seconds \n";
    return TCR0; 
}
void fpga_ICAP_DELAY_TIMER_RUN (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    cout << "Running ICAP_DELAY_TIMER .......... \n";
    //__SRAI 0x00c6 correspongs to the TImer COntrol register as described in Xilinx Doc PG079 (TCSR0 - Timer Control/Status Register)
    //__SRAI Refer to PG 079 (AXI Timer PIP Product guide for bit definations)
    fpga_AXI_Lite_ptr->fpga_poke(ICAP_DLY_TIMER_CONTROL0_STATUS_REG, 0x000000c6);
}

uint32_t fpga_ICAP_DELAY_TIMER_READ_CURRENT_VALUE (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    volatile uint32_t TCR0;
    TCR0 = fpga_AXI_Lite_ptr->fpga_peek(ICAP_DLY_TIMER_COUNT0_COUNTER_REG);
    return TCR0; 
}

uint32_t fpga_ICAP_DELAY_TIMER_READ_ICAP_ENABLE (fpga_dev_mem *fpga_AXI_Lite_ptr) {
    volatile uint32_t TCSR0;
    TCSR0 = uint32_t((fpga_AXI_Lite_ptr->fpga_peek(ICAP_DLY_TIMER_CONTROL0_STATUS_REG) & 0x00000100) >> 8);
    return TCSR0; 

}

void SRAI_dbg_wait (string dbg_string) {
    string Srai_dbg_wait;
    cout << "Dbg Pause : " << dbg_string << " : Enter any character (followed by Enter key) to proceed : ";
    cin >> Srai_dbg_wait;
}

