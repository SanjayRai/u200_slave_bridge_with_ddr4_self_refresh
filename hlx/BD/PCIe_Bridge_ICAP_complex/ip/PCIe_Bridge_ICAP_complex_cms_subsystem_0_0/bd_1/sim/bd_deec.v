//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_deec.bd
//Design : bd_deec
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_deec,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_deec,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=71,numReposBlks=45,numNonXlnxBlks=0,numHierBlks=26,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_3d9a_shell_cmc_subsystem_0.hwdef" *) 
module bd_deec
   (aclk_ctrl,
    aresetn_ctrl,
    hbm_temp_1,
    hbm_temp_2,
    interrupt_hbm_cattrip,
    interrupt_host,
    mdm_debug_sys_rst,
    mdm_mbdebug_capture,
    mdm_mbdebug_clk,
    mdm_mbdebug_disable,
    mdm_mbdebug_reg_en,
    mdm_mbdebug_rst,
    mdm_mbdebug_shift,
    mdm_mbdebug_tdi,
    mdm_mbdebug_tdo,
    mdm_mbdebug_update,
    qsfp0_int_l,
    qsfp0_lpmode,
    qsfp0_modprs_l,
    qsfp0_modsel_l,
    qsfp0_reset_l,
    qsfp1_int_l,
    qsfp1_lpmode,
    qsfp1_modprs_l,
    qsfp1_modsel_l,
    qsfp1_reset_l,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid,
    satellite_gpio_tri_i,
    satellite_gpio_tri_o,
    satellite_gpio_tri_t,
    satellite_uart_rxd,
    satellite_uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_ctrl;
  input [6:0]hbm_temp_1;
  input [6:0]hbm_temp_2;
  input [0:0]interrupt_hbm_cattrip;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_HOST INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_HOST, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_host;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MDM_DEBUG_SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MDM_DEBUG_SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input mdm_debug_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug CAPTURE" *) input mdm_mbdebug_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug CLK" *) input mdm_mbdebug_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug DISABLE" *) input mdm_mbdebug_disable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug REG_EN" *) input [0:7]mdm_mbdebug_reg_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug RST" *) input mdm_mbdebug_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug SHIFT" *) input mdm_mbdebug_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug TDI" *) input mdm_mbdebug_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug TDO" *) output mdm_mbdebug_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug UPDATE" *) input mdm_mbdebug_update;
  input [0:0]qsfp0_int_l;
  output [0:0]qsfp0_lpmode;
  input [0:0]qsfp0_modprs_l;
  output [0:0]qsfp0_modsel_l;
  output [0:0]qsfp0_reset_l;
  input [0:0]qsfp1_int_l;
  output [0:0]qsfp1_lpmode;
  input [0:0]qsfp1_modprs_l;
  output [0:0]qsfp1_modsel_l;
  output [0:0]qsfp1_reset_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [17:0]s_axi_ctrl_mgmt_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *) input [2:0]s_axi_ctrl_mgmt_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *) output [0:0]s_axi_ctrl_mgmt_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *) input [0:0]s_axi_ctrl_mgmt_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *) input [17:0]s_axi_ctrl_mgmt_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *) input [2:0]s_axi_ctrl_mgmt_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *) output [0:0]s_axi_ctrl_mgmt_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *) input [0:0]s_axi_ctrl_mgmt_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *) input [0:0]s_axi_ctrl_mgmt_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *) output [1:0]s_axi_ctrl_mgmt_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *) output [0:0]s_axi_ctrl_mgmt_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *) output [31:0]s_axi_ctrl_mgmt_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *) input [0:0]s_axi_ctrl_mgmt_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *) output [1:0]s_axi_ctrl_mgmt_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *) output [0:0]s_axi_ctrl_mgmt_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *) input [31:0]s_axi_ctrl_mgmt_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *) output [0:0]s_axi_ctrl_mgmt_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *) input [3:0]s_axi_ctrl_mgmt_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *) input [0:0]s_axi_ctrl_mgmt_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 satellite_gpio TRI_I" *) input [3:0]satellite_gpio_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 satellite_gpio TRI_O" *) output [3:0]satellite_gpio_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 satellite_gpio TRI_T" *) output [3:0]satellite_gpio_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart RxD" *) input satellite_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart TxD" *) output satellite_uart_txd;

  wire aclk_ctrl_net;
  wire aresetn_ctrl_net;
  wire [15:0]axi_bram_ctrl_lmb_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_lmb_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_lmb_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_lmb_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_lmb_BRAM_PORTA_EN;
  wire axi_bram_ctrl_lmb_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_lmb_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_reg_map1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_reg_map1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_reg_map1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_reg_map1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_reg_map1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_reg_map1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_reg_map1_BRAM_PORTA_WE;
  wire [0:0]axi_gpio_mb_reset_gpio_io_o;
  wire [0:0]axi_gpio_mutex_cmc_gpio2_io_o;
  wire [1:0]axi_gpio_mutex_host_gpio_io_o;
  wire [31:0]axi_ic_cmc_local_M00_AXI_ARADDR;
  wire axi_ic_cmc_local_M00_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M00_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M00_AXI_AWADDR;
  wire axi_ic_cmc_local_M00_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M00_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M00_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M00_AXI_BRESP;
  wire axi_ic_cmc_local_M00_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M00_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M00_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M00_AXI_RRESP;
  wire axi_ic_cmc_local_M00_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M00_AXI_WDATA;
  wire axi_ic_cmc_local_M00_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M00_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M00_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M01_AXI_ARADDR;
  wire axi_ic_cmc_local_M01_AXI_ARREADY;
  wire axi_ic_cmc_local_M01_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M01_AXI_AWADDR;
  wire axi_ic_cmc_local_M01_AXI_AWREADY;
  wire axi_ic_cmc_local_M01_AXI_AWVALID;
  wire axi_ic_cmc_local_M01_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M01_AXI_BRESP;
  wire axi_ic_cmc_local_M01_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M01_AXI_RDATA;
  wire axi_ic_cmc_local_M01_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M01_AXI_RRESP;
  wire axi_ic_cmc_local_M01_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M01_AXI_WDATA;
  wire axi_ic_cmc_local_M01_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M01_AXI_WSTRB;
  wire axi_ic_cmc_local_M01_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M02_AXI_ARADDR;
  wire axi_ic_cmc_local_M02_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M02_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M02_AXI_AWADDR;
  wire axi_ic_cmc_local_M02_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M02_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M02_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M02_AXI_BRESP;
  wire axi_ic_cmc_local_M02_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M02_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M02_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M02_AXI_RRESP;
  wire axi_ic_cmc_local_M02_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M02_AXI_WDATA;
  wire axi_ic_cmc_local_M02_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M02_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M02_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M03_AXI_ARADDR;
  wire axi_ic_cmc_local_M03_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M03_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M03_AXI_AWADDR;
  wire axi_ic_cmc_local_M03_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M03_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M03_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M03_AXI_BRESP;
  wire axi_ic_cmc_local_M03_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M03_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M03_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M03_AXI_RRESP;
  wire axi_ic_cmc_local_M03_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M03_AXI_WDATA;
  wire axi_ic_cmc_local_M03_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M03_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M03_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M04_AXI_ARADDR;
  wire axi_ic_cmc_local_M04_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M04_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M04_AXI_AWADDR;
  wire axi_ic_cmc_local_M04_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M04_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M04_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M04_AXI_BRESP;
  wire axi_ic_cmc_local_M04_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M04_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M04_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M04_AXI_RRESP;
  wire axi_ic_cmc_local_M04_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M04_AXI_WDATA;
  wire axi_ic_cmc_local_M04_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M04_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M04_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M05_AXI_ARADDR;
  wire axi_ic_cmc_local_M05_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M05_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M05_AXI_AWADDR;
  wire axi_ic_cmc_local_M05_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M05_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M05_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M05_AXI_BRESP;
  wire axi_ic_cmc_local_M05_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M05_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M05_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M05_AXI_RRESP;
  wire axi_ic_cmc_local_M05_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M05_AXI_WDATA;
  wire axi_ic_cmc_local_M05_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M05_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M05_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M06_AXI_ARADDR;
  wire axi_ic_cmc_local_M06_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M06_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M06_AXI_AWADDR;
  wire axi_ic_cmc_local_M06_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M06_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M06_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M06_AXI_BRESP;
  wire axi_ic_cmc_local_M06_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M06_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M06_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M06_AXI_RRESP;
  wire axi_ic_cmc_local_M06_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M06_AXI_WDATA;
  wire axi_ic_cmc_local_M06_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M06_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M06_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M07_AXI_ARADDR;
  wire axi_ic_cmc_local_M07_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M07_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M07_AXI_AWADDR;
  wire axi_ic_cmc_local_M07_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M07_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M07_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M07_AXI_BRESP;
  wire axi_ic_cmc_local_M07_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M07_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M07_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M07_AXI_RRESP;
  wire axi_ic_cmc_local_M07_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M07_AXI_WDATA;
  wire axi_ic_cmc_local_M07_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M07_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M07_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M09_AXI_ARADDR;
  wire axi_ic_cmc_local_M09_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M09_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M09_AXI_AWADDR;
  wire axi_ic_cmc_local_M09_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M09_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M09_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M09_AXI_BRESP;
  wire axi_ic_cmc_local_M09_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M09_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M09_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M09_AXI_RRESP;
  wire axi_ic_cmc_local_M09_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M09_AXI_WDATA;
  wire axi_ic_cmc_local_M09_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M09_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M09_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M10_AXI_ARADDR;
  wire [2:0]axi_ic_cmc_local_M10_AXI_ARPROT;
  wire axi_ic_cmc_local_M10_AXI_ARREADY;
  wire axi_ic_cmc_local_M10_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M10_AXI_AWADDR;
  wire [2:0]axi_ic_cmc_local_M10_AXI_AWPROT;
  wire axi_ic_cmc_local_M10_AXI_AWREADY;
  wire axi_ic_cmc_local_M10_AXI_AWVALID;
  wire axi_ic_cmc_local_M10_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M10_AXI_BRESP;
  wire axi_ic_cmc_local_M10_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M10_AXI_RDATA;
  wire axi_ic_cmc_local_M10_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M10_AXI_RRESP;
  wire axi_ic_cmc_local_M10_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M10_AXI_WDATA;
  wire axi_ic_cmc_local_M10_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M10_AXI_WSTRB;
  wire axi_ic_cmc_local_M10_AXI_WVALID;
  wire [31:0]axi_ic_cmc_local_M11_AXI_ARADDR;
  wire axi_ic_cmc_local_M11_AXI_ARREADY;
  wire [0:0]axi_ic_cmc_local_M11_AXI_ARVALID;
  wire [31:0]axi_ic_cmc_local_M11_AXI_AWADDR;
  wire axi_ic_cmc_local_M11_AXI_AWREADY;
  wire [0:0]axi_ic_cmc_local_M11_AXI_AWVALID;
  wire [0:0]axi_ic_cmc_local_M11_AXI_BREADY;
  wire [1:0]axi_ic_cmc_local_M11_AXI_BRESP;
  wire axi_ic_cmc_local_M11_AXI_BVALID;
  wire [31:0]axi_ic_cmc_local_M11_AXI_RDATA;
  wire [0:0]axi_ic_cmc_local_M11_AXI_RREADY;
  wire [1:0]axi_ic_cmc_local_M11_AXI_RRESP;
  wire axi_ic_cmc_local_M11_AXI_RVALID;
  wire [31:0]axi_ic_cmc_local_M11_AXI_WDATA;
  wire axi_ic_cmc_local_M11_AXI_WREADY;
  wire [3:0]axi_ic_cmc_local_M11_AXI_WSTRB;
  wire [0:0]axi_ic_cmc_local_M11_AXI_WVALID;
  wire [17:0]axi_ic_mgmt_M00_AXI_ARADDR;
  wire [2:0]axi_ic_mgmt_M00_AXI_ARPROT;
  wire axi_ic_mgmt_M00_AXI_ARREADY;
  wire axi_ic_mgmt_M00_AXI_ARVALID;
  wire [17:0]axi_ic_mgmt_M00_AXI_AWADDR;
  wire [2:0]axi_ic_mgmt_M00_AXI_AWPROT;
  wire axi_ic_mgmt_M00_AXI_AWREADY;
  wire axi_ic_mgmt_M00_AXI_AWVALID;
  wire axi_ic_mgmt_M00_AXI_BREADY;
  wire [1:0]axi_ic_mgmt_M00_AXI_BRESP;
  wire axi_ic_mgmt_M00_AXI_BVALID;
  wire [31:0]axi_ic_mgmt_M00_AXI_RDATA;
  wire axi_ic_mgmt_M00_AXI_RREADY;
  wire [1:0]axi_ic_mgmt_M00_AXI_RRESP;
  wire axi_ic_mgmt_M00_AXI_RVALID;
  wire [31:0]axi_ic_mgmt_M00_AXI_WDATA;
  wire axi_ic_mgmt_M00_AXI_WREADY;
  wire [3:0]axi_ic_mgmt_M00_AXI_WSTRB;
  wire axi_ic_mgmt_M00_AXI_WVALID;
  wire [17:0]axi_ic_mgmt_M01_AXI_ARADDR;
  wire axi_ic_mgmt_M01_AXI_ARREADY;
  wire [0:0]axi_ic_mgmt_M01_AXI_ARVALID;
  wire [17:0]axi_ic_mgmt_M01_AXI_AWADDR;
  wire axi_ic_mgmt_M01_AXI_AWREADY;
  wire [0:0]axi_ic_mgmt_M01_AXI_AWVALID;
  wire [0:0]axi_ic_mgmt_M01_AXI_BREADY;
  wire [1:0]axi_ic_mgmt_M01_AXI_BRESP;
  wire axi_ic_mgmt_M01_AXI_BVALID;
  wire [31:0]axi_ic_mgmt_M01_AXI_RDATA;
  wire [0:0]axi_ic_mgmt_M01_AXI_RREADY;
  wire [1:0]axi_ic_mgmt_M01_AXI_RRESP;
  wire axi_ic_mgmt_M01_AXI_RVALID;
  wire [31:0]axi_ic_mgmt_M01_AXI_WDATA;
  wire axi_ic_mgmt_M01_AXI_WREADY;
  wire [3:0]axi_ic_mgmt_M01_AXI_WSTRB;
  wire [0:0]axi_ic_mgmt_M01_AXI_WVALID;
  wire [17:0]axi_ic_mgmt_M02_AXI_ARADDR;
  wire axi_ic_mgmt_M02_AXI_ARREADY;
  wire [0:0]axi_ic_mgmt_M02_AXI_ARVALID;
  wire [17:0]axi_ic_mgmt_M02_AXI_AWADDR;
  wire axi_ic_mgmt_M02_AXI_AWREADY;
  wire [0:0]axi_ic_mgmt_M02_AXI_AWVALID;
  wire [0:0]axi_ic_mgmt_M02_AXI_BREADY;
  wire [1:0]axi_ic_mgmt_M02_AXI_BRESP;
  wire axi_ic_mgmt_M02_AXI_BVALID;
  wire [31:0]axi_ic_mgmt_M02_AXI_RDATA;
  wire [0:0]axi_ic_mgmt_M02_AXI_RREADY;
  wire [1:0]axi_ic_mgmt_M02_AXI_RRESP;
  wire axi_ic_mgmt_M02_AXI_RVALID;
  wire [31:0]axi_ic_mgmt_M02_AXI_WDATA;
  wire axi_ic_mgmt_M02_AXI_WREADY;
  wire [3:0]axi_ic_mgmt_M02_AXI_WSTRB;
  wire [0:0]axi_ic_mgmt_M02_AXI_WVALID;
  wire [17:0]axi_ic_mgmt_M03_AXI_ARADDR;
  wire axi_ic_mgmt_M03_AXI_ARREADY;
  wire [0:0]axi_ic_mgmt_M03_AXI_ARVALID;
  wire [17:0]axi_ic_mgmt_M03_AXI_AWADDR;
  wire axi_ic_mgmt_M03_AXI_AWREADY;
  wire [0:0]axi_ic_mgmt_M03_AXI_AWVALID;
  wire [0:0]axi_ic_mgmt_M03_AXI_BREADY;
  wire [1:0]axi_ic_mgmt_M03_AXI_BRESP;
  wire axi_ic_mgmt_M03_AXI_BVALID;
  wire [31:0]axi_ic_mgmt_M03_AXI_RDATA;
  wire [0:0]axi_ic_mgmt_M03_AXI_RREADY;
  wire [1:0]axi_ic_mgmt_M03_AXI_RRESP;
  wire axi_ic_mgmt_M03_AXI_RVALID;
  wire [31:0]axi_ic_mgmt_M03_AXI_WDATA;
  wire axi_ic_mgmt_M03_AXI_WREADY;
  wire [3:0]axi_ic_mgmt_M03_AXI_WSTRB;
  wire [0:0]axi_ic_mgmt_M03_AXI_WVALID;
  wire [17:0]axi_ic_mgmt_M04_AXI_ARADDR;
  wire [2:0]axi_ic_mgmt_M04_AXI_ARPROT;
  wire axi_ic_mgmt_M04_AXI_ARREADY;
  wire axi_ic_mgmt_M04_AXI_ARVALID;
  wire [17:0]axi_ic_mgmt_M04_AXI_AWADDR;
  wire [2:0]axi_ic_mgmt_M04_AXI_AWPROT;
  wire axi_ic_mgmt_M04_AXI_AWREADY;
  wire axi_ic_mgmt_M04_AXI_AWVALID;
  wire axi_ic_mgmt_M04_AXI_BREADY;
  wire [1:0]axi_ic_mgmt_M04_AXI_BRESP;
  wire axi_ic_mgmt_M04_AXI_BVALID;
  wire [31:0]axi_ic_mgmt_M04_AXI_RDATA;
  wire axi_ic_mgmt_M04_AXI_RREADY;
  wire [1:0]axi_ic_mgmt_M04_AXI_RRESP;
  wire axi_ic_mgmt_M04_AXI_RVALID;
  wire [31:0]axi_ic_mgmt_M04_AXI_WDATA;
  wire axi_ic_mgmt_M04_AXI_WREADY;
  wire [3:0]axi_ic_mgmt_M04_AXI_WSTRB;
  wire axi_ic_mgmt_M04_AXI_WVALID;
  wire [0:1]axi_intc_interrupt_ACK;
  wire [31:0]axi_intc_interrupt_ADDRESS;
  wire axi_intc_interrupt_INTERRUPT;
  wire axi_timebase_wdt_wdt_interrupt;
  wire axi_uartlite_satellite_interrupt;
  wire [31:0]c_counter_binary_0_Q;
  wire cmc_mb_rst;
  wire [14:0]concat_hbm_temp_net;
  wire [31:0]concat_host_interrupts_dout;
  wire [16:0]concat_intr_cmc_dout;
  wire [0:0]gnd_bus_1_interrupt_dout;
  wire [0:0]gnd_hbm_net;
  wire [6:0]hbm_temp_1_net;
  wire [6:0]hbm_temp_2_net;
  wire [30:0]interrupt_gpio_net;
  wire [0:0]interrupt_hbm_cattrip_1;
  wire interrupt_host;
  wire interrupt_wdt_cmc_net;
  wire intr_gpio_qsfp;
  wire intr_gpio_sat;
  wire mdm_debug_sys_rst;
  wire mdm_mbdebug_1_CAPTURE;
  wire mdm_mbdebug_1_CLK;
  wire mdm_mbdebug_1_DISABLE;
  wire [0:7]mdm_mbdebug_1_REG_EN;
  wire mdm_mbdebug_1_RST;
  wire mdm_mbdebug_1_SHIFT;
  wire mdm_mbdebug_1_TDI;
  wire mdm_mbdebug_1_TDO;
  wire mdm_mbdebug_1_UPDATE;
  wire [31:0]microblaze_axi_vip_M_AXI_ARADDR;
  wire [2:0]microblaze_axi_vip_M_AXI_ARPROT;
  wire microblaze_axi_vip_M_AXI_ARREADY;
  wire microblaze_axi_vip_M_AXI_ARVALID;
  wire [31:0]microblaze_axi_vip_M_AXI_AWADDR;
  wire [2:0]microblaze_axi_vip_M_AXI_AWPROT;
  wire microblaze_axi_vip_M_AXI_AWREADY;
  wire microblaze_axi_vip_M_AXI_AWVALID;
  wire microblaze_axi_vip_M_AXI_BREADY;
  wire [1:0]microblaze_axi_vip_M_AXI_BRESP;
  wire microblaze_axi_vip_M_AXI_BVALID;
  wire [31:0]microblaze_axi_vip_M_AXI_RDATA;
  wire microblaze_axi_vip_M_AXI_RREADY;
  wire [1:0]microblaze_axi_vip_M_AXI_RRESP;
  wire microblaze_axi_vip_M_AXI_RVALID;
  wire [31:0]microblaze_axi_vip_M_AXI_WDATA;
  wire microblaze_axi_vip_M_AXI_WREADY;
  wire [3:0]microblaze_axi_vip_M_AXI_WSTRB;
  wire microblaze_axi_vip_M_AXI_WVALID;
  wire [0:31]microblaze_cmc_DLMB_ABUS;
  wire microblaze_cmc_DLMB_ADDRSTROBE;
  wire [0:3]microblaze_cmc_DLMB_BE;
  wire microblaze_cmc_DLMB_CE;
  wire [0:31]microblaze_cmc_DLMB_READDBUS;
  wire microblaze_cmc_DLMB_READSTROBE;
  wire microblaze_cmc_DLMB_READY;
  wire microblaze_cmc_DLMB_UE;
  wire microblaze_cmc_DLMB_WAIT;
  wire [0:31]microblaze_cmc_DLMB_WRITEDBUS;
  wire microblaze_cmc_DLMB_WRITESTROBE;
  wire [0:31]microblaze_cmc_ILMB_ABUS;
  wire microblaze_cmc_ILMB_ADDRSTROBE;
  wire microblaze_cmc_ILMB_CE;
  wire [0:31]microblaze_cmc_ILMB_READDBUS;
  wire microblaze_cmc_ILMB_READSTROBE;
  wire microblaze_cmc_ILMB_READY;
  wire microblaze_cmc_ILMB_UE;
  wire microblaze_cmc_ILMB_WAIT;
  wire [31:0]microblaze_cmc_M0_AXIS_TDATA;
  wire microblaze_cmc_M0_AXIS_TLAST;
  wire microblaze_cmc_M0_AXIS_TREADY;
  wire microblaze_cmc_M0_AXIS_TVALID;
  wire [31:0]microblaze_cmc_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_cmc_M_AXI_DP_ARPROT;
  wire microblaze_cmc_M_AXI_DP_ARREADY;
  wire microblaze_cmc_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_cmc_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_cmc_M_AXI_DP_AWPROT;
  wire microblaze_cmc_M_AXI_DP_AWREADY;
  wire microblaze_cmc_M_AXI_DP_AWVALID;
  wire microblaze_cmc_M_AXI_DP_BREADY;
  wire [1:0]microblaze_cmc_M_AXI_DP_BRESP;
  wire microblaze_cmc_M_AXI_DP_BVALID;
  wire [31:0]microblaze_cmc_M_AXI_DP_RDATA;
  wire microblaze_cmc_M_AXI_DP_RREADY;
  wire [1:0]microblaze_cmc_M_AXI_DP_RRESP;
  wire microblaze_cmc_M_AXI_DP_RVALID;
  wire [31:0]microblaze_cmc_M_AXI_DP_WDATA;
  wire microblaze_cmc_M_AXI_DP_WREADY;
  wire [3:0]microblaze_cmc_M_AXI_DP_WSTRB;
  wire microblaze_cmc_M_AXI_DP_WVALID;
  wire [31:0]msp432_bsl_crc_gen_m0_axis_TDATA;
  wire msp432_bsl_crc_gen_m0_axis_TLAST;
  wire msp432_bsl_crc_gen_m0_axis_TREADY;
  wire msp432_bsl_crc_gen_m0_axis_TVALID;
  wire [0:0]psreset_cmc_interconnect_aresetn;
  wire [0:0]psreset_cmc_peripheral_aresetn;
  wire [0:0]qsfp0_int_l;
  wire [0:0]qsfp0_lpmode;
  wire [0:0]qsfp0_modprs_l;
  wire [0:0]qsfp0_modsel_l;
  wire [0:0]qsfp0_reset_l;
  wire [0:0]qsfp1_int_l;
  wire [0:0]qsfp1_lpmode;
  wire [0:0]qsfp1_modprs_l;
  wire [0:0]qsfp1_modsel_l;
  wire [0:0]qsfp1_reset_l;
  wire [12:0]reg_map_bram_ctrl_ADDR;
  wire reg_map_bram_ctrl_CLK;
  wire [31:0]reg_map_bram_ctrl_DIN;
  wire [31:0]reg_map_bram_ctrl_DOUT;
  wire reg_map_bram_ctrl_EN;
  wire reg_map_bram_ctrl_RST;
  wire [3:0]reg_map_bram_ctrl_WE;
  wire [0:0]reset_gen_resetn;
  wire [0:0]rst_1;
  wire [17:0]s_axi_ctrl_mgmt_net_ARADDR;
  wire [2:0]s_axi_ctrl_mgmt_net_ARPROT;
  wire [0:0]s_axi_ctrl_mgmt_net_ARREADY;
  wire [0:0]s_axi_ctrl_mgmt_net_ARVALID;
  wire [17:0]s_axi_ctrl_mgmt_net_AWADDR;
  wire [2:0]s_axi_ctrl_mgmt_net_AWPROT;
  wire [0:0]s_axi_ctrl_mgmt_net_AWREADY;
  wire [0:0]s_axi_ctrl_mgmt_net_AWVALID;
  wire [0:0]s_axi_ctrl_mgmt_net_BREADY;
  wire [1:0]s_axi_ctrl_mgmt_net_BRESP;
  wire [0:0]s_axi_ctrl_mgmt_net_BVALID;
  wire [31:0]s_axi_ctrl_mgmt_net_RDATA;
  wire [0:0]s_axi_ctrl_mgmt_net_RREADY;
  wire [1:0]s_axi_ctrl_mgmt_net_RRESP;
  wire [0:0]s_axi_ctrl_mgmt_net_RVALID;
  wire [31:0]s_axi_ctrl_mgmt_net_WDATA;
  wire [0:0]s_axi_ctrl_mgmt_net_WREADY;
  wire [3:0]s_axi_ctrl_mgmt_net_WSTRB;
  wire [0:0]s_axi_ctrl_mgmt_net_WVALID;
  wire [3:0]satellite_gpio_TRI_I;
  wire [3:0]satellite_gpio_TRI_O;
  wire [3:0]satellite_gpio_TRI_T;
  wire satellite_uart_RxD;
  wire satellite_uart_TxD;
  wire [0:0]wdt_freeze;

  assign aclk_ctrl_net = aclk_ctrl;
  assign aresetn_ctrl_net = aresetn_ctrl;
  assign hbm_temp_1_net = hbm_temp_1[6:0];
  assign hbm_temp_2_net = hbm_temp_2[6:0];
  assign interrupt_hbm_cattrip_1 = interrupt_hbm_cattrip[0];
  assign mdm_mbdebug_1_CAPTURE = mdm_mbdebug_capture;
  assign mdm_mbdebug_1_CLK = mdm_mbdebug_clk;
  assign mdm_mbdebug_1_DISABLE = mdm_mbdebug_disable;
  assign mdm_mbdebug_1_REG_EN = mdm_mbdebug_reg_en[0:7];
  assign mdm_mbdebug_1_RST = mdm_mbdebug_rst;
  assign mdm_mbdebug_1_SHIFT = mdm_mbdebug_shift;
  assign mdm_mbdebug_1_TDI = mdm_mbdebug_tdi;
  assign mdm_mbdebug_1_UPDATE = mdm_mbdebug_update;
  assign mdm_mbdebug_tdo = mdm_mbdebug_1_TDO;
  assign s_axi_ctrl_mgmt_arready[0] = s_axi_ctrl_mgmt_net_ARREADY;
  assign s_axi_ctrl_mgmt_awready[0] = s_axi_ctrl_mgmt_net_AWREADY;
  assign s_axi_ctrl_mgmt_bresp[1:0] = s_axi_ctrl_mgmt_net_BRESP;
  assign s_axi_ctrl_mgmt_bvalid[0] = s_axi_ctrl_mgmt_net_BVALID;
  assign s_axi_ctrl_mgmt_net_ARADDR = s_axi_ctrl_mgmt_araddr[17:0];
  assign s_axi_ctrl_mgmt_net_ARPROT = s_axi_ctrl_mgmt_arprot[2:0];
  assign s_axi_ctrl_mgmt_net_ARVALID = s_axi_ctrl_mgmt_arvalid[0];
  assign s_axi_ctrl_mgmt_net_AWADDR = s_axi_ctrl_mgmt_awaddr[17:0];
  assign s_axi_ctrl_mgmt_net_AWPROT = s_axi_ctrl_mgmt_awprot[2:0];
  assign s_axi_ctrl_mgmt_net_AWVALID = s_axi_ctrl_mgmt_awvalid[0];
  assign s_axi_ctrl_mgmt_net_BREADY = s_axi_ctrl_mgmt_bready[0];
  assign s_axi_ctrl_mgmt_net_RREADY = s_axi_ctrl_mgmt_rready[0];
  assign s_axi_ctrl_mgmt_net_WDATA = s_axi_ctrl_mgmt_wdata[31:0];
  assign s_axi_ctrl_mgmt_net_WSTRB = s_axi_ctrl_mgmt_wstrb[3:0];
  assign s_axi_ctrl_mgmt_net_WVALID = s_axi_ctrl_mgmt_wvalid[0];
  assign s_axi_ctrl_mgmt_rdata[31:0] = s_axi_ctrl_mgmt_net_RDATA;
  assign s_axi_ctrl_mgmt_rresp[1:0] = s_axi_ctrl_mgmt_net_RRESP;
  assign s_axi_ctrl_mgmt_rvalid[0] = s_axi_ctrl_mgmt_net_RVALID;
  assign s_axi_ctrl_mgmt_wready[0] = s_axi_ctrl_mgmt_net_WREADY;
  assign satellite_gpio_TRI_I = satellite_gpio_tri_i[3:0];
  assign satellite_gpio_tri_o[3:0] = satellite_gpio_TRI_O;
  assign satellite_gpio_tri_t[3:0] = satellite_gpio_TRI_T;
  assign satellite_uart_RxD = satellite_uart_rxd;
  assign satellite_uart_txd = satellite_uart_TxD;
  bd_deec_axi_bram_ctrl_firmware_0 axi_bram_ctrl_firmware
       (.bram_addr_a(axi_bram_ctrl_lmb_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_lmb_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_lmb_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_lmb_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_lmb_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_lmb_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_lmb_BRAM_PORTA_DIN),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_mgmt_M00_AXI_ARADDR[15:0]),
        .s_axi_aresetn(aresetn_ctrl_net),
        .s_axi_arprot(axi_ic_mgmt_M00_AXI_ARPROT),
        .s_axi_arready(axi_ic_mgmt_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_mgmt_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_mgmt_M00_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_ic_mgmt_M00_AXI_AWPROT),
        .s_axi_awready(axi_ic_mgmt_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_mgmt_M00_AXI_AWVALID),
        .s_axi_bready(axi_ic_mgmt_M00_AXI_BREADY),
        .s_axi_bresp(axi_ic_mgmt_M00_AXI_BRESP),
        .s_axi_bvalid(axi_ic_mgmt_M00_AXI_BVALID),
        .s_axi_rdata(axi_ic_mgmt_M00_AXI_RDATA),
        .s_axi_rready(axi_ic_mgmt_M00_AXI_RREADY),
        .s_axi_rresp(axi_ic_mgmt_M00_AXI_RRESP),
        .s_axi_rvalid(axi_ic_mgmt_M00_AXI_RVALID),
        .s_axi_wdata(axi_ic_mgmt_M00_AXI_WDATA),
        .s_axi_wready(axi_ic_mgmt_M00_AXI_WREADY),
        .s_axi_wstrb(axi_ic_mgmt_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_mgmt_M00_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x01FA0000 32 > bd_deec reg_map_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  bd_deec_axi_bram_ctrl_regmap_cmc_0 axi_bram_ctrl_regmap_cmc
       (.bram_addr_a(reg_map_bram_ctrl_ADDR),
        .bram_clk_a(reg_map_bram_ctrl_CLK),
        .bram_en_a(reg_map_bram_ctrl_EN),
        .bram_rddata_a(reg_map_bram_ctrl_DOUT),
        .bram_rst_a(reg_map_bram_ctrl_RST),
        .bram_we_a(reg_map_bram_ctrl_WE),
        .bram_wrdata_a(reg_map_bram_ctrl_DIN),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M10_AXI_ARADDR[12:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arprot(axi_ic_cmc_local_M10_AXI_ARPROT),
        .s_axi_arready(axi_ic_cmc_local_M10_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M10_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M10_AXI_AWADDR[12:0]),
        .s_axi_awprot(axi_ic_cmc_local_M10_AXI_AWPROT),
        .s_axi_awready(axi_ic_cmc_local_M10_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M10_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M10_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M10_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M10_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M10_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M10_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M10_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M10_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M10_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M10_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M10_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M10_AXI_WVALID));
  bd_deec_axi_bram_ctrl_regmap_host_0 axi_bram_ctrl_regmap_host
       (.bram_addr_a(axi_bram_ctrl_reg_map1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_reg_map1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_reg_map1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_reg_map1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_reg_map1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_reg_map1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_reg_map1_BRAM_PORTA_DIN),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_mgmt_M04_AXI_ARADDR[12:0]),
        .s_axi_aresetn(aresetn_ctrl_net),
        .s_axi_arprot(axi_ic_mgmt_M04_AXI_ARPROT),
        .s_axi_arready(axi_ic_mgmt_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_mgmt_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_mgmt_M04_AXI_AWADDR[12:0]),
        .s_axi_awprot(axi_ic_mgmt_M04_AXI_AWPROT),
        .s_axi_awready(axi_ic_mgmt_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_mgmt_M04_AXI_AWVALID),
        .s_axi_bready(axi_ic_mgmt_M04_AXI_BREADY),
        .s_axi_bresp(axi_ic_mgmt_M04_AXI_BRESP),
        .s_axi_bvalid(axi_ic_mgmt_M04_AXI_BVALID),
        .s_axi_rdata(axi_ic_mgmt_M04_AXI_RDATA),
        .s_axi_rready(axi_ic_mgmt_M04_AXI_RREADY),
        .s_axi_rresp(axi_ic_mgmt_M04_AXI_RRESP),
        .s_axi_rvalid(axi_ic_mgmt_M04_AXI_RVALID),
        .s_axi_wdata(axi_ic_mgmt_M04_AXI_WDATA),
        .s_axi_wready(axi_ic_mgmt_M04_AXI_WREADY),
        .s_axi_wstrb(axi_ic_mgmt_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_mgmt_M04_AXI_WVALID));
  bd_deec_axi_gpio_cmc_mb_rst_n_0 axi_gpio_cmc_mb_rst_n
       (.gpio_io_o(axi_gpio_mb_reset_gpio_io_o),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_mgmt_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(aresetn_ctrl_net),
        .s_axi_arready(axi_ic_mgmt_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_mgmt_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_mgmt_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_mgmt_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_mgmt_M01_AXI_AWVALID),
        .s_axi_bready(axi_ic_mgmt_M01_AXI_BREADY),
        .s_axi_bresp(axi_ic_mgmt_M01_AXI_BRESP),
        .s_axi_bvalid(axi_ic_mgmt_M01_AXI_BVALID),
        .s_axi_rdata(axi_ic_mgmt_M01_AXI_RDATA),
        .s_axi_rready(axi_ic_mgmt_M01_AXI_RREADY),
        .s_axi_rresp(axi_ic_mgmt_M01_AXI_RRESP),
        .s_axi_rvalid(axi_ic_mgmt_M01_AXI_RVALID),
        .s_axi_wdata(axi_ic_mgmt_M01_AXI_WDATA),
        .s_axi_wready(axi_ic_mgmt_M01_AXI_WREADY),
        .s_axi_wstrb(axi_ic_mgmt_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_mgmt_M01_AXI_WVALID));
  bd_deec_axi_gpio_hbm_temp_0 axi_gpio_hbm_temp
       (.gpio_io_i(concat_hbm_temp_net),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_cmc_local_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M02_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M02_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M02_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M02_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M02_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M02_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M02_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M02_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M02_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M02_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M02_AXI_WVALID));
  bd_deec_axi_gpio_mb_intr_0 axi_gpio_mb_intr
       (.gpio_io_o(interrupt_gpio_net),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_cmc_local_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M03_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M03_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M03_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M03_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M03_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M03_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M03_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M03_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M03_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M03_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M03_AXI_WVALID));
  bd_deec_axi_gpio_mutex_cmc_0 axi_gpio_mutex_cmc
       (.gpio2_io_o(axi_gpio_mutex_cmc_gpio2_io_o),
        .gpio_io_i(axi_gpio_mutex_host_gpio_io_o),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M11_AXI_ARADDR[8:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M11_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M11_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M11_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_cmc_local_M11_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M11_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M11_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M11_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M11_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M11_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M11_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M11_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M11_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M11_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M11_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M11_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M11_AXI_WVALID));
  bd_deec_axi_gpio_mutex_host_0 axi_gpio_mutex_host
       (.gpio2_io_i(axi_gpio_mutex_cmc_gpio2_io_o),
        .gpio_io_o(axi_gpio_mutex_host_gpio_io_o),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_mgmt_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(aresetn_ctrl_net),
        .s_axi_arready(axi_ic_mgmt_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_mgmt_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_mgmt_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_mgmt_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_mgmt_M02_AXI_AWVALID),
        .s_axi_bready(axi_ic_mgmt_M02_AXI_BREADY),
        .s_axi_bresp(axi_ic_mgmt_M02_AXI_BRESP),
        .s_axi_bvalid(axi_ic_mgmt_M02_AXI_BVALID),
        .s_axi_rdata(axi_ic_mgmt_M02_AXI_RDATA),
        .s_axi_rready(axi_ic_mgmt_M02_AXI_RREADY),
        .s_axi_rresp(axi_ic_mgmt_M02_AXI_RRESP),
        .s_axi_rvalid(axi_ic_mgmt_M02_AXI_RVALID),
        .s_axi_wdata(axi_ic_mgmt_M02_AXI_WDATA),
        .s_axi_wready(axi_ic_mgmt_M02_AXI_WREADY),
        .s_axi_wstrb(axi_ic_mgmt_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_mgmt_M02_AXI_WVALID));
  bd_deec_axi_gpio_satellite_0 axi_gpio_satellite
       (.gpio_io_i(satellite_gpio_TRI_I),
        .gpio_io_o(satellite_gpio_TRI_O),
        .gpio_io_t(satellite_gpio_TRI_T),
        .ip2intc_irpt(intr_gpio_sat),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_cmc_local_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M00_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M00_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M00_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M00_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M00_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M00_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M00_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M00_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M00_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M00_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M00_AXI_WVALID));
  bd_deec_axi_gpio_timebase_0 axi_gpio_timebase
       (.gpio_io_i(c_counter_binary_0_Q),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M09_AXI_ARADDR[8:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M09_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M09_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M09_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_cmc_local_M09_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M09_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M09_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M09_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M09_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M09_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M09_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M09_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M09_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M09_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M09_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M09_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M09_AXI_WVALID));
  bd_deec_axi_gpio_wdt_0 axi_gpio_wdt
       (.gpio_io_o(wdt_freeze),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_cmc_local_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M04_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M04_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M04_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M04_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M04_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M04_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M04_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M04_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M04_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M04_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M04_AXI_WVALID));
  bd_deec_axi_ic_cmc_local_0 axi_ic_cmc_local
       (.ACLK(aclk_ctrl_net),
        .ARESETN(psreset_cmc_interconnect_aresetn),
        .M00_ACLK(aclk_ctrl_net),
        .M00_ARESETN(psreset_cmc_interconnect_aresetn),
        .M00_AXI_araddr(axi_ic_cmc_local_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_cmc_local_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_cmc_local_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_cmc_local_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_cmc_local_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_cmc_local_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_cmc_local_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_cmc_local_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_cmc_local_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_cmc_local_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_cmc_local_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_cmc_local_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_cmc_local_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_cmc_local_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_cmc_local_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_cmc_local_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_cmc_local_M00_AXI_WVALID),
        .M01_ACLK(aclk_ctrl_net),
        .M01_ARESETN(psreset_cmc_interconnect_aresetn),
        .M01_AXI_araddr(axi_ic_cmc_local_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_cmc_local_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_cmc_local_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_cmc_local_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_cmc_local_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_cmc_local_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_cmc_local_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_cmc_local_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_cmc_local_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_cmc_local_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_cmc_local_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_cmc_local_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_cmc_local_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_cmc_local_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_cmc_local_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_cmc_local_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_cmc_local_M01_AXI_WVALID),
        .M02_ACLK(aclk_ctrl_net),
        .M02_ARESETN(psreset_cmc_interconnect_aresetn),
        .M02_AXI_araddr(axi_ic_cmc_local_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_cmc_local_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_cmc_local_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_cmc_local_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_cmc_local_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_cmc_local_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_cmc_local_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_cmc_local_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_cmc_local_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_cmc_local_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_cmc_local_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_cmc_local_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_cmc_local_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_cmc_local_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_cmc_local_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_cmc_local_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_cmc_local_M02_AXI_WVALID),
        .M03_ACLK(aclk_ctrl_net),
        .M03_ARESETN(psreset_cmc_interconnect_aresetn),
        .M03_AXI_araddr(axi_ic_cmc_local_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_ic_cmc_local_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_cmc_local_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_ic_cmc_local_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_ic_cmc_local_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_cmc_local_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_ic_cmc_local_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_ic_cmc_local_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_ic_cmc_local_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_ic_cmc_local_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_cmc_local_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_cmc_local_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_cmc_local_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_cmc_local_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_cmc_local_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_cmc_local_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_cmc_local_M03_AXI_WVALID),
        .M04_ACLK(aclk_ctrl_net),
        .M04_ARESETN(psreset_cmc_interconnect_aresetn),
        .M04_AXI_araddr(axi_ic_cmc_local_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_ic_cmc_local_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_ic_cmc_local_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_ic_cmc_local_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_ic_cmc_local_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_ic_cmc_local_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_ic_cmc_local_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_ic_cmc_local_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_ic_cmc_local_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_ic_cmc_local_M04_AXI_RDATA),
        .M04_AXI_rready(axi_ic_cmc_local_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_ic_cmc_local_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_ic_cmc_local_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_ic_cmc_local_M04_AXI_WDATA),
        .M04_AXI_wready(axi_ic_cmc_local_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_ic_cmc_local_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_ic_cmc_local_M04_AXI_WVALID),
        .M05_ACLK(aclk_ctrl_net),
        .M05_ARESETN(psreset_cmc_interconnect_aresetn),
        .M05_AXI_araddr(axi_ic_cmc_local_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_ic_cmc_local_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_ic_cmc_local_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_ic_cmc_local_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_ic_cmc_local_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_ic_cmc_local_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_ic_cmc_local_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_ic_cmc_local_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_ic_cmc_local_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_ic_cmc_local_M05_AXI_RDATA),
        .M05_AXI_rready(axi_ic_cmc_local_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_ic_cmc_local_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_ic_cmc_local_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_ic_cmc_local_M05_AXI_WDATA),
        .M05_AXI_wready(axi_ic_cmc_local_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_ic_cmc_local_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_ic_cmc_local_M05_AXI_WVALID),
        .M06_ACLK(aclk_ctrl_net),
        .M06_ARESETN(psreset_cmc_interconnect_aresetn),
        .M06_AXI_araddr(axi_ic_cmc_local_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_ic_cmc_local_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_ic_cmc_local_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_ic_cmc_local_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_ic_cmc_local_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_ic_cmc_local_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_ic_cmc_local_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_ic_cmc_local_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_ic_cmc_local_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_ic_cmc_local_M06_AXI_RDATA),
        .M06_AXI_rready(axi_ic_cmc_local_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_ic_cmc_local_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_ic_cmc_local_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_ic_cmc_local_M06_AXI_WDATA),
        .M06_AXI_wready(axi_ic_cmc_local_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_ic_cmc_local_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_ic_cmc_local_M06_AXI_WVALID),
        .M07_ACLK(aclk_ctrl_net),
        .M07_ARESETN(psreset_cmc_interconnect_aresetn),
        .M07_AXI_araddr(axi_ic_cmc_local_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_ic_cmc_local_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_ic_cmc_local_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_ic_cmc_local_M07_AXI_AWADDR),
        .M07_AXI_awready(axi_ic_cmc_local_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_ic_cmc_local_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_ic_cmc_local_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_ic_cmc_local_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_ic_cmc_local_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_ic_cmc_local_M07_AXI_RDATA),
        .M07_AXI_rready(axi_ic_cmc_local_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_ic_cmc_local_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_ic_cmc_local_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_ic_cmc_local_M07_AXI_WDATA),
        .M07_AXI_wready(axi_ic_cmc_local_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_ic_cmc_local_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_ic_cmc_local_M07_AXI_WVALID),
        .M08_ACLK(aclk_ctrl_net),
        .M08_ARESETN(psreset_cmc_interconnect_aresetn),
        .M08_AXI_arready(1'b0),
        .M08_AXI_awready(1'b0),
        .M08_AXI_bresp(1'b0),
        .M08_AXI_bvalid(1'b0),
        .M08_AXI_rdata(1'b0),
        .M08_AXI_rresp(1'b0),
        .M08_AXI_rvalid(1'b0),
        .M08_AXI_wready(1'b0),
        .M09_ACLK(aclk_ctrl_net),
        .M09_ARESETN(psreset_cmc_interconnect_aresetn),
        .M09_AXI_araddr(axi_ic_cmc_local_M09_AXI_ARADDR),
        .M09_AXI_arready(axi_ic_cmc_local_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_ic_cmc_local_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_ic_cmc_local_M09_AXI_AWADDR),
        .M09_AXI_awready(axi_ic_cmc_local_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_ic_cmc_local_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_ic_cmc_local_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_ic_cmc_local_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_ic_cmc_local_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_ic_cmc_local_M09_AXI_RDATA),
        .M09_AXI_rready(axi_ic_cmc_local_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_ic_cmc_local_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_ic_cmc_local_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_ic_cmc_local_M09_AXI_WDATA),
        .M09_AXI_wready(axi_ic_cmc_local_M09_AXI_WREADY),
        .M09_AXI_wstrb(axi_ic_cmc_local_M09_AXI_WSTRB),
        .M09_AXI_wvalid(axi_ic_cmc_local_M09_AXI_WVALID),
        .M10_ACLK(aclk_ctrl_net),
        .M10_ARESETN(psreset_cmc_interconnect_aresetn),
        .M10_AXI_araddr(axi_ic_cmc_local_M10_AXI_ARADDR),
        .M10_AXI_arprot(axi_ic_cmc_local_M10_AXI_ARPROT),
        .M10_AXI_arready(axi_ic_cmc_local_M10_AXI_ARREADY),
        .M10_AXI_arvalid(axi_ic_cmc_local_M10_AXI_ARVALID),
        .M10_AXI_awaddr(axi_ic_cmc_local_M10_AXI_AWADDR),
        .M10_AXI_awprot(axi_ic_cmc_local_M10_AXI_AWPROT),
        .M10_AXI_awready(axi_ic_cmc_local_M10_AXI_AWREADY),
        .M10_AXI_awvalid(axi_ic_cmc_local_M10_AXI_AWVALID),
        .M10_AXI_bready(axi_ic_cmc_local_M10_AXI_BREADY),
        .M10_AXI_bresp(axi_ic_cmc_local_M10_AXI_BRESP),
        .M10_AXI_bvalid(axi_ic_cmc_local_M10_AXI_BVALID),
        .M10_AXI_rdata(axi_ic_cmc_local_M10_AXI_RDATA),
        .M10_AXI_rready(axi_ic_cmc_local_M10_AXI_RREADY),
        .M10_AXI_rresp(axi_ic_cmc_local_M10_AXI_RRESP),
        .M10_AXI_rvalid(axi_ic_cmc_local_M10_AXI_RVALID),
        .M10_AXI_wdata(axi_ic_cmc_local_M10_AXI_WDATA),
        .M10_AXI_wready(axi_ic_cmc_local_M10_AXI_WREADY),
        .M10_AXI_wstrb(axi_ic_cmc_local_M10_AXI_WSTRB),
        .M10_AXI_wvalid(axi_ic_cmc_local_M10_AXI_WVALID),
        .M11_ACLK(aclk_ctrl_net),
        .M11_ARESETN(psreset_cmc_interconnect_aresetn),
        .M11_AXI_araddr(axi_ic_cmc_local_M11_AXI_ARADDR),
        .M11_AXI_arready(axi_ic_cmc_local_M11_AXI_ARREADY),
        .M11_AXI_arvalid(axi_ic_cmc_local_M11_AXI_ARVALID),
        .M11_AXI_awaddr(axi_ic_cmc_local_M11_AXI_AWADDR),
        .M11_AXI_awready(axi_ic_cmc_local_M11_AXI_AWREADY),
        .M11_AXI_awvalid(axi_ic_cmc_local_M11_AXI_AWVALID),
        .M11_AXI_bready(axi_ic_cmc_local_M11_AXI_BREADY),
        .M11_AXI_bresp(axi_ic_cmc_local_M11_AXI_BRESP),
        .M11_AXI_bvalid(axi_ic_cmc_local_M11_AXI_BVALID),
        .M11_AXI_rdata(axi_ic_cmc_local_M11_AXI_RDATA),
        .M11_AXI_rready(axi_ic_cmc_local_M11_AXI_RREADY),
        .M11_AXI_rresp(axi_ic_cmc_local_M11_AXI_RRESP),
        .M11_AXI_rvalid(axi_ic_cmc_local_M11_AXI_RVALID),
        .M11_AXI_wdata(axi_ic_cmc_local_M11_AXI_WDATA),
        .M11_AXI_wready(axi_ic_cmc_local_M11_AXI_WREADY),
        .M11_AXI_wstrb(axi_ic_cmc_local_M11_AXI_WSTRB),
        .M11_AXI_wvalid(axi_ic_cmc_local_M11_AXI_WVALID),
        .M12_ACLK(aclk_ctrl_net),
        .M12_ARESETN(psreset_cmc_interconnect_aresetn),
        .M12_AXI_arready(1'b0),
        .M12_AXI_awready(1'b0),
        .M12_AXI_bresp(1'b0),
        .M12_AXI_bvalid(1'b0),
        .M12_AXI_rdata(1'b0),
        .M12_AXI_rresp(1'b0),
        .M12_AXI_rvalid(1'b0),
        .M12_AXI_wready(1'b0),
        .M13_ACLK(aclk_ctrl_net),
        .M13_ARESETN(psreset_cmc_interconnect_aresetn),
        .M13_AXI_arready(1'b0),
        .M13_AXI_awready(1'b0),
        .M13_AXI_bresp(1'b0),
        .M13_AXI_bvalid(1'b0),
        .M13_AXI_rdata(1'b0),
        .M13_AXI_rresp(1'b0),
        .M13_AXI_rvalid(1'b0),
        .M13_AXI_wready(1'b0),
        .S00_ACLK(aclk_ctrl_net),
        .S00_ARESETN(psreset_cmc_interconnect_aresetn),
        .S00_AXI_araddr(microblaze_axi_vip_M_AXI_ARADDR),
        .S00_AXI_arprot(microblaze_axi_vip_M_AXI_ARPROT),
        .S00_AXI_arready(microblaze_axi_vip_M_AXI_ARREADY),
        .S00_AXI_arvalid(microblaze_axi_vip_M_AXI_ARVALID),
        .S00_AXI_awaddr(microblaze_axi_vip_M_AXI_AWADDR),
        .S00_AXI_awprot(microblaze_axi_vip_M_AXI_AWPROT),
        .S00_AXI_awready(microblaze_axi_vip_M_AXI_AWREADY),
        .S00_AXI_awvalid(microblaze_axi_vip_M_AXI_AWVALID),
        .S00_AXI_bready(microblaze_axi_vip_M_AXI_BREADY),
        .S00_AXI_bresp(microblaze_axi_vip_M_AXI_BRESP),
        .S00_AXI_bvalid(microblaze_axi_vip_M_AXI_BVALID),
        .S00_AXI_rdata(microblaze_axi_vip_M_AXI_RDATA),
        .S00_AXI_rready(microblaze_axi_vip_M_AXI_RREADY),
        .S00_AXI_rresp(microblaze_axi_vip_M_AXI_RRESP),
        .S00_AXI_rvalid(microblaze_axi_vip_M_AXI_RVALID),
        .S00_AXI_wdata(microblaze_axi_vip_M_AXI_WDATA),
        .S00_AXI_wready(microblaze_axi_vip_M_AXI_WREADY),
        .S00_AXI_wstrb(microblaze_axi_vip_M_AXI_WSTRB),
        .S00_AXI_wvalid(microblaze_axi_vip_M_AXI_WVALID));
  bd_deec_axi_ic_mgmt_0 axi_ic_mgmt
       (.ACLK(aclk_ctrl_net),
        .ARESETN(aresetn_ctrl_net),
        .M00_ACLK(aclk_ctrl_net),
        .M00_ARESETN(aresetn_ctrl_net),
        .M00_AXI_araddr(axi_ic_mgmt_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_ic_mgmt_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_ic_mgmt_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_mgmt_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_mgmt_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_ic_mgmt_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_ic_mgmt_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_mgmt_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_mgmt_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_mgmt_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_mgmt_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_mgmt_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_mgmt_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_mgmt_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_mgmt_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_mgmt_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_mgmt_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_mgmt_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_mgmt_M00_AXI_WVALID),
        .M01_ACLK(aclk_ctrl_net),
        .M01_ARESETN(aresetn_ctrl_net),
        .M01_AXI_araddr(axi_ic_mgmt_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_mgmt_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_mgmt_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_mgmt_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_mgmt_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_mgmt_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_mgmt_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_mgmt_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_mgmt_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_mgmt_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_mgmt_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_mgmt_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_mgmt_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_mgmt_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_mgmt_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_mgmt_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_mgmt_M01_AXI_WVALID),
        .M02_ACLK(aclk_ctrl_net),
        .M02_ARESETN(aresetn_ctrl_net),
        .M02_AXI_araddr(axi_ic_mgmt_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_mgmt_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_mgmt_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_mgmt_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_mgmt_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_mgmt_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_mgmt_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_mgmt_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_mgmt_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_mgmt_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_mgmt_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_mgmt_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_mgmt_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_mgmt_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_mgmt_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_mgmt_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_mgmt_M02_AXI_WVALID),
        .M03_ACLK(aclk_ctrl_net),
        .M03_ARESETN(aresetn_ctrl_net),
        .M03_AXI_araddr(axi_ic_mgmt_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_ic_mgmt_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_ic_mgmt_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_ic_mgmt_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_ic_mgmt_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_ic_mgmt_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_ic_mgmt_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_ic_mgmt_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_ic_mgmt_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_ic_mgmt_M03_AXI_RDATA),
        .M03_AXI_rready(axi_ic_mgmt_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_ic_mgmt_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_ic_mgmt_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_ic_mgmt_M03_AXI_WDATA),
        .M03_AXI_wready(axi_ic_mgmt_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_ic_mgmt_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_ic_mgmt_M03_AXI_WVALID),
        .M04_ACLK(aclk_ctrl_net),
        .M04_ARESETN(aresetn_ctrl_net),
        .M04_AXI_araddr(axi_ic_mgmt_M04_AXI_ARADDR),
        .M04_AXI_arprot(axi_ic_mgmt_M04_AXI_ARPROT),
        .M04_AXI_arready(axi_ic_mgmt_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_ic_mgmt_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_ic_mgmt_M04_AXI_AWADDR),
        .M04_AXI_awprot(axi_ic_mgmt_M04_AXI_AWPROT),
        .M04_AXI_awready(axi_ic_mgmt_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_ic_mgmt_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_ic_mgmt_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_ic_mgmt_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_ic_mgmt_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_ic_mgmt_M04_AXI_RDATA),
        .M04_AXI_rready(axi_ic_mgmt_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_ic_mgmt_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_ic_mgmt_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_ic_mgmt_M04_AXI_WDATA),
        .M04_AXI_wready(axi_ic_mgmt_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_ic_mgmt_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_ic_mgmt_M04_AXI_WVALID),
        .S00_ACLK(aclk_ctrl_net),
        .S00_ARESETN(aresetn_ctrl_net),
        .S00_AXI_araddr(s_axi_ctrl_mgmt_net_ARADDR),
        .S00_AXI_arprot(s_axi_ctrl_mgmt_net_ARPROT),
        .S00_AXI_arready(s_axi_ctrl_mgmt_net_ARREADY),
        .S00_AXI_arvalid(s_axi_ctrl_mgmt_net_ARVALID),
        .S00_AXI_awaddr(s_axi_ctrl_mgmt_net_AWADDR),
        .S00_AXI_awprot(s_axi_ctrl_mgmt_net_AWPROT),
        .S00_AXI_awready(s_axi_ctrl_mgmt_net_AWREADY),
        .S00_AXI_awvalid(s_axi_ctrl_mgmt_net_AWVALID),
        .S00_AXI_bready(s_axi_ctrl_mgmt_net_BREADY),
        .S00_AXI_bresp(s_axi_ctrl_mgmt_net_BRESP),
        .S00_AXI_bvalid(s_axi_ctrl_mgmt_net_BVALID),
        .S00_AXI_rdata(s_axi_ctrl_mgmt_net_RDATA),
        .S00_AXI_rready(s_axi_ctrl_mgmt_net_RREADY),
        .S00_AXI_rresp(s_axi_ctrl_mgmt_net_RRESP),
        .S00_AXI_rvalid(s_axi_ctrl_mgmt_net_RVALID),
        .S00_AXI_wdata(s_axi_ctrl_mgmt_net_WDATA),
        .S00_AXI_wready(s_axi_ctrl_mgmt_net_WREADY),
        .S00_AXI_wstrb(s_axi_ctrl_mgmt_net_WSTRB),
        .S00_AXI_wvalid(s_axi_ctrl_mgmt_net_WVALID));
  bd_deec_axi_intc_0 axi_intc
       (.interrupt_address(axi_intc_interrupt_ADDRESS),
        .intr(concat_intr_cmc_dout),
        .irq(axi_intc_interrupt_INTERRUPT),
        .processor_ack({axi_intc_interrupt_ACK[0],axi_intc_interrupt_ACK[1]}),
        .processor_clk(aclk_ctrl_net),
        .processor_rst(cmc_mb_rst),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_cmc_local_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M05_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M05_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M05_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M05_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M05_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M05_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M05_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M05_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M05_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M05_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M05_AXI_WVALID));
  bd_deec_axi_intc_host_0 axi_intc_host
       (.intr(concat_host_interrupts_dout),
        .irq(interrupt_host),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_mgmt_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(aresetn_ctrl_net),
        .s_axi_arready(axi_ic_mgmt_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_mgmt_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_mgmt_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_ic_mgmt_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_mgmt_M03_AXI_AWVALID),
        .s_axi_bready(axi_ic_mgmt_M03_AXI_BREADY),
        .s_axi_bresp(axi_ic_mgmt_M03_AXI_BRESP),
        .s_axi_bvalid(axi_ic_mgmt_M03_AXI_BVALID),
        .s_axi_rdata(axi_ic_mgmt_M03_AXI_RDATA),
        .s_axi_rready(axi_ic_mgmt_M03_AXI_RREADY),
        .s_axi_rresp(axi_ic_mgmt_M03_AXI_RRESP),
        .s_axi_rvalid(axi_ic_mgmt_M03_AXI_RVALID),
        .s_axi_wdata(axi_ic_mgmt_M03_AXI_WDATA),
        .s_axi_wready(axi_ic_mgmt_M03_AXI_WREADY),
        .s_axi_wstrb(axi_ic_mgmt_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_mgmt_M03_AXI_WVALID));
  bd_deec_axi_timebase_wdt_0 axi_timebase_wdt
       (.freeze(wdt_freeze),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M06_AXI_ARADDR[3:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M06_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_ic_cmc_local_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M06_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M06_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M06_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M06_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M06_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M06_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M06_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M06_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M06_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M06_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M06_AXI_WVALID),
        .wdt_interrupt(axi_timebase_wdt_wdt_interrupt),
        .wdt_reset(interrupt_wdt_cmc_net));
  bd_deec_axi_uartlite_satellite_0 axi_uartlite_satellite
       (.interrupt(axi_uartlite_satellite_interrupt),
        .rx(satellite_uart_RxD),
        .s_axi_aclk(aclk_ctrl_net),
        .s_axi_araddr(axi_ic_cmc_local_M07_AXI_ARADDR[3:0]),
        .s_axi_aresetn(psreset_cmc_peripheral_aresetn),
        .s_axi_arready(axi_ic_cmc_local_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_cmc_local_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_cmc_local_M07_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_ic_cmc_local_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_cmc_local_M07_AXI_AWVALID),
        .s_axi_bready(axi_ic_cmc_local_M07_AXI_BREADY),
        .s_axi_bresp(axi_ic_cmc_local_M07_AXI_BRESP),
        .s_axi_bvalid(axi_ic_cmc_local_M07_AXI_BVALID),
        .s_axi_rdata(axi_ic_cmc_local_M07_AXI_RDATA),
        .s_axi_rready(axi_ic_cmc_local_M07_AXI_RREADY),
        .s_axi_rresp(axi_ic_cmc_local_M07_AXI_RRESP),
        .s_axi_rvalid(axi_ic_cmc_local_M07_AXI_RVALID),
        .s_axi_wdata(axi_ic_cmc_local_M07_AXI_WDATA),
        .s_axi_wready(axi_ic_cmc_local_M07_AXI_WREADY),
        .s_axi_wstrb(axi_ic_cmc_local_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_cmc_local_M07_AXI_WVALID),
        .tx(satellite_uart_TxD));
  bd_deec_concat_hbm_temp_0 concat_hbm_temp
       (.In0(hbm_temp_1_net),
        .In1(gnd_hbm_net),
        .In2(hbm_temp_2_net),
        .dout(concat_hbm_temp_net));
  bd_deec_concat_host_interrupts_0 concat_host_interrupts
       (.In0(interrupt_wdt_cmc_net),
        .In1(interrupt_gpio_net),
        .dout(concat_host_interrupts_dout));
  bd_deec_concat_intr_cmc_0 concat_intr_cmc
       (.In0(gnd_bus_1_interrupt_dout),
        .In1(gnd_bus_1_interrupt_dout),
        .In10(intr_gpio_qsfp),
        .In11(axi_timebase_wdt_wdt_interrupt),
        .In12(intr_gpio_sat),
        .In13(gnd_bus_1_interrupt_dout),
        .In14(gnd_bus_1_interrupt_dout),
        .In15(interrupt_hbm_cattrip_1),
        .In16(gnd_bus_1_interrupt_dout),
        .In2(gnd_bus_1_interrupt_dout),
        .In3(gnd_bus_1_interrupt_dout),
        .In4(gnd_bus_1_interrupt_dout),
        .In5(gnd_bus_1_interrupt_dout),
        .In6(axi_uartlite_satellite_interrupt),
        .In7(gnd_bus_1_interrupt_dout),
        .In8(gnd_bus_1_interrupt_dout),
        .In9(gnd_bus_1_interrupt_dout),
        .dout(concat_intr_cmc_dout));
  bd_deec_freerun_counter_0 freerun_counter
       (.CLK(aclk_ctrl_net),
        .Q(c_counter_binary_0_Q));
  bd_deec_gnd_bus_1_hbm_0 gnd_bus_1_hbm
       (.dout(gnd_hbm_net));
  bd_deec_gnd_bus_1_interrupts_0 gnd_bus_1_interrupts
       (.dout(gnd_bus_1_interrupt_dout));
  bd_deec_microblaze_axi_vip_0 microblaze_axi_vip
       (.aclk(aclk_ctrl_net),
        .aresetn(psreset_cmc_peripheral_aresetn),
        .m_axi_araddr(microblaze_axi_vip_M_AXI_ARADDR),
        .m_axi_arprot(microblaze_axi_vip_M_AXI_ARPROT),
        .m_axi_arready(microblaze_axi_vip_M_AXI_ARREADY),
        .m_axi_arvalid(microblaze_axi_vip_M_AXI_ARVALID),
        .m_axi_awaddr(microblaze_axi_vip_M_AXI_AWADDR),
        .m_axi_awprot(microblaze_axi_vip_M_AXI_AWPROT),
        .m_axi_awready(microblaze_axi_vip_M_AXI_AWREADY),
        .m_axi_awvalid(microblaze_axi_vip_M_AXI_AWVALID),
        .m_axi_bready(microblaze_axi_vip_M_AXI_BREADY),
        .m_axi_bresp(microblaze_axi_vip_M_AXI_BRESP),
        .m_axi_bvalid(microblaze_axi_vip_M_AXI_BVALID),
        .m_axi_rdata(microblaze_axi_vip_M_AXI_RDATA),
        .m_axi_rready(microblaze_axi_vip_M_AXI_RREADY),
        .m_axi_rresp(microblaze_axi_vip_M_AXI_RRESP),
        .m_axi_rvalid(microblaze_axi_vip_M_AXI_RVALID),
        .m_axi_wdata(microblaze_axi_vip_M_AXI_WDATA),
        .m_axi_wready(microblaze_axi_vip_M_AXI_WREADY),
        .m_axi_wstrb(microblaze_axi_vip_M_AXI_WSTRB),
        .m_axi_wvalid(microblaze_axi_vip_M_AXI_WVALID),
        .s_axi_araddr(microblaze_cmc_M_AXI_DP_ARADDR),
        .s_axi_arprot(microblaze_cmc_M_AXI_DP_ARPROT),
        .s_axi_arready(microblaze_cmc_M_AXI_DP_ARREADY),
        .s_axi_arvalid(microblaze_cmc_M_AXI_DP_ARVALID),
        .s_axi_awaddr(microblaze_cmc_M_AXI_DP_AWADDR),
        .s_axi_awprot(microblaze_cmc_M_AXI_DP_AWPROT),
        .s_axi_awready(microblaze_cmc_M_AXI_DP_AWREADY),
        .s_axi_awvalid(microblaze_cmc_M_AXI_DP_AWVALID),
        .s_axi_bready(microblaze_cmc_M_AXI_DP_BREADY),
        .s_axi_bresp(microblaze_cmc_M_AXI_DP_BRESP),
        .s_axi_bvalid(microblaze_cmc_M_AXI_DP_BVALID),
        .s_axi_rdata(microblaze_cmc_M_AXI_DP_RDATA),
        .s_axi_rready(microblaze_cmc_M_AXI_DP_RREADY),
        .s_axi_rresp(microblaze_cmc_M_AXI_DP_RRESP),
        .s_axi_rvalid(microblaze_cmc_M_AXI_DP_RVALID),
        .s_axi_wdata(microblaze_cmc_M_AXI_DP_WDATA),
        .s_axi_wready(microblaze_cmc_M_AXI_DP_WREADY),
        .s_axi_wstrb(microblaze_cmc_M_AXI_DP_WSTRB),
        .s_axi_wvalid(microblaze_cmc_M_AXI_DP_WVALID));
  (* BMM_INFO_PROCESSOR = "microblaze-le > bd_deec microblaze_local_memory/lmb_bram_if_cntlr bd_deec axi_bram_ctrl_regmap_cmc" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  bd_deec_microblaze_cmc_0 microblaze_cmc
       (.Byte_Enable(microblaze_cmc_DLMB_BE),
        .Clk(aclk_ctrl_net),
        .DCE(microblaze_cmc_DLMB_CE),
        .DReady(microblaze_cmc_DLMB_READY),
        .DUE(microblaze_cmc_DLMB_UE),
        .DWait(microblaze_cmc_DLMB_WAIT),
        .D_AS(microblaze_cmc_DLMB_ADDRSTROBE),
        .Data_Addr(microblaze_cmc_DLMB_ABUS),
        .Data_Read(microblaze_cmc_DLMB_READDBUS),
        .Data_Write(microblaze_cmc_DLMB_WRITEDBUS),
        .Dbg_Capture(mdm_mbdebug_1_CAPTURE),
        .Dbg_Clk(mdm_mbdebug_1_CLK),
        .Dbg_Disable(mdm_mbdebug_1_DISABLE),
        .Dbg_Reg_En(mdm_mbdebug_1_REG_EN),
        .Dbg_Shift(mdm_mbdebug_1_SHIFT),
        .Dbg_TDI(mdm_mbdebug_1_TDI),
        .Dbg_TDO(mdm_mbdebug_1_TDO),
        .Dbg_Update(mdm_mbdebug_1_UPDATE),
        .Debug_Rst(mdm_mbdebug_1_RST),
        .ICE(microblaze_cmc_ILMB_CE),
        .IFetch(microblaze_cmc_ILMB_READSTROBE),
        .IReady(microblaze_cmc_ILMB_READY),
        .IUE(microblaze_cmc_ILMB_UE),
        .IWAIT(microblaze_cmc_ILMB_WAIT),
        .I_AS(microblaze_cmc_ILMB_ADDRSTROBE),
        .Instr(microblaze_cmc_ILMB_READDBUS),
        .Instr_Addr(microblaze_cmc_ILMB_ABUS),
        .Interrupt(axi_intc_interrupt_INTERRUPT),
        .Interrupt_Ack(axi_intc_interrupt_ACK),
        .Interrupt_Address({axi_intc_interrupt_ADDRESS[31],axi_intc_interrupt_ADDRESS[30],axi_intc_interrupt_ADDRESS[29],axi_intc_interrupt_ADDRESS[28],axi_intc_interrupt_ADDRESS[27],axi_intc_interrupt_ADDRESS[26],axi_intc_interrupt_ADDRESS[25],axi_intc_interrupt_ADDRESS[24],axi_intc_interrupt_ADDRESS[23],axi_intc_interrupt_ADDRESS[22],axi_intc_interrupt_ADDRESS[21],axi_intc_interrupt_ADDRESS[20],axi_intc_interrupt_ADDRESS[19],axi_intc_interrupt_ADDRESS[18],axi_intc_interrupt_ADDRESS[17],axi_intc_interrupt_ADDRESS[16],axi_intc_interrupt_ADDRESS[15],axi_intc_interrupt_ADDRESS[14],axi_intc_interrupt_ADDRESS[13],axi_intc_interrupt_ADDRESS[12],axi_intc_interrupt_ADDRESS[11],axi_intc_interrupt_ADDRESS[10],axi_intc_interrupt_ADDRESS[9],axi_intc_interrupt_ADDRESS[8],axi_intc_interrupt_ADDRESS[7],axi_intc_interrupt_ADDRESS[6],axi_intc_interrupt_ADDRESS[5],axi_intc_interrupt_ADDRESS[4],axi_intc_interrupt_ADDRESS[3],axi_intc_interrupt_ADDRESS[2],axi_intc_interrupt_ADDRESS[1],axi_intc_interrupt_ADDRESS[0]}),
        .M0_AXIS_TDATA(microblaze_cmc_M0_AXIS_TDATA),
        .M0_AXIS_TLAST(microblaze_cmc_M0_AXIS_TLAST),
        .M0_AXIS_TREADY(microblaze_cmc_M0_AXIS_TREADY),
        .M0_AXIS_TVALID(microblaze_cmc_M0_AXIS_TVALID),
        .M_AXI_DP_ARADDR(microblaze_cmc_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_cmc_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_cmc_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_cmc_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_cmc_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_cmc_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_cmc_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_cmc_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_cmc_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_cmc_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_cmc_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_cmc_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_cmc_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_cmc_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_cmc_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_cmc_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_cmc_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_cmc_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_cmc_M_AXI_DP_WVALID),
        .Read_Strobe(microblaze_cmc_DLMB_READSTROBE),
        .Reset(cmc_mb_rst),
        .S0_AXIS_TDATA(msp432_bsl_crc_gen_m0_axis_TDATA),
        .S0_AXIS_TLAST(msp432_bsl_crc_gen_m0_axis_TLAST),
        .S0_AXIS_TREADY(msp432_bsl_crc_gen_m0_axis_TREADY),
        .S0_AXIS_TVALID(msp432_bsl_crc_gen_m0_axis_TVALID),
        .Write_Strobe(microblaze_cmc_DLMB_WRITESTROBE));
  microblaze_local_memory_imp_XWDWOY microblaze_local_memory
       (.clk(aclk_ctrl_net),
        .dlmb_abus(microblaze_cmc_DLMB_ABUS),
        .dlmb_addrstrobe(microblaze_cmc_DLMB_ADDRSTROBE),
        .dlmb_be(microblaze_cmc_DLMB_BE),
        .dlmb_ce(microblaze_cmc_DLMB_CE),
        .dlmb_readdbus(microblaze_cmc_DLMB_READDBUS),
        .dlmb_readstrobe(microblaze_cmc_DLMB_READSTROBE),
        .dlmb_ready(microblaze_cmc_DLMB_READY),
        .dlmb_ue(microblaze_cmc_DLMB_UE),
        .dlmb_wait(microblaze_cmc_DLMB_WAIT),
        .dlmb_writedbus(microblaze_cmc_DLMB_WRITEDBUS),
        .dlmb_writestrobe(microblaze_cmc_DLMB_WRITESTROBE),
        .ext_bram_if_ctrl_addr(axi_bram_ctrl_lmb_BRAM_PORTA_ADDR),
        .ext_bram_if_ctrl_clk(axi_bram_ctrl_lmb_BRAM_PORTA_CLK),
        .ext_bram_if_ctrl_din(axi_bram_ctrl_lmb_BRAM_PORTA_DIN),
        .ext_bram_if_ctrl_dout(axi_bram_ctrl_lmb_BRAM_PORTA_DOUT),
        .ext_bram_if_ctrl_en(axi_bram_ctrl_lmb_BRAM_PORTA_EN),
        .ext_bram_if_ctrl_rst(axi_bram_ctrl_lmb_BRAM_PORTA_RST),
        .ext_bram_if_ctrl_we(axi_bram_ctrl_lmb_BRAM_PORTA_WE),
        .ilmb_abus(microblaze_cmc_ILMB_ABUS),
        .ilmb_addrstrobe(microblaze_cmc_ILMB_ADDRSTROBE),
        .ilmb_ce(microblaze_cmc_ILMB_CE),
        .ilmb_readdbus(microblaze_cmc_ILMB_READDBUS),
        .ilmb_readstrobe(microblaze_cmc_ILMB_READSTROBE),
        .ilmb_ready(microblaze_cmc_ILMB_READY),
        .ilmb_ue(microblaze_cmc_ILMB_UE),
        .ilmb_wait(microblaze_cmc_ILMB_WAIT),
        .rst(rst_1));
  bd_deec_msp432_bsl_crc_gen_0 msp432_bsl_crc_gen
       (.clk(aclk_ctrl_net),
        .m0_axis_tdata(msp432_bsl_crc_gen_m0_axis_TDATA),
        .m0_axis_tlast(msp432_bsl_crc_gen_m0_axis_TLAST),
        .m0_axis_tready(msp432_bsl_crc_gen_m0_axis_TREADY),
        .m0_axis_tvalid(msp432_bsl_crc_gen_m0_axis_TVALID),
        .reset_n(psreset_cmc_peripheral_aresetn),
        .s0_axis_tdata(microblaze_cmc_M0_AXIS_TDATA),
        .s0_axis_tlast(microblaze_cmc_M0_AXIS_TLAST),
        .s0_axis_tready(microblaze_cmc_M0_AXIS_TREADY),
        .s0_axis_tvalid(microblaze_cmc_M0_AXIS_TVALID));
  bd_deec_psreset_cmc_0 psreset_cmc
       (.aux_reset_in(reset_gen_resetn),
        .bus_struct_reset(rst_1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_ctrl_net),
        .interconnect_aresetn(psreset_cmc_interconnect_aresetn),
        .mb_debug_sys_rst(mdm_debug_sys_rst),
        .mb_reset(cmc_mb_rst),
        .peripheral_aresetn(psreset_cmc_peripheral_aresetn),
        .slowest_sync_clk(aclk_ctrl_net));
  qsfp_gpio_hierarchy_imp_HEDMGA qsfp_gpio_hierarchy
       (.S_AXI_araddr(axi_ic_cmc_local_M01_AXI_ARADDR),
        .S_AXI_arready(axi_ic_cmc_local_M01_AXI_ARREADY),
        .S_AXI_arvalid(axi_ic_cmc_local_M01_AXI_ARVALID),
        .S_AXI_awaddr(axi_ic_cmc_local_M01_AXI_AWADDR),
        .S_AXI_awready(axi_ic_cmc_local_M01_AXI_AWREADY),
        .S_AXI_awvalid(axi_ic_cmc_local_M01_AXI_AWVALID),
        .S_AXI_bready(axi_ic_cmc_local_M01_AXI_BREADY),
        .S_AXI_bresp(axi_ic_cmc_local_M01_AXI_BRESP),
        .S_AXI_bvalid(axi_ic_cmc_local_M01_AXI_BVALID),
        .S_AXI_rdata(axi_ic_cmc_local_M01_AXI_RDATA),
        .S_AXI_rready(axi_ic_cmc_local_M01_AXI_RREADY),
        .S_AXI_rresp(axi_ic_cmc_local_M01_AXI_RRESP),
        .S_AXI_rvalid(axi_ic_cmc_local_M01_AXI_RVALID),
        .S_AXI_wdata(axi_ic_cmc_local_M01_AXI_WDATA),
        .S_AXI_wready(axi_ic_cmc_local_M01_AXI_WREADY),
        .S_AXI_wstrb(axi_ic_cmc_local_M01_AXI_WSTRB),
        .S_AXI_wvalid(axi_ic_cmc_local_M01_AXI_WVALID),
        .aclk_ctrl(aclk_ctrl_net),
        .aresetn_ctrl(psreset_cmc_peripheral_aresetn),
        .ip2intc_irpt(intr_gpio_qsfp),
        .qsfp0_int_l(qsfp0_int_l),
        .qsfp0_lpmode(qsfp0_lpmode),
        .qsfp0_modprs_l(qsfp0_modprs_l),
        .qsfp0_modsel_l(qsfp0_modsel_l),
        .qsfp0_reset_l(qsfp0_reset_l),
        .qsfp1_int_l(qsfp1_int_l),
        .qsfp1_lpmode(qsfp1_lpmode),
        .qsfp1_modprs_l(qsfp1_modprs_l),
        .qsfp1_modsel_l(qsfp1_modsel_l),
        .qsfp1_reset_l(qsfp1_reset_l));
  bd_deec_reachout_axi_vip_0 reachout_axi_vip
       (.aclk(aclk_ctrl_net),
        .aresetn(psreset_cmc_peripheral_aresetn),
        .m_axi_arready(1'b0),
        .m_axi_awready(1'b0),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wready(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b1,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b1,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(1'b0));
  bd_deec_reg_map_bram_0 reg_map_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,reg_map_bram_ctrl_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_reg_map1_BRAM_PORTA_ADDR}),
        .clka(reg_map_bram_ctrl_CLK),
        .clkb(axi_bram_ctrl_reg_map1_BRAM_PORTA_CLK),
        .dina(reg_map_bram_ctrl_DIN),
        .dinb(axi_bram_ctrl_reg_map1_BRAM_PORTA_DIN),
        .douta(reg_map_bram_ctrl_DOUT),
        .doutb(axi_bram_ctrl_reg_map1_BRAM_PORTA_DOUT),
        .ena(reg_map_bram_ctrl_EN),
        .enb(axi_bram_ctrl_reg_map1_BRAM_PORTA_EN),
        .rsta(reg_map_bram_ctrl_RST),
        .rstb(axi_bram_ctrl_reg_map1_BRAM_PORTA_RST),
        .wea(reg_map_bram_ctrl_WE),
        .web(axi_bram_ctrl_reg_map1_BRAM_PORTA_WE));
  reset_gen_imp_194GHUC reset_gen
       (.axi_gpio_rst_n(axi_gpio_mb_reset_gpio_io_o),
        .resetn(reset_gen_resetn),
        .wdt_reset(interrupt_wdt_cmc_net));
endmodule

module bd_deec_axi_ic_cmc_local_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arprot,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awprot,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arprot,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awprot,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arprot,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awprot,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input [0:0]M06_AXI_arready;
  output [0:0]M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input [0:0]M06_AXI_awready;
  output [0:0]M06_AXI_awvalid;
  output [0:0]M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input [0:0]M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output [0:0]M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input [0:0]M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input [0:0]M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output [0:0]M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input [0:0]M07_AXI_arready;
  output [0:0]M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input [0:0]M07_AXI_awready;
  output [0:0]M07_AXI_awvalid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input [0:0]M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output M08_AXI_araddr;
  output M08_AXI_arprot;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output M08_AXI_awaddr;
  output M08_AXI_awprot;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input M08_AXI_bresp;
  input M08_AXI_bvalid;
  input M08_AXI_rdata;
  output M08_AXI_rready;
  input M08_AXI_rresp;
  input M08_AXI_rvalid;
  output M08_AXI_wdata;
  input M08_AXI_wready;
  output M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  input [0:0]M09_AXI_arready;
  output [0:0]M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input [0:0]M09_AXI_awready;
  output [0:0]M09_AXI_awvalid;
  output [0:0]M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input [0:0]M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output [0:0]M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input [0:0]M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input [0:0]M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output [0:0]M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  output [2:0]M10_AXI_arprot;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  output [2:0]M10_AXI_awprot;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  input [0:0]M11_AXI_arready;
  output [0:0]M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  input [0:0]M11_AXI_awready;
  output [0:0]M11_AXI_awvalid;
  output [0:0]M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input [0:0]M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output [0:0]M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input [0:0]M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input [0:0]M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output [0:0]M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output M12_AXI_araddr;
  output M12_AXI_arprot;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output M12_AXI_awaddr;
  output M12_AXI_awprot;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input M12_AXI_bresp;
  input M12_AXI_bvalid;
  input M12_AXI_rdata;
  output M12_AXI_rready;
  input M12_AXI_rresp;
  input M12_AXI_rvalid;
  output M12_AXI_wdata;
  input M12_AXI_wready;
  output M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output M13_AXI_araddr;
  output M13_AXI_arprot;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output M13_AXI_awaddr;
  output M13_AXI_awprot;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input M13_AXI_bresp;
  input M13_AXI_bvalid;
  input M13_AXI_rdata;
  output M13_AXI_rready;
  input M13_AXI_rresp;
  input M13_AXI_rvalid;
  output M13_AXI_wdata;
  input M13_AXI_wready;
  output M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_ic_cmc_local_ACLK_net;
  wire axi_ic_cmc_local_ARESETN_net;
  wire [31:0]axi_ic_cmc_local_to_s00_couplers_ARADDR;
  wire [2:0]axi_ic_cmc_local_to_s00_couplers_ARPROT;
  wire axi_ic_cmc_local_to_s00_couplers_ARREADY;
  wire axi_ic_cmc_local_to_s00_couplers_ARVALID;
  wire [31:0]axi_ic_cmc_local_to_s00_couplers_AWADDR;
  wire [2:0]axi_ic_cmc_local_to_s00_couplers_AWPROT;
  wire axi_ic_cmc_local_to_s00_couplers_AWREADY;
  wire axi_ic_cmc_local_to_s00_couplers_AWVALID;
  wire axi_ic_cmc_local_to_s00_couplers_BREADY;
  wire [1:0]axi_ic_cmc_local_to_s00_couplers_BRESP;
  wire axi_ic_cmc_local_to_s00_couplers_BVALID;
  wire [31:0]axi_ic_cmc_local_to_s00_couplers_RDATA;
  wire axi_ic_cmc_local_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_cmc_local_to_s00_couplers_RRESP;
  wire axi_ic_cmc_local_to_s00_couplers_RVALID;
  wire [31:0]axi_ic_cmc_local_to_s00_couplers_WDATA;
  wire axi_ic_cmc_local_to_s00_couplers_WREADY;
  wire [3:0]axi_ic_cmc_local_to_s00_couplers_WSTRB;
  wire axi_ic_cmc_local_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m00_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m00_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m00_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m00_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m00_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m00_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m00_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m01_couplers_to_axi_ic_cmc_local_ARADDR;
  wire m01_couplers_to_axi_ic_cmc_local_ARREADY;
  wire m01_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m01_couplers_to_axi_ic_cmc_local_AWADDR;
  wire m01_couplers_to_axi_ic_cmc_local_AWREADY;
  wire m01_couplers_to_axi_ic_cmc_local_AWVALID;
  wire m01_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m01_couplers_to_axi_ic_cmc_local_BRESP;
  wire m01_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m01_couplers_to_axi_ic_cmc_local_RDATA;
  wire m01_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m01_couplers_to_axi_ic_cmc_local_RRESP;
  wire m01_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m01_couplers_to_axi_ic_cmc_local_WDATA;
  wire m01_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m01_couplers_to_axi_ic_cmc_local_WSTRB;
  wire m01_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m02_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m02_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m02_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m02_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m02_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m02_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m02_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m02_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m03_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m03_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m03_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m03_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m03_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m03_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m03_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m03_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m04_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m04_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m04_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m04_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m04_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m04_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m04_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m04_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m05_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m05_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m05_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m05_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m05_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m05_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m05_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m05_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m06_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m06_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m06_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m06_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m06_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m06_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m06_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m06_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m07_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m07_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m07_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m07_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m07_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m07_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m07_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m07_couplers_to_axi_ic_cmc_local_WVALID;
  wire m08_couplers_to_axi_ic_cmc_local_ARADDR;
  wire m08_couplers_to_axi_ic_cmc_local_ARPROT;
  wire m08_couplers_to_axi_ic_cmc_local_ARREADY;
  wire m08_couplers_to_axi_ic_cmc_local_ARVALID;
  wire m08_couplers_to_axi_ic_cmc_local_AWADDR;
  wire m08_couplers_to_axi_ic_cmc_local_AWPROT;
  wire m08_couplers_to_axi_ic_cmc_local_AWREADY;
  wire m08_couplers_to_axi_ic_cmc_local_AWVALID;
  wire m08_couplers_to_axi_ic_cmc_local_BREADY;
  wire m08_couplers_to_axi_ic_cmc_local_BRESP;
  wire m08_couplers_to_axi_ic_cmc_local_BVALID;
  wire m08_couplers_to_axi_ic_cmc_local_RDATA;
  wire m08_couplers_to_axi_ic_cmc_local_RREADY;
  wire m08_couplers_to_axi_ic_cmc_local_RRESP;
  wire m08_couplers_to_axi_ic_cmc_local_RVALID;
  wire m08_couplers_to_axi_ic_cmc_local_WDATA;
  wire m08_couplers_to_axi_ic_cmc_local_WREADY;
  wire m08_couplers_to_axi_ic_cmc_local_WSTRB;
  wire m08_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m09_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m09_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m09_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m09_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m09_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m09_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m09_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m09_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m10_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [2:0]m10_couplers_to_axi_ic_cmc_local_ARPROT;
  wire m10_couplers_to_axi_ic_cmc_local_ARREADY;
  wire m10_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m10_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [2:0]m10_couplers_to_axi_ic_cmc_local_AWPROT;
  wire m10_couplers_to_axi_ic_cmc_local_AWREADY;
  wire m10_couplers_to_axi_ic_cmc_local_AWVALID;
  wire m10_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m10_couplers_to_axi_ic_cmc_local_BRESP;
  wire m10_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m10_couplers_to_axi_ic_cmc_local_RDATA;
  wire m10_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m10_couplers_to_axi_ic_cmc_local_RRESP;
  wire m10_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m10_couplers_to_axi_ic_cmc_local_WDATA;
  wire m10_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m10_couplers_to_axi_ic_cmc_local_WSTRB;
  wire m10_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]m11_couplers_to_axi_ic_cmc_local_ARADDR;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_ARREADY;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_ARVALID;
  wire [31:0]m11_couplers_to_axi_ic_cmc_local_AWADDR;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_AWREADY;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_AWVALID;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_BREADY;
  wire [1:0]m11_couplers_to_axi_ic_cmc_local_BRESP;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_BVALID;
  wire [31:0]m11_couplers_to_axi_ic_cmc_local_RDATA;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_RREADY;
  wire [1:0]m11_couplers_to_axi_ic_cmc_local_RRESP;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_RVALID;
  wire [31:0]m11_couplers_to_axi_ic_cmc_local_WDATA;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_WREADY;
  wire [3:0]m11_couplers_to_axi_ic_cmc_local_WSTRB;
  wire [0:0]m11_couplers_to_axi_ic_cmc_local_WVALID;
  wire m12_couplers_to_axi_ic_cmc_local_ARADDR;
  wire m12_couplers_to_axi_ic_cmc_local_ARPROT;
  wire m12_couplers_to_axi_ic_cmc_local_ARREADY;
  wire m12_couplers_to_axi_ic_cmc_local_ARVALID;
  wire m12_couplers_to_axi_ic_cmc_local_AWADDR;
  wire m12_couplers_to_axi_ic_cmc_local_AWPROT;
  wire m12_couplers_to_axi_ic_cmc_local_AWREADY;
  wire m12_couplers_to_axi_ic_cmc_local_AWVALID;
  wire m12_couplers_to_axi_ic_cmc_local_BREADY;
  wire m12_couplers_to_axi_ic_cmc_local_BRESP;
  wire m12_couplers_to_axi_ic_cmc_local_BVALID;
  wire m12_couplers_to_axi_ic_cmc_local_RDATA;
  wire m12_couplers_to_axi_ic_cmc_local_RREADY;
  wire m12_couplers_to_axi_ic_cmc_local_RRESP;
  wire m12_couplers_to_axi_ic_cmc_local_RVALID;
  wire m12_couplers_to_axi_ic_cmc_local_WDATA;
  wire m12_couplers_to_axi_ic_cmc_local_WREADY;
  wire m12_couplers_to_axi_ic_cmc_local_WSTRB;
  wire m12_couplers_to_axi_ic_cmc_local_WVALID;
  wire m13_couplers_to_axi_ic_cmc_local_ARADDR;
  wire m13_couplers_to_axi_ic_cmc_local_ARPROT;
  wire m13_couplers_to_axi_ic_cmc_local_ARREADY;
  wire m13_couplers_to_axi_ic_cmc_local_ARVALID;
  wire m13_couplers_to_axi_ic_cmc_local_AWADDR;
  wire m13_couplers_to_axi_ic_cmc_local_AWPROT;
  wire m13_couplers_to_axi_ic_cmc_local_AWREADY;
  wire m13_couplers_to_axi_ic_cmc_local_AWVALID;
  wire m13_couplers_to_axi_ic_cmc_local_BREADY;
  wire m13_couplers_to_axi_ic_cmc_local_BRESP;
  wire m13_couplers_to_axi_ic_cmc_local_BVALID;
  wire m13_couplers_to_axi_ic_cmc_local_RDATA;
  wire m13_couplers_to_axi_ic_cmc_local_RREADY;
  wire m13_couplers_to_axi_ic_cmc_local_RRESP;
  wire m13_couplers_to_axi_ic_cmc_local_RVALID;
  wire m13_couplers_to_axi_ic_cmc_local_WDATA;
  wire m13_couplers_to_axi_ic_cmc_local_WREADY;
  wire m13_couplers_to_axi_ic_cmc_local_WSTRB;
  wire m13_couplers_to_axi_ic_cmc_local_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [0:0]xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [0:0]xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire [0:0]xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire [0:0]xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [0:0]xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [0:0]xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [0:0]xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire [0:0]xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire [0:0]xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [0:0]xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [0:0]xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [0:0]xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire [0:0]xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire [0:0]xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire [0:0]xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [351:320]xbar_to_m10_couplers_ARADDR;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire xbar_to_m10_couplers_ARREADY;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [351:320]xbar_to_m10_couplers_AWADDR;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire xbar_to_m10_couplers_AWREADY;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [383:352]xbar_to_m11_couplers_ARADDR;
  wire [0:0]xbar_to_m11_couplers_ARREADY;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [383:352]xbar_to_m11_couplers_AWADDR;
  wire [0:0]xbar_to_m11_couplers_AWREADY;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire [0:0]xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire [0:0]xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire [0:0]xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [415:384]xbar_to_m12_couplers_ARADDR;
  wire [38:36]xbar_to_m12_couplers_ARPROT;
  wire xbar_to_m12_couplers_ARREADY;
  wire [12:12]xbar_to_m12_couplers_ARVALID;
  wire [415:384]xbar_to_m12_couplers_AWADDR;
  wire [38:36]xbar_to_m12_couplers_AWPROT;
  wire xbar_to_m12_couplers_AWREADY;
  wire [12:12]xbar_to_m12_couplers_AWVALID;
  wire [12:12]xbar_to_m12_couplers_BREADY;
  wire xbar_to_m12_couplers_BRESP;
  wire xbar_to_m12_couplers_BVALID;
  wire xbar_to_m12_couplers_RDATA;
  wire [12:12]xbar_to_m12_couplers_RREADY;
  wire xbar_to_m12_couplers_RRESP;
  wire xbar_to_m12_couplers_RVALID;
  wire [415:384]xbar_to_m12_couplers_WDATA;
  wire xbar_to_m12_couplers_WREADY;
  wire [51:48]xbar_to_m12_couplers_WSTRB;
  wire [12:12]xbar_to_m12_couplers_WVALID;
  wire [447:416]xbar_to_m13_couplers_ARADDR;
  wire [41:39]xbar_to_m13_couplers_ARPROT;
  wire xbar_to_m13_couplers_ARREADY;
  wire [13:13]xbar_to_m13_couplers_ARVALID;
  wire [447:416]xbar_to_m13_couplers_AWADDR;
  wire [41:39]xbar_to_m13_couplers_AWPROT;
  wire xbar_to_m13_couplers_AWREADY;
  wire [13:13]xbar_to_m13_couplers_AWVALID;
  wire [13:13]xbar_to_m13_couplers_BREADY;
  wire xbar_to_m13_couplers_BRESP;
  wire xbar_to_m13_couplers_BVALID;
  wire xbar_to_m13_couplers_RDATA;
  wire [13:13]xbar_to_m13_couplers_RREADY;
  wire xbar_to_m13_couplers_RRESP;
  wire xbar_to_m13_couplers_RVALID;
  wire [447:416]xbar_to_m13_couplers_WDATA;
  wire xbar_to_m13_couplers_WREADY;
  wire [55:52]xbar_to_m13_couplers_WSTRB;
  wire [13:13]xbar_to_m13_couplers_WVALID;
  wire [41:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [41:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_ic_cmc_local_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_ic_cmc_local_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_ic_cmc_local_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_ic_cmc_local_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_ic_cmc_local_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_ic_cmc_local_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_ic_cmc_local_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_ic_cmc_local_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_ic_cmc_local_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_ic_cmc_local_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_ic_cmc_local_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_ic_cmc_local_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_ic_cmc_local_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_ic_cmc_local_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_ic_cmc_local_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_ic_cmc_local_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_ic_cmc_local_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_ic_cmc_local_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_ic_cmc_local_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_ic_cmc_local_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi_ic_cmc_local_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi_ic_cmc_local_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_ic_cmc_local_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi_ic_cmc_local_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M06_AXI_arvalid[0] = m06_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M06_AXI_awvalid[0] = m06_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M06_AXI_bready[0] = m06_couplers_to_axi_ic_cmc_local_BREADY;
  assign M06_AXI_rready[0] = m06_couplers_to_axi_ic_cmc_local_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_ic_cmc_local_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M06_AXI_wvalid[0] = m06_couplers_to_axi_ic_cmc_local_WVALID;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M07_AXI_arvalid[0] = m07_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M07_AXI_awvalid[0] = m07_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M07_AXI_bready[0] = m07_couplers_to_axi_ic_cmc_local_BREADY;
  assign M07_AXI_rready[0] = m07_couplers_to_axi_ic_cmc_local_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_ic_cmc_local_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M07_AXI_wvalid[0] = m07_couplers_to_axi_ic_cmc_local_WVALID;
  assign M08_AXI_araddr = m08_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M08_AXI_arprot = m08_couplers_to_axi_ic_cmc_local_ARPROT;
  assign M08_AXI_arvalid = m08_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M08_AXI_awaddr = m08_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M08_AXI_awprot = m08_couplers_to_axi_ic_cmc_local_AWPROT;
  assign M08_AXI_awvalid = m08_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_axi_ic_cmc_local_BREADY;
  assign M08_AXI_rready = m08_couplers_to_axi_ic_cmc_local_RREADY;
  assign M08_AXI_wdata = m08_couplers_to_axi_ic_cmc_local_WDATA;
  assign M08_AXI_wstrb = m08_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_axi_ic_cmc_local_WVALID;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M09_AXI_arvalid[0] = m09_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M09_AXI_awvalid[0] = m09_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M09_AXI_bready[0] = m09_couplers_to_axi_ic_cmc_local_BREADY;
  assign M09_AXI_rready[0] = m09_couplers_to_axi_ic_cmc_local_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_ic_cmc_local_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M09_AXI_wvalid[0] = m09_couplers_to_axi_ic_cmc_local_WVALID;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M10_AXI_arprot[2:0] = m10_couplers_to_axi_ic_cmc_local_ARPROT;
  assign M10_AXI_arvalid = m10_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M10_AXI_awprot[2:0] = m10_couplers_to_axi_ic_cmc_local_AWPROT;
  assign M10_AXI_awvalid = m10_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_axi_ic_cmc_local_BREADY;
  assign M10_AXI_rready = m10_couplers_to_axi_ic_cmc_local_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_ic_cmc_local_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_axi_ic_cmc_local_WVALID;
  assign M11_AXI_araddr[31:0] = m11_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M11_AXI_arvalid[0] = m11_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M11_AXI_awvalid[0] = m11_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M11_AXI_bready[0] = m11_couplers_to_axi_ic_cmc_local_BREADY;
  assign M11_AXI_rready[0] = m11_couplers_to_axi_ic_cmc_local_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_axi_ic_cmc_local_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M11_AXI_wvalid[0] = m11_couplers_to_axi_ic_cmc_local_WVALID;
  assign M12_AXI_araddr = m12_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M12_AXI_arprot = m12_couplers_to_axi_ic_cmc_local_ARPROT;
  assign M12_AXI_arvalid = m12_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M12_AXI_awaddr = m12_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M12_AXI_awprot = m12_couplers_to_axi_ic_cmc_local_AWPROT;
  assign M12_AXI_awvalid = m12_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_axi_ic_cmc_local_BREADY;
  assign M12_AXI_rready = m12_couplers_to_axi_ic_cmc_local_RREADY;
  assign M12_AXI_wdata = m12_couplers_to_axi_ic_cmc_local_WDATA;
  assign M12_AXI_wstrb = m12_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_axi_ic_cmc_local_WVALID;
  assign M13_AXI_araddr = m13_couplers_to_axi_ic_cmc_local_ARADDR;
  assign M13_AXI_arprot = m13_couplers_to_axi_ic_cmc_local_ARPROT;
  assign M13_AXI_arvalid = m13_couplers_to_axi_ic_cmc_local_ARVALID;
  assign M13_AXI_awaddr = m13_couplers_to_axi_ic_cmc_local_AWADDR;
  assign M13_AXI_awprot = m13_couplers_to_axi_ic_cmc_local_AWPROT;
  assign M13_AXI_awvalid = m13_couplers_to_axi_ic_cmc_local_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_axi_ic_cmc_local_BREADY;
  assign M13_AXI_rready = m13_couplers_to_axi_ic_cmc_local_RREADY;
  assign M13_AXI_wdata = m13_couplers_to_axi_ic_cmc_local_WDATA;
  assign M13_AXI_wstrb = m13_couplers_to_axi_ic_cmc_local_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_axi_ic_cmc_local_WVALID;
  assign S00_AXI_arready = axi_ic_cmc_local_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_ic_cmc_local_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_ic_cmc_local_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_ic_cmc_local_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_ic_cmc_local_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_ic_cmc_local_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_ic_cmc_local_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_ic_cmc_local_to_s00_couplers_WREADY;
  assign axi_ic_cmc_local_ACLK_net = ACLK;
  assign axi_ic_cmc_local_ARESETN_net = ARESETN;
  assign axi_ic_cmc_local_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_ic_cmc_local_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_cmc_local_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_ic_cmc_local_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_ic_cmc_local_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_ic_cmc_local_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_ic_cmc_local_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_ic_cmc_local_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_ic_cmc_local_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_ic_cmc_local_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_ic_cmc_local_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_ic_cmc_local_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_ic_cmc_local_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_ic_cmc_local_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_ic_cmc_local_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_ic_cmc_local_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_ic_cmc_local_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_ic_cmc_local_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_ic_cmc_local_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_ic_cmc_local_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_ic_cmc_local_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_ic_cmc_local_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_ic_cmc_local_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_ic_cmc_local_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_ic_cmc_local_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_ic_cmc_local_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_ic_cmc_local_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_ic_cmc_local_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_ic_cmc_local_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_ic_cmc_local_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_ic_cmc_local_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_ic_cmc_local_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_ic_cmc_local_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_ic_cmc_local_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_ic_cmc_local_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi_ic_cmc_local_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_ic_cmc_local_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_ic_cmc_local_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_ic_cmc_local_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_ic_cmc_local_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_ic_cmc_local_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_ic_cmc_local_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_ic_cmc_local_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_ic_cmc_local_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_ic_cmc_local_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_ic_cmc_local_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_ic_cmc_local_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_ic_cmc_local_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_ic_cmc_local_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_ic_cmc_local_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_ic_cmc_local_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi_ic_cmc_local_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi_ic_cmc_local_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi_ic_cmc_local_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_ic_cmc_local_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi_ic_cmc_local_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_ic_cmc_local_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_ic_cmc_local_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi_ic_cmc_local_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_axi_ic_cmc_local_ARREADY = M06_AXI_arready[0];
  assign m06_couplers_to_axi_ic_cmc_local_AWREADY = M06_AXI_awready[0];
  assign m06_couplers_to_axi_ic_cmc_local_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_ic_cmc_local_BVALID = M06_AXI_bvalid[0];
  assign m06_couplers_to_axi_ic_cmc_local_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_ic_cmc_local_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_ic_cmc_local_RVALID = M06_AXI_rvalid[0];
  assign m06_couplers_to_axi_ic_cmc_local_WREADY = M06_AXI_wready[0];
  assign m07_couplers_to_axi_ic_cmc_local_ARREADY = M07_AXI_arready[0];
  assign m07_couplers_to_axi_ic_cmc_local_AWREADY = M07_AXI_awready[0];
  assign m07_couplers_to_axi_ic_cmc_local_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_ic_cmc_local_BVALID = M07_AXI_bvalid[0];
  assign m07_couplers_to_axi_ic_cmc_local_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_ic_cmc_local_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_ic_cmc_local_RVALID = M07_AXI_rvalid[0];
  assign m07_couplers_to_axi_ic_cmc_local_WREADY = M07_AXI_wready[0];
  assign m08_couplers_to_axi_ic_cmc_local_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_axi_ic_cmc_local_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_axi_ic_cmc_local_BRESP = M08_AXI_bresp;
  assign m08_couplers_to_axi_ic_cmc_local_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_axi_ic_cmc_local_RDATA = M08_AXI_rdata;
  assign m08_couplers_to_axi_ic_cmc_local_RRESP = M08_AXI_rresp;
  assign m08_couplers_to_axi_ic_cmc_local_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_axi_ic_cmc_local_WREADY = M08_AXI_wready;
  assign m09_couplers_to_axi_ic_cmc_local_ARREADY = M09_AXI_arready[0];
  assign m09_couplers_to_axi_ic_cmc_local_AWREADY = M09_AXI_awready[0];
  assign m09_couplers_to_axi_ic_cmc_local_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_ic_cmc_local_BVALID = M09_AXI_bvalid[0];
  assign m09_couplers_to_axi_ic_cmc_local_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_ic_cmc_local_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_ic_cmc_local_RVALID = M09_AXI_rvalid[0];
  assign m09_couplers_to_axi_ic_cmc_local_WREADY = M09_AXI_wready[0];
  assign m10_couplers_to_axi_ic_cmc_local_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_axi_ic_cmc_local_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_axi_ic_cmc_local_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_ic_cmc_local_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_axi_ic_cmc_local_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_ic_cmc_local_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_ic_cmc_local_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_axi_ic_cmc_local_WREADY = M10_AXI_wready;
  assign m11_couplers_to_axi_ic_cmc_local_ARREADY = M11_AXI_arready[0];
  assign m11_couplers_to_axi_ic_cmc_local_AWREADY = M11_AXI_awready[0];
  assign m11_couplers_to_axi_ic_cmc_local_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_axi_ic_cmc_local_BVALID = M11_AXI_bvalid[0];
  assign m11_couplers_to_axi_ic_cmc_local_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_axi_ic_cmc_local_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_axi_ic_cmc_local_RVALID = M11_AXI_rvalid[0];
  assign m11_couplers_to_axi_ic_cmc_local_WREADY = M11_AXI_wready[0];
  assign m12_couplers_to_axi_ic_cmc_local_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_axi_ic_cmc_local_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_axi_ic_cmc_local_BRESP = M12_AXI_bresp;
  assign m12_couplers_to_axi_ic_cmc_local_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_axi_ic_cmc_local_RDATA = M12_AXI_rdata;
  assign m12_couplers_to_axi_ic_cmc_local_RRESP = M12_AXI_rresp;
  assign m12_couplers_to_axi_ic_cmc_local_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_axi_ic_cmc_local_WREADY = M12_AXI_wready;
  assign m13_couplers_to_axi_ic_cmc_local_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_axi_ic_cmc_local_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_axi_ic_cmc_local_BRESP = M13_AXI_bresp;
  assign m13_couplers_to_axi_ic_cmc_local_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_axi_ic_cmc_local_RDATA = M13_AXI_rdata;
  assign m13_couplers_to_axi_ic_cmc_local_RRESP = M13_AXI_rresp;
  assign m13_couplers_to_axi_ic_cmc_local_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_axi_ic_cmc_local_WREADY = M13_AXI_wready;
  m00_couplers_imp_C2B5WT m00_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1BYNG8E m01_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1YTVFCA m02_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_XJEYW9 m03_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_OJHH0I m04_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1Q3RACH m05_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_12XH6ED m06_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_3AY95Y m07_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m07_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1KZULGZ m08_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arprot(m08_couplers_to_axi_ic_cmc_local_ARPROT),
        .M_AXI_arready(m08_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awprot(m08_couplers_to_axi_ic_cmc_local_AWPROT),
        .M_AXI_awready(m08_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR[256]),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT[24]),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR[256]),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT[24]),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA[256]),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB[32]),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_KR5180 m09_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m09_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m09_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m09_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m09_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m09_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m09_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_1IFD1ZG m10_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m10_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arprot(m10_couplers_to_axi_ic_cmc_local_ARPROT),
        .M_AXI_arready(m10_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awprot(m10_couplers_to_axi_ic_cmc_local_AWPROT),
        .M_AXI_awready(m10_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m10_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m10_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_IQT3IN m11_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m11_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arready(m11_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awready(m11_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m11_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m11_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m11_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m11_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m11_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m11_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m11_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m11_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m11_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m11_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  m12_couplers_imp_4GMNWR m12_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m12_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arprot(m12_couplers_to_axi_ic_cmc_local_ARPROT),
        .M_AXI_arready(m12_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awprot(m12_couplers_to_axi_ic_cmc_local_AWPROT),
        .M_AXI_awready(m12_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m12_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m12_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m12_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m12_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m12_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m12_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m12_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m12_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m12_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m12_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m12_couplers_ARADDR[384]),
        .S_AXI_arprot(xbar_to_m12_couplers_ARPROT[36]),
        .S_AXI_arready(xbar_to_m12_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m12_couplers_AWADDR[384]),
        .S_AXI_awprot(xbar_to_m12_couplers_AWPROT[36]),
        .S_AXI_awready(xbar_to_m12_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m12_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m12_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m12_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m12_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m12_couplers_RDATA),
        .S_AXI_rready(xbar_to_m12_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m12_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m12_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m12_couplers_WDATA[384]),
        .S_AXI_wready(xbar_to_m12_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m12_couplers_WSTRB[48]),
        .S_AXI_wvalid(xbar_to_m12_couplers_WVALID));
  m13_couplers_imp_1638RT4 m13_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(m13_couplers_to_axi_ic_cmc_local_ARADDR),
        .M_AXI_arprot(m13_couplers_to_axi_ic_cmc_local_ARPROT),
        .M_AXI_arready(m13_couplers_to_axi_ic_cmc_local_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_axi_ic_cmc_local_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_axi_ic_cmc_local_AWADDR),
        .M_AXI_awprot(m13_couplers_to_axi_ic_cmc_local_AWPROT),
        .M_AXI_awready(m13_couplers_to_axi_ic_cmc_local_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_axi_ic_cmc_local_AWVALID),
        .M_AXI_bready(m13_couplers_to_axi_ic_cmc_local_BREADY),
        .M_AXI_bresp(m13_couplers_to_axi_ic_cmc_local_BRESP),
        .M_AXI_bvalid(m13_couplers_to_axi_ic_cmc_local_BVALID),
        .M_AXI_rdata(m13_couplers_to_axi_ic_cmc_local_RDATA),
        .M_AXI_rready(m13_couplers_to_axi_ic_cmc_local_RREADY),
        .M_AXI_rresp(m13_couplers_to_axi_ic_cmc_local_RRESP),
        .M_AXI_rvalid(m13_couplers_to_axi_ic_cmc_local_RVALID),
        .M_AXI_wdata(m13_couplers_to_axi_ic_cmc_local_WDATA),
        .M_AXI_wready(m13_couplers_to_axi_ic_cmc_local_WREADY),
        .M_AXI_wstrb(m13_couplers_to_axi_ic_cmc_local_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_axi_ic_cmc_local_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(xbar_to_m13_couplers_ARADDR[416]),
        .S_AXI_arprot(xbar_to_m13_couplers_ARPROT[39]),
        .S_AXI_arready(xbar_to_m13_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m13_couplers_AWADDR[416]),
        .S_AXI_awprot(xbar_to_m13_couplers_AWPROT[39]),
        .S_AXI_awready(xbar_to_m13_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m13_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m13_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m13_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m13_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m13_couplers_RDATA),
        .S_AXI_rready(xbar_to_m13_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m13_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m13_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m13_couplers_WDATA[416]),
        .S_AXI_wready(xbar_to_m13_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m13_couplers_WSTRB[52]),
        .S_AXI_wvalid(xbar_to_m13_couplers_WVALID));
  s00_couplers_imp_1BSS6R5 s00_couplers
       (.M_ACLK(axi_ic_cmc_local_ACLK_net),
        .M_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_cmc_local_ACLK_net),
        .S_ARESETN(axi_ic_cmc_local_ARESETN_net),
        .S_AXI_araddr(axi_ic_cmc_local_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_ic_cmc_local_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_ic_cmc_local_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_ic_cmc_local_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_cmc_local_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_ic_cmc_local_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_ic_cmc_local_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_ic_cmc_local_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_ic_cmc_local_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_ic_cmc_local_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_cmc_local_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_ic_cmc_local_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_ic_cmc_local_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_cmc_local_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_cmc_local_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_ic_cmc_local_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_ic_cmc_local_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_cmc_local_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_cmc_local_to_s00_couplers_WVALID));
  bd_deec_xbar_0 xbar
       (.aclk(axi_ic_cmc_local_ACLK_net),
        .aresetn(axi_ic_cmc_local_ARESETN_net),
        .m_axi_araddr({xbar_to_m13_couplers_ARADDR,xbar_to_m12_couplers_ARADDR,xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m13_couplers_ARPROT,xbar_to_m12_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[35:33],xbar_to_m10_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[29:27],xbar_to_m08_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[23:0]}),
        .m_axi_arready({xbar_to_m13_couplers_ARREADY,xbar_to_m12_couplers_ARREADY,xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m13_couplers_ARVALID,xbar_to_m12_couplers_ARVALID,xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m13_couplers_AWADDR,xbar_to_m12_couplers_AWADDR,xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m13_couplers_AWPROT,xbar_to_m12_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[35:33],xbar_to_m10_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[29:27],xbar_to_m08_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[23:0]}),
        .m_axi_awready({xbar_to_m13_couplers_AWREADY,xbar_to_m12_couplers_AWREADY,xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m13_couplers_AWVALID,xbar_to_m12_couplers_AWVALID,xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m13_couplers_BREADY,xbar_to_m12_couplers_BREADY,xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m13_couplers_BRESP,xbar_to_m13_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m13_couplers_BVALID,xbar_to_m12_couplers_BVALID,xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m13_couplers_RREADY,xbar_to_m12_couplers_RREADY,xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m13_couplers_RRESP,xbar_to_m13_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m13_couplers_RVALID,xbar_to_m12_couplers_RVALID,xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m13_couplers_WDATA,xbar_to_m12_couplers_WDATA,xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m13_couplers_WREADY,xbar_to_m12_couplers_WREADY,xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m13_couplers_WSTRB,xbar_to_m12_couplers_WSTRB,xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m13_couplers_WVALID,xbar_to_m12_couplers_WVALID,xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module bd_deec_axi_ic_mgmt_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [17:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [17:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [17:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [17:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [17:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [17:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [17:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [17:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [17:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [17:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [17:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [17:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi_ic_mgmt_ACLK_net;
  wire axi_ic_mgmt_ARESETN_net;
  wire [17:0]axi_ic_mgmt_to_s00_couplers_ARADDR;
  wire [2:0]axi_ic_mgmt_to_s00_couplers_ARPROT;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_ARREADY;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_ARVALID;
  wire [17:0]axi_ic_mgmt_to_s00_couplers_AWADDR;
  wire [2:0]axi_ic_mgmt_to_s00_couplers_AWPROT;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_AWREADY;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_AWVALID;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_BREADY;
  wire [1:0]axi_ic_mgmt_to_s00_couplers_BRESP;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_BVALID;
  wire [31:0]axi_ic_mgmt_to_s00_couplers_RDATA;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_RREADY;
  wire [1:0]axi_ic_mgmt_to_s00_couplers_RRESP;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_RVALID;
  wire [31:0]axi_ic_mgmt_to_s00_couplers_WDATA;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_WREADY;
  wire [3:0]axi_ic_mgmt_to_s00_couplers_WSTRB;
  wire [0:0]axi_ic_mgmt_to_s00_couplers_WVALID;
  wire [17:0]m00_couplers_to_axi_ic_mgmt_ARADDR;
  wire [2:0]m00_couplers_to_axi_ic_mgmt_ARPROT;
  wire m00_couplers_to_axi_ic_mgmt_ARREADY;
  wire m00_couplers_to_axi_ic_mgmt_ARVALID;
  wire [17:0]m00_couplers_to_axi_ic_mgmt_AWADDR;
  wire [2:0]m00_couplers_to_axi_ic_mgmt_AWPROT;
  wire m00_couplers_to_axi_ic_mgmt_AWREADY;
  wire m00_couplers_to_axi_ic_mgmt_AWVALID;
  wire m00_couplers_to_axi_ic_mgmt_BREADY;
  wire [1:0]m00_couplers_to_axi_ic_mgmt_BRESP;
  wire m00_couplers_to_axi_ic_mgmt_BVALID;
  wire [31:0]m00_couplers_to_axi_ic_mgmt_RDATA;
  wire m00_couplers_to_axi_ic_mgmt_RREADY;
  wire [1:0]m00_couplers_to_axi_ic_mgmt_RRESP;
  wire m00_couplers_to_axi_ic_mgmt_RVALID;
  wire [31:0]m00_couplers_to_axi_ic_mgmt_WDATA;
  wire m00_couplers_to_axi_ic_mgmt_WREADY;
  wire [3:0]m00_couplers_to_axi_ic_mgmt_WSTRB;
  wire m00_couplers_to_axi_ic_mgmt_WVALID;
  wire [17:0]m01_couplers_to_axi_ic_mgmt_ARADDR;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_ARREADY;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_ARVALID;
  wire [17:0]m01_couplers_to_axi_ic_mgmt_AWADDR;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_AWREADY;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_AWVALID;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_BREADY;
  wire [1:0]m01_couplers_to_axi_ic_mgmt_BRESP;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_BVALID;
  wire [31:0]m01_couplers_to_axi_ic_mgmt_RDATA;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_RREADY;
  wire [1:0]m01_couplers_to_axi_ic_mgmt_RRESP;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_RVALID;
  wire [31:0]m01_couplers_to_axi_ic_mgmt_WDATA;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_WREADY;
  wire [3:0]m01_couplers_to_axi_ic_mgmt_WSTRB;
  wire [0:0]m01_couplers_to_axi_ic_mgmt_WVALID;
  wire [17:0]m02_couplers_to_axi_ic_mgmt_ARADDR;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_ARREADY;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_ARVALID;
  wire [17:0]m02_couplers_to_axi_ic_mgmt_AWADDR;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_AWREADY;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_AWVALID;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_BREADY;
  wire [1:0]m02_couplers_to_axi_ic_mgmt_BRESP;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_BVALID;
  wire [31:0]m02_couplers_to_axi_ic_mgmt_RDATA;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_RREADY;
  wire [1:0]m02_couplers_to_axi_ic_mgmt_RRESP;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_RVALID;
  wire [31:0]m02_couplers_to_axi_ic_mgmt_WDATA;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_WREADY;
  wire [3:0]m02_couplers_to_axi_ic_mgmt_WSTRB;
  wire [0:0]m02_couplers_to_axi_ic_mgmt_WVALID;
  wire [17:0]m03_couplers_to_axi_ic_mgmt_ARADDR;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_ARREADY;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_ARVALID;
  wire [17:0]m03_couplers_to_axi_ic_mgmt_AWADDR;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_AWREADY;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_AWVALID;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_BREADY;
  wire [1:0]m03_couplers_to_axi_ic_mgmt_BRESP;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_BVALID;
  wire [31:0]m03_couplers_to_axi_ic_mgmt_RDATA;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_RREADY;
  wire [1:0]m03_couplers_to_axi_ic_mgmt_RRESP;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_RVALID;
  wire [31:0]m03_couplers_to_axi_ic_mgmt_WDATA;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_WREADY;
  wire [3:0]m03_couplers_to_axi_ic_mgmt_WSTRB;
  wire [0:0]m03_couplers_to_axi_ic_mgmt_WVALID;
  wire [17:0]m04_couplers_to_axi_ic_mgmt_ARADDR;
  wire [2:0]m04_couplers_to_axi_ic_mgmt_ARPROT;
  wire m04_couplers_to_axi_ic_mgmt_ARREADY;
  wire m04_couplers_to_axi_ic_mgmt_ARVALID;
  wire [17:0]m04_couplers_to_axi_ic_mgmt_AWADDR;
  wire [2:0]m04_couplers_to_axi_ic_mgmt_AWPROT;
  wire m04_couplers_to_axi_ic_mgmt_AWREADY;
  wire m04_couplers_to_axi_ic_mgmt_AWVALID;
  wire m04_couplers_to_axi_ic_mgmt_BREADY;
  wire [1:0]m04_couplers_to_axi_ic_mgmt_BRESP;
  wire m04_couplers_to_axi_ic_mgmt_BVALID;
  wire [31:0]m04_couplers_to_axi_ic_mgmt_RDATA;
  wire m04_couplers_to_axi_ic_mgmt_RREADY;
  wire [1:0]m04_couplers_to_axi_ic_mgmt_RRESP;
  wire m04_couplers_to_axi_ic_mgmt_RVALID;
  wire [31:0]m04_couplers_to_axi_ic_mgmt_WDATA;
  wire m04_couplers_to_axi_ic_mgmt_WREADY;
  wire [3:0]m04_couplers_to_axi_ic_mgmt_WSTRB;
  wire m04_couplers_to_axi_ic_mgmt_WVALID;
  wire [17:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [17:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [17:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [17:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [35:18]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [35:18]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [53:36]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [53:36]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [71:54]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [71:54]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [89:72]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [89:72]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [14:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [14:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[17:0] = m00_couplers_to_axi_ic_mgmt_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_ic_mgmt_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_axi_ic_mgmt_ARVALID;
  assign M00_AXI_awaddr[17:0] = m00_couplers_to_axi_ic_mgmt_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_ic_mgmt_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_axi_ic_mgmt_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_ic_mgmt_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_ic_mgmt_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_ic_mgmt_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_ic_mgmt_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_ic_mgmt_WVALID;
  assign M01_AXI_araddr[17:0] = m01_couplers_to_axi_ic_mgmt_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_ic_mgmt_ARVALID;
  assign M01_AXI_awaddr[17:0] = m01_couplers_to_axi_ic_mgmt_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_ic_mgmt_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_ic_mgmt_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_ic_mgmt_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_ic_mgmt_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_ic_mgmt_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_ic_mgmt_WVALID;
  assign M02_AXI_araddr[17:0] = m02_couplers_to_axi_ic_mgmt_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_ic_mgmt_ARVALID;
  assign M02_AXI_awaddr[17:0] = m02_couplers_to_axi_ic_mgmt_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_ic_mgmt_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_ic_mgmt_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_ic_mgmt_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_ic_mgmt_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_ic_mgmt_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_ic_mgmt_WVALID;
  assign M03_AXI_araddr[17:0] = m03_couplers_to_axi_ic_mgmt_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_ic_mgmt_ARVALID;
  assign M03_AXI_awaddr[17:0] = m03_couplers_to_axi_ic_mgmt_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_ic_mgmt_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_ic_mgmt_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_ic_mgmt_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_ic_mgmt_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_ic_mgmt_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_ic_mgmt_WVALID;
  assign M04_AXI_araddr[17:0] = m04_couplers_to_axi_ic_mgmt_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_ic_mgmt_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_axi_ic_mgmt_ARVALID;
  assign M04_AXI_awaddr[17:0] = m04_couplers_to_axi_ic_mgmt_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_ic_mgmt_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_axi_ic_mgmt_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_ic_mgmt_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_ic_mgmt_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_ic_mgmt_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_ic_mgmt_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_ic_mgmt_WVALID;
  assign S00_AXI_arready[0] = axi_ic_mgmt_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_ic_mgmt_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_ic_mgmt_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_ic_mgmt_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_ic_mgmt_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_ic_mgmt_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_ic_mgmt_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_ic_mgmt_to_s00_couplers_WREADY;
  assign axi_ic_mgmt_ACLK_net = ACLK;
  assign axi_ic_mgmt_ARESETN_net = ARESETN;
  assign axi_ic_mgmt_to_s00_couplers_ARADDR = S00_AXI_araddr[17:0];
  assign axi_ic_mgmt_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_ic_mgmt_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_ic_mgmt_to_s00_couplers_AWADDR = S00_AXI_awaddr[17:0];
  assign axi_ic_mgmt_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_ic_mgmt_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_ic_mgmt_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_ic_mgmt_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_ic_mgmt_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_ic_mgmt_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_ic_mgmt_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_ic_mgmt_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_ic_mgmt_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_ic_mgmt_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_ic_mgmt_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_ic_mgmt_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_ic_mgmt_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_ic_mgmt_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_ic_mgmt_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_ic_mgmt_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_ic_mgmt_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_ic_mgmt_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_ic_mgmt_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_ic_mgmt_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_ic_mgmt_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_ic_mgmt_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_ic_mgmt_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_ic_mgmt_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_ic_mgmt_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_ic_mgmt_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_ic_mgmt_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_ic_mgmt_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_ic_mgmt_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_ic_mgmt_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_ic_mgmt_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi_ic_mgmt_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_ic_mgmt_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_ic_mgmt_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_ic_mgmt_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_ic_mgmt_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_ic_mgmt_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_ic_mgmt_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_ic_mgmt_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_ic_mgmt_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_ic_mgmt_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_ic_mgmt_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_ic_mgmt_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_ic_mgmt_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_ic_mgmt_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_ic_mgmt_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_ic_mgmt_WREADY = M04_AXI_wready;
  m00_couplers_imp_QOVREO m00_couplers
       (.M_ACLK(axi_ic_mgmt_ACLK_net),
        .M_ARESETN(axi_ic_mgmt_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_ic_mgmt_ARADDR),
        .M_AXI_arprot(m00_couplers_to_axi_ic_mgmt_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_ic_mgmt_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_ic_mgmt_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_ic_mgmt_AWADDR),
        .M_AXI_awprot(m00_couplers_to_axi_ic_mgmt_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_ic_mgmt_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_ic_mgmt_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_ic_mgmt_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_ic_mgmt_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_ic_mgmt_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_ic_mgmt_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_ic_mgmt_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_ic_mgmt_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_ic_mgmt_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_ic_mgmt_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_ic_mgmt_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_ic_mgmt_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_ic_mgmt_WVALID),
        .S_ACLK(axi_ic_mgmt_ACLK_net),
        .S_ARESETN(axi_ic_mgmt_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1S96XFN m01_couplers
       (.M_ACLK(axi_ic_mgmt_ACLK_net),
        .M_ARESETN(axi_ic_mgmt_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_ic_mgmt_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_ic_mgmt_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_ic_mgmt_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_ic_mgmt_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_ic_mgmt_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_ic_mgmt_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_ic_mgmt_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_ic_mgmt_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_ic_mgmt_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_ic_mgmt_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_ic_mgmt_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_ic_mgmt_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_ic_mgmt_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_ic_mgmt_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_ic_mgmt_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_ic_mgmt_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_ic_mgmt_WVALID),
        .S_ACLK(axi_ic_mgmt_ACLK_net),
        .S_ARESETN(axi_ic_mgmt_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1DYJP6V m02_couplers
       (.M_ACLK(axi_ic_mgmt_ACLK_net),
        .M_ARESETN(axi_ic_mgmt_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_ic_mgmt_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_ic_mgmt_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_ic_mgmt_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_ic_mgmt_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_ic_mgmt_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_ic_mgmt_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_ic_mgmt_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_ic_mgmt_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_ic_mgmt_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_ic_mgmt_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_ic_mgmt_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_ic_mgmt_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_ic_mgmt_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_ic_mgmt_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_ic_mgmt_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_ic_mgmt_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_ic_mgmt_WVALID),
        .S_ACLK(axi_ic_mgmt_ACLK_net),
        .S_ARESETN(axi_ic_mgmt_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_EBZBB8 m03_couplers
       (.M_ACLK(axi_ic_mgmt_ACLK_net),
        .M_ARESETN(axi_ic_mgmt_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_ic_mgmt_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_ic_mgmt_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_ic_mgmt_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_ic_mgmt_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_ic_mgmt_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_ic_mgmt_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_ic_mgmt_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_ic_mgmt_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_ic_mgmt_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_ic_mgmt_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_ic_mgmt_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_ic_mgmt_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_ic_mgmt_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_ic_mgmt_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_ic_mgmt_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_ic_mgmt_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_ic_mgmt_WVALID),
        .S_ACLK(axi_ic_mgmt_ACLK_net),
        .S_ARESETN(axi_ic_mgmt_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_5C2FKF m04_couplers
       (.M_ACLK(axi_ic_mgmt_ACLK_net),
        .M_ARESETN(axi_ic_mgmt_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_ic_mgmt_ARADDR),
        .M_AXI_arprot(m04_couplers_to_axi_ic_mgmt_ARPROT),
        .M_AXI_arready(m04_couplers_to_axi_ic_mgmt_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_ic_mgmt_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_ic_mgmt_AWADDR),
        .M_AXI_awprot(m04_couplers_to_axi_ic_mgmt_AWPROT),
        .M_AXI_awready(m04_couplers_to_axi_ic_mgmt_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_ic_mgmt_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_ic_mgmt_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_ic_mgmt_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_ic_mgmt_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_ic_mgmt_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_ic_mgmt_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_ic_mgmt_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_ic_mgmt_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_ic_mgmt_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_ic_mgmt_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_ic_mgmt_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_ic_mgmt_WVALID),
        .S_ACLK(axi_ic_mgmt_ACLK_net),
        .S_ARESETN(axi_ic_mgmt_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_1S3X34S s00_couplers
       (.M_ACLK(axi_ic_mgmt_ACLK_net),
        .M_ARESETN(axi_ic_mgmt_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_ic_mgmt_ACLK_net),
        .S_ARESETN(axi_ic_mgmt_ARESETN_net),
        .S_AXI_araddr(axi_ic_mgmt_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_ic_mgmt_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_ic_mgmt_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_ic_mgmt_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_ic_mgmt_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_ic_mgmt_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_ic_mgmt_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_ic_mgmt_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_ic_mgmt_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_ic_mgmt_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_ic_mgmt_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_ic_mgmt_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_ic_mgmt_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_ic_mgmt_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_ic_mgmt_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_ic_mgmt_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_ic_mgmt_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_ic_mgmt_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_ic_mgmt_to_s00_couplers_WVALID));
  bd_deec_xbar_1 xbar
       (.aclk(axi_ic_mgmt_ACLK_net),
        .aresetn(axi_ic_mgmt_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m04_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[11:3],xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m04_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[11:3],xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_C2B5WT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_QOVREO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [17:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [17:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [17:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [17:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[17:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[17:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[17:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1BYNG8E
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1S96XFN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [17:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [17:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [17:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [17:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[17:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[17:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[17:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_1DYJP6V
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [17:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [17:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [17:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [17:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[17:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[17:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[17:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_1YTVFCA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_EBZBB8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [17:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [17:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [17:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [17:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[17:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[17:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[17:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_XJEYW9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_5C2FKF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [17:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [17:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [17:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [17:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[17:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[17:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[17:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_OJHH0I
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_1Q3RACH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_12XH6ED
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [0:0]m06_couplers_to_m06_couplers_ARREADY;
  wire [0:0]m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [0:0]m06_couplers_to_m06_couplers_AWREADY;
  wire [0:0]m06_couplers_to_m06_couplers_AWVALID;
  wire [0:0]m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire [0:0]m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire [0:0]m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire [0:0]m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire [0:0]m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire [0:0]m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready[0] = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready[0] = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready[0] = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready[0] = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid[0] = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid[0] = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready[0] = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready[0];
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid[0];
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready[0];
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid[0];
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready[0];
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid[0];
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready[0];
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid[0];
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready[0];
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m07_couplers_imp_3AY95Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [0:0]m07_couplers_to_m07_couplers_ARREADY;
  wire [0:0]m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [0:0]m07_couplers_to_m07_couplers_AWREADY;
  wire [0:0]m07_couplers_to_m07_couplers_AWVALID;
  wire [0:0]m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire [0:0]m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire [0:0]m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire [0:0]m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire [0:0]m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire [0:0]m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready[0] = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready[0] = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready[0] = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready[0] = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid[0] = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid[0] = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready[0] = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready[0];
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid[0];
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready[0];
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid[0];
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready[0];
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid[0];
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready[0];
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid[0];
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready[0];
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m08_couplers_imp_1KZULGZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m08_couplers_to_m08_couplers_ARADDR;
  wire m08_couplers_to_m08_couplers_ARPROT;
  wire m08_couplers_to_m08_couplers_ARREADY;
  wire m08_couplers_to_m08_couplers_ARVALID;
  wire m08_couplers_to_m08_couplers_AWADDR;
  wire m08_couplers_to_m08_couplers_AWPROT;
  wire m08_couplers_to_m08_couplers_AWREADY;
  wire m08_couplers_to_m08_couplers_AWVALID;
  wire m08_couplers_to_m08_couplers_BREADY;
  wire m08_couplers_to_m08_couplers_BRESP;
  wire m08_couplers_to_m08_couplers_BVALID;
  wire m08_couplers_to_m08_couplers_RDATA;
  wire m08_couplers_to_m08_couplers_RREADY;
  wire m08_couplers_to_m08_couplers_RRESP;
  wire m08_couplers_to_m08_couplers_RVALID;
  wire m08_couplers_to_m08_couplers_WDATA;
  wire m08_couplers_to_m08_couplers_WREADY;
  wire m08_couplers_to_m08_couplers_WSTRB;
  wire m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arprot = m08_couplers_to_m08_couplers_ARPROT;
  assign M_AXI_arvalid = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awprot = m08_couplers_to_m08_couplers_AWPROT;
  assign M_AXI_awvalid = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr;
  assign m08_couplers_to_m08_couplers_ARPROT = S_AXI_arprot;
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready;
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr;
  assign m08_couplers_to_m08_couplers_AWPROT = S_AXI_awprot;
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready;
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready;
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp;
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata;
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready;
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp;
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata;
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb;
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid;
endmodule

module m09_couplers_imp_KR5180
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m09_couplers_to_m09_couplers_ARADDR;
  wire [0:0]m09_couplers_to_m09_couplers_ARREADY;
  wire [0:0]m09_couplers_to_m09_couplers_ARVALID;
  wire [31:0]m09_couplers_to_m09_couplers_AWADDR;
  wire [0:0]m09_couplers_to_m09_couplers_AWREADY;
  wire [0:0]m09_couplers_to_m09_couplers_AWVALID;
  wire [0:0]m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire [0:0]m09_couplers_to_m09_couplers_BVALID;
  wire [31:0]m09_couplers_to_m09_couplers_RDATA;
  wire [0:0]m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire [0:0]m09_couplers_to_m09_couplers_RVALID;
  wire [31:0]m09_couplers_to_m09_couplers_WDATA;
  wire [0:0]m09_couplers_to_m09_couplers_WREADY;
  wire [3:0]m09_couplers_to_m09_couplers_WSTRB;
  wire [0:0]m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready[0] = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready[0] = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready[0] = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready[0] = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid[0] = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid[0] = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready[0] = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready[0];
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid[0];
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready[0];
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid[0];
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready[0];
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid[0];
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready[0];
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid[0];
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready[0];
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m10_couplers_imp_1IFD1ZG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m10_couplers_to_m10_couplers_ARADDR;
  wire [2:0]m10_couplers_to_m10_couplers_ARPROT;
  wire m10_couplers_to_m10_couplers_ARREADY;
  wire m10_couplers_to_m10_couplers_ARVALID;
  wire [31:0]m10_couplers_to_m10_couplers_AWADDR;
  wire [2:0]m10_couplers_to_m10_couplers_AWPROT;
  wire m10_couplers_to_m10_couplers_AWREADY;
  wire m10_couplers_to_m10_couplers_AWVALID;
  wire m10_couplers_to_m10_couplers_BREADY;
  wire [1:0]m10_couplers_to_m10_couplers_BRESP;
  wire m10_couplers_to_m10_couplers_BVALID;
  wire [31:0]m10_couplers_to_m10_couplers_RDATA;
  wire m10_couplers_to_m10_couplers_RREADY;
  wire [1:0]m10_couplers_to_m10_couplers_RRESP;
  wire m10_couplers_to_m10_couplers_RVALID;
  wire [31:0]m10_couplers_to_m10_couplers_WDATA;
  wire m10_couplers_to_m10_couplers_WREADY;
  wire [3:0]m10_couplers_to_m10_couplers_WSTRB;
  wire m10_couplers_to_m10_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m10_couplers_to_m10_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m10_couplers_to_m10_couplers_ARPROT;
  assign M_AXI_arvalid = m10_couplers_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m10_couplers_to_m10_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m10_couplers_to_m10_couplers_AWPROT;
  assign M_AXI_awvalid = m10_couplers_to_m10_couplers_AWVALID;
  assign M_AXI_bready = m10_couplers_to_m10_couplers_BREADY;
  assign M_AXI_rready = m10_couplers_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m10_couplers_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m10_couplers_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = m10_couplers_to_m10_couplers_WVALID;
  assign S_AXI_arready = m10_couplers_to_m10_couplers_ARREADY;
  assign S_AXI_awready = m10_couplers_to_m10_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_m10_couplers_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_m10_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_m10_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_m10_couplers_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_m10_couplers_RVALID;
  assign S_AXI_wready = m10_couplers_to_m10_couplers_WREADY;
  assign m10_couplers_to_m10_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_m10_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_m10_couplers_ARREADY = M_AXI_arready;
  assign m10_couplers_to_m10_couplers_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_m10_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_m10_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_m10_couplers_AWREADY = M_AXI_awready;
  assign m10_couplers_to_m10_couplers_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_m10_couplers_BREADY = S_AXI_bready;
  assign m10_couplers_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign m10_couplers_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign m10_couplers_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign m10_couplers_to_m10_couplers_RREADY = S_AXI_rready;
  assign m10_couplers_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign m10_couplers_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign m10_couplers_to_m10_couplers_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_m10_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_m10_couplers_WVALID = S_AXI_wvalid;
endmodule

module m11_couplers_imp_IQT3IN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m11_couplers_to_m11_couplers_ARADDR;
  wire [0:0]m11_couplers_to_m11_couplers_ARREADY;
  wire [0:0]m11_couplers_to_m11_couplers_ARVALID;
  wire [31:0]m11_couplers_to_m11_couplers_AWADDR;
  wire [0:0]m11_couplers_to_m11_couplers_AWREADY;
  wire [0:0]m11_couplers_to_m11_couplers_AWVALID;
  wire [0:0]m11_couplers_to_m11_couplers_BREADY;
  wire [1:0]m11_couplers_to_m11_couplers_BRESP;
  wire [0:0]m11_couplers_to_m11_couplers_BVALID;
  wire [31:0]m11_couplers_to_m11_couplers_RDATA;
  wire [0:0]m11_couplers_to_m11_couplers_RREADY;
  wire [1:0]m11_couplers_to_m11_couplers_RRESP;
  wire [0:0]m11_couplers_to_m11_couplers_RVALID;
  wire [31:0]m11_couplers_to_m11_couplers_WDATA;
  wire [0:0]m11_couplers_to_m11_couplers_WREADY;
  wire [3:0]m11_couplers_to_m11_couplers_WSTRB;
  wire [0:0]m11_couplers_to_m11_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m11_couplers_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m11_couplers_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m11_couplers_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m11_couplers_to_m11_couplers_AWVALID;
  assign M_AXI_bready[0] = m11_couplers_to_m11_couplers_BREADY;
  assign M_AXI_rready[0] = m11_couplers_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m11_couplers_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m11_couplers_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m11_couplers_to_m11_couplers_WVALID;
  assign S_AXI_arready[0] = m11_couplers_to_m11_couplers_ARREADY;
  assign S_AXI_awready[0] = m11_couplers_to_m11_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m11_couplers_to_m11_couplers_BRESP;
  assign S_AXI_bvalid[0] = m11_couplers_to_m11_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_m11_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m11_couplers_to_m11_couplers_RRESP;
  assign S_AXI_rvalid[0] = m11_couplers_to_m11_couplers_RVALID;
  assign S_AXI_wready[0] = m11_couplers_to_m11_couplers_WREADY;
  assign m11_couplers_to_m11_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_m11_couplers_ARREADY = M_AXI_arready[0];
  assign m11_couplers_to_m11_couplers_ARVALID = S_AXI_arvalid[0];
  assign m11_couplers_to_m11_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_m11_couplers_AWREADY = M_AXI_awready[0];
  assign m11_couplers_to_m11_couplers_AWVALID = S_AXI_awvalid[0];
  assign m11_couplers_to_m11_couplers_BREADY = S_AXI_bready[0];
  assign m11_couplers_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign m11_couplers_to_m11_couplers_BVALID = M_AXI_bvalid[0];
  assign m11_couplers_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign m11_couplers_to_m11_couplers_RREADY = S_AXI_rready[0];
  assign m11_couplers_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign m11_couplers_to_m11_couplers_RVALID = M_AXI_rvalid[0];
  assign m11_couplers_to_m11_couplers_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_m11_couplers_WREADY = M_AXI_wready[0];
  assign m11_couplers_to_m11_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_m11_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m12_couplers_imp_4GMNWR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m12_couplers_to_m12_couplers_ARADDR;
  wire m12_couplers_to_m12_couplers_ARPROT;
  wire m12_couplers_to_m12_couplers_ARREADY;
  wire m12_couplers_to_m12_couplers_ARVALID;
  wire m12_couplers_to_m12_couplers_AWADDR;
  wire m12_couplers_to_m12_couplers_AWPROT;
  wire m12_couplers_to_m12_couplers_AWREADY;
  wire m12_couplers_to_m12_couplers_AWVALID;
  wire m12_couplers_to_m12_couplers_BREADY;
  wire m12_couplers_to_m12_couplers_BRESP;
  wire m12_couplers_to_m12_couplers_BVALID;
  wire m12_couplers_to_m12_couplers_RDATA;
  wire m12_couplers_to_m12_couplers_RREADY;
  wire m12_couplers_to_m12_couplers_RRESP;
  wire m12_couplers_to_m12_couplers_RVALID;
  wire m12_couplers_to_m12_couplers_WDATA;
  wire m12_couplers_to_m12_couplers_WREADY;
  wire m12_couplers_to_m12_couplers_WSTRB;
  wire m12_couplers_to_m12_couplers_WVALID;

  assign M_AXI_araddr = m12_couplers_to_m12_couplers_ARADDR;
  assign M_AXI_arprot = m12_couplers_to_m12_couplers_ARPROT;
  assign M_AXI_arvalid = m12_couplers_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr = m12_couplers_to_m12_couplers_AWADDR;
  assign M_AXI_awprot = m12_couplers_to_m12_couplers_AWPROT;
  assign M_AXI_awvalid = m12_couplers_to_m12_couplers_AWVALID;
  assign M_AXI_bready = m12_couplers_to_m12_couplers_BREADY;
  assign M_AXI_rready = m12_couplers_to_m12_couplers_RREADY;
  assign M_AXI_wdata = m12_couplers_to_m12_couplers_WDATA;
  assign M_AXI_wstrb = m12_couplers_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = m12_couplers_to_m12_couplers_WVALID;
  assign S_AXI_arready = m12_couplers_to_m12_couplers_ARREADY;
  assign S_AXI_awready = m12_couplers_to_m12_couplers_AWREADY;
  assign S_AXI_bresp = m12_couplers_to_m12_couplers_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_m12_couplers_BVALID;
  assign S_AXI_rdata = m12_couplers_to_m12_couplers_RDATA;
  assign S_AXI_rresp = m12_couplers_to_m12_couplers_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_m12_couplers_RVALID;
  assign S_AXI_wready = m12_couplers_to_m12_couplers_WREADY;
  assign m12_couplers_to_m12_couplers_ARADDR = S_AXI_araddr;
  assign m12_couplers_to_m12_couplers_ARPROT = S_AXI_arprot;
  assign m12_couplers_to_m12_couplers_ARREADY = M_AXI_arready;
  assign m12_couplers_to_m12_couplers_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_m12_couplers_AWADDR = S_AXI_awaddr;
  assign m12_couplers_to_m12_couplers_AWPROT = S_AXI_awprot;
  assign m12_couplers_to_m12_couplers_AWREADY = M_AXI_awready;
  assign m12_couplers_to_m12_couplers_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_m12_couplers_BREADY = S_AXI_bready;
  assign m12_couplers_to_m12_couplers_BRESP = M_AXI_bresp;
  assign m12_couplers_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign m12_couplers_to_m12_couplers_RDATA = M_AXI_rdata;
  assign m12_couplers_to_m12_couplers_RREADY = S_AXI_rready;
  assign m12_couplers_to_m12_couplers_RRESP = M_AXI_rresp;
  assign m12_couplers_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign m12_couplers_to_m12_couplers_WDATA = S_AXI_wdata;
  assign m12_couplers_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_m12_couplers_WSTRB = S_AXI_wstrb;
  assign m12_couplers_to_m12_couplers_WVALID = S_AXI_wvalid;
endmodule

module m13_couplers_imp_1638RT4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m13_couplers_to_m13_couplers_ARADDR;
  wire m13_couplers_to_m13_couplers_ARPROT;
  wire m13_couplers_to_m13_couplers_ARREADY;
  wire m13_couplers_to_m13_couplers_ARVALID;
  wire m13_couplers_to_m13_couplers_AWADDR;
  wire m13_couplers_to_m13_couplers_AWPROT;
  wire m13_couplers_to_m13_couplers_AWREADY;
  wire m13_couplers_to_m13_couplers_AWVALID;
  wire m13_couplers_to_m13_couplers_BREADY;
  wire m13_couplers_to_m13_couplers_BRESP;
  wire m13_couplers_to_m13_couplers_BVALID;
  wire m13_couplers_to_m13_couplers_RDATA;
  wire m13_couplers_to_m13_couplers_RREADY;
  wire m13_couplers_to_m13_couplers_RRESP;
  wire m13_couplers_to_m13_couplers_RVALID;
  wire m13_couplers_to_m13_couplers_WDATA;
  wire m13_couplers_to_m13_couplers_WREADY;
  wire m13_couplers_to_m13_couplers_WSTRB;
  wire m13_couplers_to_m13_couplers_WVALID;

  assign M_AXI_araddr = m13_couplers_to_m13_couplers_ARADDR;
  assign M_AXI_arprot = m13_couplers_to_m13_couplers_ARPROT;
  assign M_AXI_arvalid = m13_couplers_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr = m13_couplers_to_m13_couplers_AWADDR;
  assign M_AXI_awprot = m13_couplers_to_m13_couplers_AWPROT;
  assign M_AXI_awvalid = m13_couplers_to_m13_couplers_AWVALID;
  assign M_AXI_bready = m13_couplers_to_m13_couplers_BREADY;
  assign M_AXI_rready = m13_couplers_to_m13_couplers_RREADY;
  assign M_AXI_wdata = m13_couplers_to_m13_couplers_WDATA;
  assign M_AXI_wstrb = m13_couplers_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = m13_couplers_to_m13_couplers_WVALID;
  assign S_AXI_arready = m13_couplers_to_m13_couplers_ARREADY;
  assign S_AXI_awready = m13_couplers_to_m13_couplers_AWREADY;
  assign S_AXI_bresp = m13_couplers_to_m13_couplers_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_m13_couplers_BVALID;
  assign S_AXI_rdata = m13_couplers_to_m13_couplers_RDATA;
  assign S_AXI_rresp = m13_couplers_to_m13_couplers_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_m13_couplers_RVALID;
  assign S_AXI_wready = m13_couplers_to_m13_couplers_WREADY;
  assign m13_couplers_to_m13_couplers_ARADDR = S_AXI_araddr;
  assign m13_couplers_to_m13_couplers_ARPROT = S_AXI_arprot;
  assign m13_couplers_to_m13_couplers_ARREADY = M_AXI_arready;
  assign m13_couplers_to_m13_couplers_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_m13_couplers_AWADDR = S_AXI_awaddr;
  assign m13_couplers_to_m13_couplers_AWPROT = S_AXI_awprot;
  assign m13_couplers_to_m13_couplers_AWREADY = M_AXI_awready;
  assign m13_couplers_to_m13_couplers_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_m13_couplers_BREADY = S_AXI_bready;
  assign m13_couplers_to_m13_couplers_BRESP = M_AXI_bresp;
  assign m13_couplers_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign m13_couplers_to_m13_couplers_RDATA = M_AXI_rdata;
  assign m13_couplers_to_m13_couplers_RREADY = S_AXI_rready;
  assign m13_couplers_to_m13_couplers_RRESP = M_AXI_rresp;
  assign m13_couplers_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign m13_couplers_to_m13_couplers_WDATA = S_AXI_wdata;
  assign m13_couplers_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_m13_couplers_WSTRB = S_AXI_wstrb;
  assign m13_couplers_to_m13_couplers_WVALID = S_AXI_wvalid;
endmodule

module microblaze_local_memory_imp_XWDWOY
   (clk,
    dlmb_abus,
    dlmb_addrstrobe,
    dlmb_be,
    dlmb_ce,
    dlmb_readdbus,
    dlmb_readstrobe,
    dlmb_ready,
    dlmb_ue,
    dlmb_wait,
    dlmb_writedbus,
    dlmb_writestrobe,
    ext_bram_if_ctrl_addr,
    ext_bram_if_ctrl_clk,
    ext_bram_if_ctrl_din,
    ext_bram_if_ctrl_dout,
    ext_bram_if_ctrl_en,
    ext_bram_if_ctrl_rst,
    ext_bram_if_ctrl_we,
    ilmb_abus,
    ilmb_addrstrobe,
    ilmb_ce,
    ilmb_readdbus,
    ilmb_readstrobe,
    ilmb_ready,
    ilmb_ue,
    ilmb_wait,
    rst);
  input clk;
  input [0:31]dlmb_abus;
  input dlmb_addrstrobe;
  input [0:3]dlmb_be;
  output dlmb_ce;
  output [0:31]dlmb_readdbus;
  input dlmb_readstrobe;
  output dlmb_ready;
  output dlmb_ue;
  output dlmb_wait;
  input [0:31]dlmb_writedbus;
  input dlmb_writestrobe;
  input [15:0]ext_bram_if_ctrl_addr;
  input ext_bram_if_ctrl_clk;
  input [31:0]ext_bram_if_ctrl_din;
  output [31:0]ext_bram_if_ctrl_dout;
  input ext_bram_if_ctrl_en;
  input ext_bram_if_ctrl_rst;
  input [3:0]ext_bram_if_ctrl_we;
  input [0:31]ilmb_abus;
  input ilmb_addrstrobe;
  output ilmb_ce;
  output [0:31]ilmb_readdbus;
  input ilmb_readstrobe;
  output ilmb_ready;
  output ilmb_ue;
  output ilmb_wait;
  input rst;

  wire clk;
  wire [0:31]dlmb_ABUS;
  wire dlmb_ADDRSTROBE;
  wire [0:3]dlmb_BE;
  wire dlmb_CE;
  wire [0:31]dlmb_READDBUS;
  wire dlmb_READSTROBE;
  wire dlmb_READY;
  wire dlmb_UE;
  wire dlmb_WAIT;
  wire [0:31]dlmb_WRITEDBUS;
  wire dlmb_WRITESTROBE;
  wire [0:31]dlmb_s_ABUS;
  wire dlmb_s_ADDRSTROBE;
  wire [0:3]dlmb_s_BE;
  wire dlmb_s_CE;
  wire [0:31]dlmb_s_READDBUS;
  wire dlmb_s_READSTROBE;
  wire dlmb_s_READY;
  wire dlmb_s_UE;
  wire dlmb_s_WAIT;
  wire [0:31]dlmb_s_WRITEDBUS;
  wire dlmb_s_WRITESTROBE;
  wire [15:0]ext_bram_if_ctrl_ADDR;
  wire ext_bram_if_ctrl_CLK;
  wire [31:0]ext_bram_if_ctrl_DIN;
  wire [31:0]ext_bram_if_ctrl_DOUT;
  wire ext_bram_if_ctrl_EN;
  wire ext_bram_if_ctrl_RST;
  wire [3:0]ext_bram_if_ctrl_WE;
  wire [0:31]ilmb_ABUS;
  wire ilmb_ADDRSTROBE;
  wire ilmb_CE;
  wire [0:31]ilmb_READDBUS;
  wire ilmb_READSTROBE;
  wire ilmb_READY;
  wire ilmb_UE;
  wire ilmb_WAIT;
  wire [0:31]ilmb_s_ABUS;
  wire ilmb_s_ADDRSTROBE;
  wire [0:3]ilmb_s_BE;
  wire ilmb_s_CE;
  wire [0:31]ilmb_s_READDBUS;
  wire ilmb_s_READSTROBE;
  wire ilmb_s_READY;
  wire ilmb_s_UE;
  wire ilmb_s_WAIT;
  wire [0:31]ilmb_s_WRITEDBUS;
  wire ilmb_s_WRITESTROBE;
  wire [0:31]lmb_bram_if_ctrl_ADDR;
  wire lmb_bram_if_ctrl_CLK;
  wire [0:31]lmb_bram_if_ctrl_DIN;
  wire [31:0]lmb_bram_if_ctrl_DOUT;
  wire lmb_bram_if_ctrl_EN;
  wire lmb_bram_if_ctrl_RST;
  wire [0:3]lmb_bram_if_ctrl_WE;
  wire rst;

  assign dlmb_ABUS = dlmb_abus[0:31];
  assign dlmb_ADDRSTROBE = dlmb_addrstrobe;
  assign dlmb_BE = dlmb_be[0:3];
  assign dlmb_READSTROBE = dlmb_readstrobe;
  assign dlmb_WRITEDBUS = dlmb_writedbus[0:31];
  assign dlmb_WRITESTROBE = dlmb_writestrobe;
  assign dlmb_ce = dlmb_CE;
  assign dlmb_readdbus[0:31] = dlmb_READDBUS;
  assign dlmb_ready = dlmb_READY;
  assign dlmb_ue = dlmb_UE;
  assign dlmb_wait = dlmb_WAIT;
  assign ext_bram_if_ctrl_ADDR = ext_bram_if_ctrl_addr[15:0];
  assign ext_bram_if_ctrl_CLK = ext_bram_if_ctrl_clk;
  assign ext_bram_if_ctrl_DIN = ext_bram_if_ctrl_din[31:0];
  assign ext_bram_if_ctrl_EN = ext_bram_if_ctrl_en;
  assign ext_bram_if_ctrl_RST = ext_bram_if_ctrl_rst;
  assign ext_bram_if_ctrl_WE = ext_bram_if_ctrl_we[3:0];
  assign ext_bram_if_ctrl_dout[31:0] = ext_bram_if_ctrl_DOUT;
  assign ilmb_ABUS = ilmb_abus[0:31];
  assign ilmb_ADDRSTROBE = ilmb_addrstrobe;
  assign ilmb_READSTROBE = ilmb_readstrobe;
  assign ilmb_ce = ilmb_CE;
  assign ilmb_readdbus[0:31] = ilmb_READDBUS;
  assign ilmb_ready = ilmb_READY;
  assign ilmb_ue = ilmb_UE;
  assign ilmb_wait = ilmb_WAIT;
  bd_deec_dlmb_0 dlmb
       (.LMB_ABus(dlmb_s_ABUS),
        .LMB_AddrStrobe(dlmb_s_ADDRSTROBE),
        .LMB_BE(dlmb_s_BE),
        .LMB_CE(dlmb_CE),
        .LMB_Clk(clk),
        .LMB_ReadDBus(dlmb_READDBUS),
        .LMB_ReadStrobe(dlmb_s_READSTROBE),
        .LMB_Ready(dlmb_READY),
        .LMB_UE(dlmb_UE),
        .LMB_Wait(dlmb_WAIT),
        .LMB_WriteDBus(dlmb_s_WRITEDBUS),
        .LMB_WriteStrobe(dlmb_s_WRITESTROBE),
        .M_ABus(dlmb_ABUS),
        .M_AddrStrobe(dlmb_ADDRSTROBE),
        .M_BE(dlmb_BE),
        .M_DBus(dlmb_WRITEDBUS),
        .M_ReadStrobe(dlmb_READSTROBE),
        .M_WriteStrobe(dlmb_WRITESTROBE),
        .SYS_Rst(rst),
        .Sl_CE(dlmb_s_CE),
        .Sl_DBus(dlmb_s_READDBUS),
        .Sl_Ready(dlmb_s_READY),
        .Sl_UE(dlmb_s_UE),
        .Sl_Wait(dlmb_s_WAIT));
  bd_deec_ilmb_0 ilmb
       (.LMB_ABus(ilmb_s_ABUS),
        .LMB_AddrStrobe(ilmb_s_ADDRSTROBE),
        .LMB_BE(ilmb_s_BE),
        .LMB_CE(ilmb_CE),
        .LMB_Clk(clk),
        .LMB_ReadDBus(ilmb_READDBUS),
        .LMB_ReadStrobe(ilmb_s_READSTROBE),
        .LMB_Ready(ilmb_READY),
        .LMB_UE(ilmb_UE),
        .LMB_Wait(ilmb_WAIT),
        .LMB_WriteDBus(ilmb_s_WRITEDBUS),
        .LMB_WriteStrobe(ilmb_s_WRITESTROBE),
        .M_ABus(ilmb_ABUS),
        .M_AddrStrobe(ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(rst),
        .Sl_CE(ilmb_s_CE),
        .Sl_DBus(ilmb_s_READDBUS),
        .Sl_Ready(ilmb_s_READY),
        .Sl_UE(ilmb_s_UE),
        .Sl_Wait(ilmb_s_WAIT));
  bd_deec_lmb_bram_0 lmb_bram
       (.addra({lmb_bram_if_ctrl_ADDR[0],lmb_bram_if_ctrl_ADDR[1],lmb_bram_if_ctrl_ADDR[2],lmb_bram_if_ctrl_ADDR[3],lmb_bram_if_ctrl_ADDR[4],lmb_bram_if_ctrl_ADDR[5],lmb_bram_if_ctrl_ADDR[6],lmb_bram_if_ctrl_ADDR[7],lmb_bram_if_ctrl_ADDR[8],lmb_bram_if_ctrl_ADDR[9],lmb_bram_if_ctrl_ADDR[10],lmb_bram_if_ctrl_ADDR[11],lmb_bram_if_ctrl_ADDR[12],lmb_bram_if_ctrl_ADDR[13],lmb_bram_if_ctrl_ADDR[14],lmb_bram_if_ctrl_ADDR[15],lmb_bram_if_ctrl_ADDR[16],lmb_bram_if_ctrl_ADDR[17],lmb_bram_if_ctrl_ADDR[18],lmb_bram_if_ctrl_ADDR[19],lmb_bram_if_ctrl_ADDR[20],lmb_bram_if_ctrl_ADDR[21],lmb_bram_if_ctrl_ADDR[22],lmb_bram_if_ctrl_ADDR[23],lmb_bram_if_ctrl_ADDR[24],lmb_bram_if_ctrl_ADDR[25],lmb_bram_if_ctrl_ADDR[26],lmb_bram_if_ctrl_ADDR[27],lmb_bram_if_ctrl_ADDR[28],lmb_bram_if_ctrl_ADDR[29],lmb_bram_if_ctrl_ADDR[30],lmb_bram_if_ctrl_ADDR[31]}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ext_bram_if_ctrl_ADDR}),
        .clka(lmb_bram_if_ctrl_CLK),
        .clkb(ext_bram_if_ctrl_CLK),
        .dina({lmb_bram_if_ctrl_DIN[0],lmb_bram_if_ctrl_DIN[1],lmb_bram_if_ctrl_DIN[2],lmb_bram_if_ctrl_DIN[3],lmb_bram_if_ctrl_DIN[4],lmb_bram_if_ctrl_DIN[5],lmb_bram_if_ctrl_DIN[6],lmb_bram_if_ctrl_DIN[7],lmb_bram_if_ctrl_DIN[8],lmb_bram_if_ctrl_DIN[9],lmb_bram_if_ctrl_DIN[10],lmb_bram_if_ctrl_DIN[11],lmb_bram_if_ctrl_DIN[12],lmb_bram_if_ctrl_DIN[13],lmb_bram_if_ctrl_DIN[14],lmb_bram_if_ctrl_DIN[15],lmb_bram_if_ctrl_DIN[16],lmb_bram_if_ctrl_DIN[17],lmb_bram_if_ctrl_DIN[18],lmb_bram_if_ctrl_DIN[19],lmb_bram_if_ctrl_DIN[20],lmb_bram_if_ctrl_DIN[21],lmb_bram_if_ctrl_DIN[22],lmb_bram_if_ctrl_DIN[23],lmb_bram_if_ctrl_DIN[24],lmb_bram_if_ctrl_DIN[25],lmb_bram_if_ctrl_DIN[26],lmb_bram_if_ctrl_DIN[27],lmb_bram_if_ctrl_DIN[28],lmb_bram_if_ctrl_DIN[29],lmb_bram_if_ctrl_DIN[30],lmb_bram_if_ctrl_DIN[31]}),
        .dinb(ext_bram_if_ctrl_DIN),
        .douta(lmb_bram_if_ctrl_DOUT),
        .doutb(ext_bram_if_ctrl_DOUT),
        .ena(lmb_bram_if_ctrl_EN),
        .enb(ext_bram_if_ctrl_EN),
        .rsta(lmb_bram_if_ctrl_RST),
        .rstb(ext_bram_if_ctrl_RST),
        .wea({lmb_bram_if_ctrl_WE[0],lmb_bram_if_ctrl_WE[1],lmb_bram_if_ctrl_WE[2],lmb_bram_if_ctrl_WE[3]}),
        .web(ext_bram_if_ctrl_WE));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xF0000000 32 > bd_deec microblaze_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  bd_deec_lmb_bram_if_cntlr_0 lmb_bram_if_cntlr
       (.BRAM_Addr_A(lmb_bram_if_ctrl_ADDR),
        .BRAM_Clk_A(lmb_bram_if_ctrl_CLK),
        .BRAM_Din_A({lmb_bram_if_ctrl_DOUT[31],lmb_bram_if_ctrl_DOUT[30],lmb_bram_if_ctrl_DOUT[29],lmb_bram_if_ctrl_DOUT[28],lmb_bram_if_ctrl_DOUT[27],lmb_bram_if_ctrl_DOUT[26],lmb_bram_if_ctrl_DOUT[25],lmb_bram_if_ctrl_DOUT[24],lmb_bram_if_ctrl_DOUT[23],lmb_bram_if_ctrl_DOUT[22],lmb_bram_if_ctrl_DOUT[21],lmb_bram_if_ctrl_DOUT[20],lmb_bram_if_ctrl_DOUT[19],lmb_bram_if_ctrl_DOUT[18],lmb_bram_if_ctrl_DOUT[17],lmb_bram_if_ctrl_DOUT[16],lmb_bram_if_ctrl_DOUT[15],lmb_bram_if_ctrl_DOUT[14],lmb_bram_if_ctrl_DOUT[13],lmb_bram_if_ctrl_DOUT[12],lmb_bram_if_ctrl_DOUT[11],lmb_bram_if_ctrl_DOUT[10],lmb_bram_if_ctrl_DOUT[9],lmb_bram_if_ctrl_DOUT[8],lmb_bram_if_ctrl_DOUT[7],lmb_bram_if_ctrl_DOUT[6],lmb_bram_if_ctrl_DOUT[5],lmb_bram_if_ctrl_DOUT[4],lmb_bram_if_ctrl_DOUT[3],lmb_bram_if_ctrl_DOUT[2],lmb_bram_if_ctrl_DOUT[1],lmb_bram_if_ctrl_DOUT[0]}),
        .BRAM_Dout_A(lmb_bram_if_ctrl_DIN),
        .BRAM_EN_A(lmb_bram_if_ctrl_EN),
        .BRAM_Rst_A(lmb_bram_if_ctrl_RST),
        .BRAM_WEN_A(lmb_bram_if_ctrl_WE),
        .LMB1_ABus(ilmb_s_ABUS),
        .LMB1_AddrStrobe(ilmb_s_ADDRSTROBE),
        .LMB1_BE(ilmb_s_BE),
        .LMB1_ReadStrobe(ilmb_s_READSTROBE),
        .LMB1_WriteDBus(ilmb_s_WRITEDBUS),
        .LMB1_WriteStrobe(ilmb_s_WRITESTROBE),
        .LMB_ABus(dlmb_s_ABUS),
        .LMB_AddrStrobe(dlmb_s_ADDRSTROBE),
        .LMB_BE(dlmb_s_BE),
        .LMB_Clk(clk),
        .LMB_ReadStrobe(dlmb_s_READSTROBE),
        .LMB_Rst(rst),
        .LMB_WriteDBus(dlmb_s_WRITEDBUS),
        .LMB_WriteStrobe(dlmb_s_WRITESTROBE),
        .Sl1_CE(ilmb_s_CE),
        .Sl1_DBus(ilmb_s_READDBUS),
        .Sl1_Ready(ilmb_s_READY),
        .Sl1_UE(ilmb_s_UE),
        .Sl1_Wait(ilmb_s_WAIT),
        .Sl_CE(dlmb_s_CE),
        .Sl_DBus(dlmb_s_READDBUS),
        .Sl_Ready(dlmb_s_READY),
        .Sl_UE(dlmb_s_UE),
        .Sl_Wait(dlmb_s_WAIT));
endmodule

module qsfp_gpio_hierarchy_imp_HEDMGA
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk_ctrl,
    aresetn_ctrl,
    ip2intc_irpt,
    qsfp0_int_l,
    qsfp0_lpmode,
    qsfp0_modprs_l,
    qsfp0_modsel_l,
    qsfp0_reset_l,
    qsfp1_int_l,
    qsfp1_lpmode,
    qsfp1_modprs_l,
    qsfp1_modsel_l,
    qsfp1_reset_l);
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk_ctrl;
  input aresetn_ctrl;
  output ip2intc_irpt;
  input [0:0]qsfp0_int_l;
  output [0:0]qsfp0_lpmode;
  input [0:0]qsfp0_modprs_l;
  output [0:0]qsfp0_modsel_l;
  output [0:0]qsfp0_reset_l;
  input [0:0]qsfp1_int_l;
  output [0:0]qsfp1_lpmode;
  input [0:0]qsfp1_modprs_l;
  output [0:0]qsfp1_modsel_l;
  output [0:0]qsfp1_reset_l;

  wire aclk_ctrl;
  wire [4:0]axi_gpio_qsfp_in_1;
  wire [4:0]axi_gpio_qsfp_in_2;
  wire [4:0]axi_gpio_qsfp_out_1;
  wire [4:0]axi_gpio_qsfp_out_2;
  wire [31:0]axi_int_cmc_2_M03_ARADDR;
  wire axi_int_cmc_2_M03_ARREADY;
  wire axi_int_cmc_2_M03_ARVALID;
  wire [31:0]axi_int_cmc_2_M03_AWADDR;
  wire axi_int_cmc_2_M03_AWREADY;
  wire axi_int_cmc_2_M03_AWVALID;
  wire axi_int_cmc_2_M03_BREADY;
  wire [1:0]axi_int_cmc_2_M03_BRESP;
  wire axi_int_cmc_2_M03_BVALID;
  wire [31:0]axi_int_cmc_2_M03_RDATA;
  wire axi_int_cmc_2_M03_RREADY;
  wire [1:0]axi_int_cmc_2_M03_RRESP;
  wire axi_int_cmc_2_M03_RVALID;
  wire [31:0]axi_int_cmc_2_M03_WDATA;
  wire axi_int_cmc_2_M03_WREADY;
  wire [3:0]axi_int_cmc_2_M03_WSTRB;
  wire axi_int_cmc_2_M03_WVALID;
  wire cmc_perip_aresetn;
  wire [0:0]\^gnd_bus_1 ;
  wire intr_gpio_qsfp;
  wire [0:0]qsfp0_int_l;
  wire [0:0]qsfp0_lpmode;
  wire [0:0]qsfp0_modprs_l;
  wire [0:0]qsfp0_modsel_l;
  wire [0:0]qsfp0_reset_l;
  wire [0:0]qsfp1_int_l;
  wire [0:0]qsfp1_lpmode;
  wire [0:0]qsfp1_modprs_l;
  wire [0:0]qsfp1_modsel_l;
  wire [0:0]qsfp1_reset_l;

  assign S_AXI_arready = axi_int_cmc_2_M03_ARREADY;
  assign S_AXI_awready = axi_int_cmc_2_M03_AWREADY;
  assign S_AXI_bresp[1:0] = axi_int_cmc_2_M03_BRESP;
  assign S_AXI_bvalid = axi_int_cmc_2_M03_BVALID;
  assign S_AXI_rdata[31:0] = axi_int_cmc_2_M03_RDATA;
  assign S_AXI_rresp[1:0] = axi_int_cmc_2_M03_RRESP;
  assign S_AXI_rvalid = axi_int_cmc_2_M03_RVALID;
  assign S_AXI_wready = axi_int_cmc_2_M03_WREADY;
  assign axi_int_cmc_2_M03_ARADDR = S_AXI_araddr[31:0];
  assign axi_int_cmc_2_M03_ARVALID = S_AXI_arvalid;
  assign axi_int_cmc_2_M03_AWADDR = S_AXI_awaddr[31:0];
  assign axi_int_cmc_2_M03_AWVALID = S_AXI_awvalid;
  assign axi_int_cmc_2_M03_BREADY = S_AXI_bready;
  assign axi_int_cmc_2_M03_RREADY = S_AXI_rready;
  assign axi_int_cmc_2_M03_WDATA = S_AXI_wdata[31:0];
  assign axi_int_cmc_2_M03_WSTRB = S_AXI_wstrb[3:0];
  assign axi_int_cmc_2_M03_WVALID = S_AXI_wvalid;
  assign cmc_perip_aresetn = aresetn_ctrl;
  assign ip2intc_irpt = intr_gpio_qsfp;
  bd_deec_axi_gpio_qsfp_0 axi_gpio_qsfp
       (.gpio2_io_i(axi_gpio_qsfp_in_2),
        .gpio2_io_o(axi_gpio_qsfp_out_2),
        .gpio_io_i(axi_gpio_qsfp_in_1),
        .gpio_io_o(axi_gpio_qsfp_out_1),
        .ip2intc_irpt(intr_gpio_qsfp),
        .s_axi_aclk(aclk_ctrl),
        .s_axi_araddr(axi_int_cmc_2_M03_ARADDR[8:0]),
        .s_axi_aresetn(cmc_perip_aresetn),
        .s_axi_arready(axi_int_cmc_2_M03_ARREADY),
        .s_axi_arvalid(axi_int_cmc_2_M03_ARVALID),
        .s_axi_awaddr(axi_int_cmc_2_M03_AWADDR[8:0]),
        .s_axi_awready(axi_int_cmc_2_M03_AWREADY),
        .s_axi_awvalid(axi_int_cmc_2_M03_AWVALID),
        .s_axi_bready(axi_int_cmc_2_M03_BREADY),
        .s_axi_bresp(axi_int_cmc_2_M03_BRESP),
        .s_axi_bvalid(axi_int_cmc_2_M03_BVALID),
        .s_axi_rdata(axi_int_cmc_2_M03_RDATA),
        .s_axi_rready(axi_int_cmc_2_M03_RREADY),
        .s_axi_rresp(axi_int_cmc_2_M03_RRESP),
        .s_axi_rvalid(axi_int_cmc_2_M03_RVALID),
        .s_axi_wdata(axi_int_cmc_2_M03_WDATA),
        .s_axi_wready(axi_int_cmc_2_M03_WREADY),
        .s_axi_wstrb(axi_int_cmc_2_M03_WSTRB),
        .s_axi_wvalid(axi_int_cmc_2_M03_WVALID));
  bd_deec_concat_1_0 concat_1
       (.In0(\^gnd_bus_1 ),
        .In1(\^gnd_bus_1 ),
        .In2(\^gnd_bus_1 ),
        .In3(qsfp0_modprs_l),
        .In4(qsfp0_int_l),
        .dout(axi_gpio_qsfp_in_1));
  bd_deec_concat_2_0 concat_2
       (.In0(\^gnd_bus_1 ),
        .In1(\^gnd_bus_1 ),
        .In2(\^gnd_bus_1 ),
        .In3(qsfp1_modprs_l),
        .In4(qsfp1_int_l),
        .dout(axi_gpio_qsfp_in_2));
  bd_deec_gnd_bus_1_0 gnd_bus_1
       (.dout(\^gnd_bus_1 ));
  bd_deec_slice_gpio1_0_0 slice_gpio1_0
       (.Din(axi_gpio_qsfp_out_1),
        .Dout(qsfp0_lpmode));
  bd_deec_slice_gpio1_1_0 slice_gpio1_1
       (.Din(axi_gpio_qsfp_out_1),
        .Dout(qsfp0_reset_l));
  bd_deec_slice_gpio1_2_0 slice_gpio1_2
       (.Din(axi_gpio_qsfp_out_1),
        .Dout(qsfp0_modsel_l));
  bd_deec_slice_gpio2_0_0 slice_gpio2_0
       (.Din(axi_gpio_qsfp_out_2),
        .Dout(qsfp1_lpmode));
  bd_deec_slice_gpio2_1_0 slice_gpio2_1
       (.Din(axi_gpio_qsfp_out_2),
        .Dout(qsfp1_reset_l));
  bd_deec_slice_gpio2_2_0 slice_gpio2_2
       (.Din(axi_gpio_qsfp_out_2),
        .Dout(qsfp1_modsel_l));
endmodule

module reset_gen_imp_194GHUC
   (axi_gpio_rst_n,
    resetn,
    wdt_reset);
  input [0:0]axi_gpio_rst_n;
  output [0:0]resetn;
  input [0:0]wdt_reset;

  wire [0:0]axi_gpio_rst_n_net;
  wire [0:0]reset_inverter_net;
  wire [0:0]resetn_net;
  wire [0:0]wdt_reset_net;

  assign axi_gpio_rst_n_net = axi_gpio_rst_n[0];
  assign resetn[0] = resetn_net;
  assign wdt_reset_net = wdt_reset[0];
  bd_deec_and_gate_0 and_gate
       (.Op1(axi_gpio_rst_n_net),
        .Op2(reset_inverter_net),
        .Res(resetn_net));
  bd_deec_reset_inverter_0 reset_inverter
       (.Op1(wdt_reset_net),
        .Res(reset_inverter_net));
endmodule

module s00_couplers_imp_1BSS6R5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1S3X34S
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [17:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [17:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [17:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [17:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[17:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[17:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[17:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
