/* Sanjay Rai - Routine to access PCIe via  dev.mem mmap  */
#ifndef SRAI_ACCEL_UTILS_H_
#define SRAI_ACCEL_UTILS_H_

/* Address Ranges as defined in VIvado IPI Address map */
/* NOTE: Be aware on any PCIe-AXI Address translation setup on the xDMA/PCIEBridge*/ 
/*       These address translations affect the address shown . THese address are  */
/*       exactly waht is populated on the IPI Address tab                         */
/* AXI MM Register interfaces */
#define AXI_MM_DDR4_C0         0x8000000400000000ULL
#define AXI_MM_DDR4_results_C0 0x8000000480000000ULL
#define AXI_MM_DDR4_C1         0x8000000000000000ULL
#define AXI_MM_DDR4_results_C1 0x8000000080000000ULL
#define AXI_MM_DDR4_C2         0x8000000800000000ULL
#define AXI_MM_DDR4_results_C2 0x8000000880000000ULL
#define AXI_MM_DDR4_C3         0x8000000C00000000ULL
#define AXI_MM_DDR4_results_C3 0x8000000C80000000ULL


/* AXI LITE Register interfaces */
#define AXI_LITE_SHELL_DDR4_BASE         0x00000000UL
#define AXI_LITE_GPIO_PR_ISOLATION       0x00010000UL
#define AXI_LITE_devDNA_A                0x00011000UL
#define AXI_LITE_devDNA_B                0x00011008UL
#define AXI_LITE_devDNA_C                0x00012000UL
#define AXI_LITE_devDNA_D                0x00012008UL
#define AXI_LITE_ICAP_DELAY_TIMER_BASE   0x00013000UL
#define AXI_LITE_ICAP_PR_STATUS          0x00014000UL
#define AXI_LITE_DDR4_3_SREF_REG         0x00015000UL
#define AXI_LITE_DDR4_3_SREF_STATE       0x00015008UL
#define AXI_LITE_DDR4_0_SREF_REG         0x00016000UL
#define AXI_LITE_DDR4_0_SREF_STATE       0x00016008UL
#define AXI_LITE_DDR4_2_SREF_REG         0x00017000UL
#define AXI_LITE_DDR4_2_SREF_STATE       0x00017008UL
#define AXI_LITE_DDR4_1_SREF_REG         0x000E1000UL
#define AXI_LITE_DDR4_1_SREF_STATE       0x000E1008UL
#define AXI_LITE_ICAP_CRC_BASE           0x00018000UL
#define AXI_LITE_PROG_CLOCK_BASE         0x00020000UL
#define AXI_LITE_ICAP_BASE               0x00030000UL
#define AXI_LITE_AXI_SYSMON_BASE         0x00040000UL
#define AXI_LITE_xDMA_BRIDGE_BASE        0x00050000UL
#define AXI_LITE_DDR_CTRL                0x00060000UL
#define AXI_LITE_SCRATCH_PAD_BRAM        0x00070000UL
#define AXI_LITE_AXI_IIC_CTRLR           0x00080000UL
#define AXI_LITE_AXI_FLASH_CTRLR         0x00090000UL
//#define AXI_LITE_AXI_FIREWALL_AXIL       0x000A0000UL
//#define AXI_LITE_AXI_FIREWALL_AXI_M      0x000B0000UL
#define AXI_LITE_MAIN_RST_N              0x000C0000UL
#define AXI_LITE_MAIN_RST_N_STATUS       0x000C0008UL
#define AXI_LITE_EFUSE_SHELL_VER         0x000D0000UL
#define AXI_LITE_PR_CDMA_BASE            0x00100000UL
#define AXI_LITE_ROLE_GPIO_OUT           0x00102000UL
#define AXI_LITE_ROLE_GPIO_IN_A0         0x00101000UL
#define AXI_LITE_ROLE_GPIO_IN_A1         0x00101008UL
#define AXI_LITE_ROLE_GPIO_IN_B0         0x00103000UL
#define AXI_LITE_ROLE_GPIO_MIG_CAL_STAT  0x00103008UL
#define AXI_LITE_SCRATCH_PAD_BRAM_ROLE   0x00180000UL
#define AXI_LITE_DDR4_0_XSDB_RAM         0x00130000UL
#define AXI_LITE_DDR4_1_XSDB_RAM         0x000E0000UL
#define AXI_LITE_DDR4_2_XSDB_RAM         0x00150000UL
#define AXI_LITE_DDR4_3_XSDB_RAM         0x00170000UL
#define AXI_LITE_CMS_SUBSYS_BASE         0x00200000UL

/* Address Offset of various Peripheral Registers */ 
#define ICAP_CNTRL_REG              AXI_LITE_ICAP_BASE + 0x10CUL
#define ICAP_STATUS_REG             AXI_LITE_ICAP_BASE + 0x110UL
#define ICAP_WR_FIFO_REG            AXI_LITE_ICAP_BASE + 0x100UL
#define ICAP_WR_FIFO_VACANCY_REG    AXI_LITE_ICAP_BASE + 0x114UL
#define PROG_CLOCK_STATUS_REGISTER        AXI_LITE_PROG_CLOCK_BASE + 0x004UL
#define PROG_CLOCK_DIVIDE_REGISTER        AXI_LITE_PROG_CLOCK_BASE + 0x208UL
#define PROG_CLOCK_CONTROL_REGISTER       AXI_LITE_PROG_CLOCK_BASE + 0x25CUL
#define SYSMON_Temptature_register        AXI_LITE_AXI_SYSMON_BASE + 0x400UL 
#define SYSMON_MAX_Temptature_register    AXI_LITE_AXI_SYSMON_BASE + 0x1c80L 
#define SYSMON_MIN_Temptature_register    AXI_LITE_AXI_SYSMON_BASE + 0x1c90L 

#define CDMA_CTRL_REG            AXI_LITE_PR_CDMA_BASE + 0x00UL
#define CDMA_STATUS_REG          AXI_LITE_PR_CDMA_BASE + 0x04UL
#define CDMA_SOURCE_ADDR_LSB_REG AXI_LITE_PR_CDMA_BASE + 0x18UL
#define CDMA_SOURCE_ADDR_MSB_REG AXI_LITE_PR_CDMA_BASE + 0x1CUL
#define CDMA_DEST_ADDR_LSB_REG   AXI_LITE_PR_CDMA_BASE + 0x20UL
#define CDMA_DEST_ADDR_MSB_REG   AXI_LITE_PR_CDMA_BASE + 0x24UL
#define CDMA_BTT_REG             AXI_LITE_PR_CDMA_BASE + 0x28UL

#define xDMA_BRIDGE_VESEC_REGISTER_0  AXI_LITE_xDMA_BRIDGE_BASE + 0x200UL
#define xDMA_BRIDGE_VESEC_REGISTER_1  AXI_LITE_xDMA_BRIDGE_BASE + 0x204UL
#define xDMA_BRIDGE_AXIBAR2PCIEBAR_0U AXI_LITE_xDMA_BRIDGE_BASE + 0x208UL
#define xDMA_BRIDGE_AXIBAR2PCIEBAR_0L AXI_LITE_xDMA_BRIDGE_BASE + 0x20CUL
#define xDMA_BRIDGE_AXIBAR2PCIEBAR_1U AXI_LITE_xDMA_BRIDGE_BASE + 0x210UL
#define xDMA_BRIDGE_AXIBAR2PCIEBAR_1L AXI_LITE_xDMA_BRIDGE_BASE + 0x214UL

#define ICAP_DLY_TIMER_CONTROL0_STATUS_REG  AXI_LITE_ICAP_DELAY_TIMER_BASE + 0x00UL
#define ICAP_DLY_TIMER_COUNT0_LOAD_REG      AXI_LITE_ICAP_DELAY_TIMER_BASE + 0x04UL
#define ICAP_DLY_TIMER_COUNT0_COUNTER_REG   AXI_LITE_ICAP_DELAY_TIMER_BASE + 0x08UL
#define ICAP_DLY_TIMER_CONTROL1_STATUS_REG  AXI_LITE_ICAP_DELAY_TIMER_BASE + 0x10UL
#define ICAP_DLY_TIMER_COUNT1_LOAD_REG      AXI_LITE_ICAP_DELAY_TIMER_BASE + 0x14UL
#define ICAP_DLY_TIMER_COUNT1_COUNTER_REG   AXI_LITE_ICAP_DELAY_TIMER_BASE + 0x18UL


#define ISOLATE_NORTH_PR     0x00000000UL
#define DEISOLATE_NORTH_PR   0xFFFFFFFFUL

typedef struct {
    uint32_t devDNA_A;
    uint32_t devDNA_B;
    uint32_t devDNA_C;
} deviceDNA_struct;

typedef struct {
    double current_temp;
    double maximum_temp;
    double minimum_temp;
} SysMon_temp_struct;

typedef struct {
    uint32_t KERNEL_DATASET;
    uint32_t KERNEL_CLOCK_COUNT;
    double KERNEL_EXECUTION_TIME;
} kernel_execution_metric_struct;

int fpga_clean (fpga_dev_mem *my_fpga_ptr);
void fpga_PROGRAM_NORTH_PR (fpga_dev_mem *fpga_AXI_Lite_ptr, string PR_binFile_name);
void fpga_CLEAR_NORTH_PR (fpga_dev_mem *fpga_AXI_Lite_ptr, string PR_binFile_name);
void fpga_run_NORTH_PR64(fpga_dev_mem *fpga_AXI_Lite_ptr, uint64_t AXI_ADDRESS_in0, uint64_t AXI_ADDRESS_RESULTS, uint32_t NUM_OF_DATA_SETS);
int  fpga_check_compute_done_NORTH_PR (fpga_dev_mem *fpga_AXI_Lite_ptr);
void fpga_test_AXIL_LITE_8KSCRATCHPAD_BRAM (fpga_dev_mem *fpga_AXI_Lite_ptr);
void fpga_test_AXIL_LITE_4KSCRATCHPAD_BRAM_ROLE (fpga_dev_mem *fpga_AXI_Lite_ptr);
void fpga_test_64K_DDR4_SHELL (fpga_dev_mem *fpga_AXI_Lite_ptr);
void ICAP_prog_PR_binfile (fpga_dev_mem *fpga_AXI_Lite_ptr, string PR_binFile_name);
void ICAP_prog_IPROG (fpga_dev_mem *fpga_AXI_Lite_ptr);
void ICAP_prog_NOOP (fpga_dev_mem *fpga_AXI_Lite_ptr);
void fpga_PROGRAM_PR_CLOCK (fpga_dev_mem *fpga_AXI_Lite_ptr, float PR_Frequency);
void fpga_read_temprature (fpga_dev_mem *fpga_AXI_Lite_ptr, SysMon_temp_struct *sys_temp, int average_num);
void fpga_device_DNA (fpga_dev_mem *fpga_AXI_Lite_ptr, deviceDNA_struct *devDNA);
void fpga_device_DNA_ROLE (fpga_dev_mem *fpga_AXI_Lite_ptr, deviceDNA_struct *devDNA);
void fpga_get_Kernel_execution_time (fpga_dev_mem *fpga_AXI_Lite_ptr, double kernel_operating_frequency, kernel_execution_metric_struct *kernel_execution_metric);
void fpga_run_kernel(fpga_dev_mem *fpga_AXI_Lite_ptr);
void fpga_set_kernel_arguments_32(fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t Addr_offset, uint32_t data);
void fpga_set_kernel_arguments_64(fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t Addr_offset, uint64_t data);
void SRAI_dbg_wait(string dbg_string);
bool fpga_CDMA_XFER (fpga_dev_mem *fpga_AXI_Lite_ptr, uint64_t SRC_ADDR, uint64_t DEST_ADDR, uint32_t XFER_SZ );
void fpga_CDMA_RESET (fpga_dev_mem *fpga_AXI_Lite_ptr);
uint32_t fpga_report_EFUSE_VAL (fpga_dev_mem *fpga_AXI_Lite_ptr);
uint32_t fpga_report_SHELL_VER (fpga_dev_mem *fpga_AXI_Lite_ptr);
void assert_CL_rst_all_n (fpga_dev_mem *fpga_AXI_Lite_ptr);
void deassert_CL_rst_all_n (fpga_dev_mem *fpga_AXI_Lite_ptr);
void assert_CL_rst_main_n (fpga_dev_mem *fpga_AXI_Lite_ptr);
void deassert_CL_rst_main_n (fpga_dev_mem *fpga_AXI_Lite_ptr);
void assert_CL_rst_n (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t DDR_INTERFACE);
void deassert_CL_rst_n (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t DDR_INTERFACE);
void SR_CL_ddr_sref_request (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE);
void SR_CL_ddr_mem_init_skip_assert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE);
void SR_CL_ddr_mem_init_skip_deassert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE);
void SR_CL_ddr_app_restore_en_assert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE);
void SR_CL_ddr_app_restore_en_deassert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE);
void SR_CL_ddr_app_restore_complete_assert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE);
void SR_CL_ddr_app_restore_complete_deassert (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE);
void SR_CL_ddr_deassert_all (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t AXI_LITE_SREF_REG, uint32_t AXI_LITE_SREF_STATE);

void SR_CL_ddr_XSDB_read (fpga_dev_mem *fpga_AXI_Lite_ptr, string mig_xsdb_file, uint32_t DDR_INTERFACE);
void SR_CL_ddr_XSDB_write (fpga_dev_mem *fpga_AXI_Lite_ptr, string mig_xsdb_gloden, uint32_t DDR_INTERFACE);
uint64_t wait_ddr_CAL_DONE (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t DDR_INTERFACE);
void set_ddr4_RESET_GATE (fpga_dev_mem *fpga_AXI_Lite_ptr);
void unset_ddr4_RESET_GATE (fpga_dev_mem *fpga_AXI_Lite_ptr);
uint32_t fpga_ICAP_DELAY_TIMER_SET_INITIALIZE (fpga_dev_mem *fpga_AXI_Lite_ptr, uint32_t ICAP_DELAY_TIMER_VAL);
void fpga_ICAP_DELAY_TIMER_RUN (fpga_dev_mem *fpga_AXI_Lite_ptr);
uint32_t fpga_ICAP_DELAY_TIMER_READ_CURRENT_VALUE (fpga_dev_mem *fpga_AXI_Lite_ptr);
uint32_t fpga_ICAP_DELAY_TIMER_READ_ICAP_ENABLE (fpga_dev_mem *fpga_AXI_Lite_ptr);
#endif // SRAI_ACCEL_UTILS_H_
