//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
//Date        : Thu Mar 12 19:23:10 2020
//Host        : mcxlnx running 64-bit CentOS Linux release 7.7.1908 (Core)
//Command     : generate_target PCIe_Bridge_ICAP_complex_wrapper.bd
//Design      : PCIe_Bridge_ICAP_complex_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PCIe_Bridge_ICAP_complex_wrapper
   (BMC_GPIO_tri_io,
    BMC_UART_rxd,
    BMC_UART_txd,
    C0_DDR_SREF_CTRL_IN,
    C0_DDR_SREF_CTRL_OUT,
    C1_SYS_CLK_clk_n,
    C1_SYS_CLK_clk_p,
    C2_DDR_SREF_CTRL_IN,
    C2_DDR_SREF_CTRL_OUT,
    C3_DDR_SREF_CTRL_IN,
    C3_DDR_SREF_CTRL_OUT,
    MIG_0_RST_N,
    MIG_2_RST_N,
    MIG_3_RST_N,
    M_AXI_LITE_TO_HLS_PR_NORTH_araddr,
    M_AXI_LITE_TO_HLS_PR_NORTH_arprot,
    M_AXI_LITE_TO_HLS_PR_NORTH_arready,
    M_AXI_LITE_TO_HLS_PR_NORTH_arvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_awaddr,
    M_AXI_LITE_TO_HLS_PR_NORTH_awprot,
    M_AXI_LITE_TO_HLS_PR_NORTH_awready,
    M_AXI_LITE_TO_HLS_PR_NORTH_awvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_bready,
    M_AXI_LITE_TO_HLS_PR_NORTH_bresp,
    M_AXI_LITE_TO_HLS_PR_NORTH_bvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_rdata,
    M_AXI_LITE_TO_HLS_PR_NORTH_rready,
    M_AXI_LITE_TO_HLS_PR_NORTH_rresp,
    M_AXI_LITE_TO_HLS_PR_NORTH_rvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_wdata,
    M_AXI_LITE_TO_HLS_PR_NORTH_wready,
    M_AXI_LITE_TO_HLS_PR_NORTH_wstrb,
    M_AXI_LITE_TO_HLS_PR_NORTH_wvalid,
    RESET_GATE,
    S_AXI_MM_0_araddr,
    S_AXI_MM_0_arburst,
    S_AXI_MM_0_arcache,
    S_AXI_MM_0_arid,
    S_AXI_MM_0_arlen,
    S_AXI_MM_0_arlock,
    S_AXI_MM_0_arprot,
    S_AXI_MM_0_arqos,
    S_AXI_MM_0_arready,
    S_AXI_MM_0_arregion,
    S_AXI_MM_0_arsize,
    S_AXI_MM_0_arvalid,
    S_AXI_MM_0_awaddr,
    S_AXI_MM_0_awburst,
    S_AXI_MM_0_awcache,
    S_AXI_MM_0_awid,
    S_AXI_MM_0_awlen,
    S_AXI_MM_0_awlock,
    S_AXI_MM_0_awprot,
    S_AXI_MM_0_awqos,
    S_AXI_MM_0_awready,
    S_AXI_MM_0_awregion,
    S_AXI_MM_0_awsize,
    S_AXI_MM_0_awvalid,
    S_AXI_MM_0_bid,
    S_AXI_MM_0_bready,
    S_AXI_MM_0_bresp,
    S_AXI_MM_0_bvalid,
    S_AXI_MM_0_rdata,
    S_AXI_MM_0_rid,
    S_AXI_MM_0_rlast,
    S_AXI_MM_0_rready,
    S_AXI_MM_0_rresp,
    S_AXI_MM_0_rvalid,
    S_AXI_MM_0_wdata,
    S_AXI_MM_0_wlast,
    S_AXI_MM_0_wready,
    S_AXI_MM_0_wstrb,
    S_AXI_MM_0_wvalid,
    S_AXI_MM_PCIM_araddr,
    S_AXI_MM_PCIM_arburst,
    S_AXI_MM_PCIM_arcache,
    S_AXI_MM_PCIM_arid,
    S_AXI_MM_PCIM_arlen,
    S_AXI_MM_PCIM_arlock,
    S_AXI_MM_PCIM_arprot,
    S_AXI_MM_PCIM_arqos,
    S_AXI_MM_PCIM_arready,
    S_AXI_MM_PCIM_arregion,
    S_AXI_MM_PCIM_arsize,
    S_AXI_MM_PCIM_arvalid,
    S_AXI_MM_PCIM_awaddr,
    S_AXI_MM_PCIM_awburst,
    S_AXI_MM_PCIM_awcache,
    S_AXI_MM_PCIM_awid,
    S_AXI_MM_PCIM_awlen,
    S_AXI_MM_PCIM_awlock,
    S_AXI_MM_PCIM_awprot,
    S_AXI_MM_PCIM_awqos,
    S_AXI_MM_PCIM_awready,
    S_AXI_MM_PCIM_awregion,
    S_AXI_MM_PCIM_awsize,
    S_AXI_MM_PCIM_awvalid,
    S_AXI_MM_PCIM_bid,
    S_AXI_MM_PCIM_bready,
    S_AXI_MM_PCIM_bresp,
    S_AXI_MM_PCIM_bvalid,
    S_AXI_MM_PCIM_rdata,
    S_AXI_MM_PCIM_rid,
    S_AXI_MM_PCIM_rlast,
    S_AXI_MM_PCIM_rready,
    S_AXI_MM_PCIM_rresp,
    S_AXI_MM_PCIM_rvalid,
    S_AXI_MM_PCIM_wdata,
    S_AXI_MM_PCIM_wlast,
    S_AXI_MM_PCIM_wready,
    S_AXI_MM_PCIM_wstrb,
    S_AXI_MM_PCIM_wvalid,
    axi_reset_n_250M_out,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_par,
    c1_ddr4_reset_n,
    c1_init_calib_complete,
    clk_out_125M,
    clk_out_250M,
    clk_out_300M,
    clk_out_400M,
    clk_out_PROG,
    iic_scl_io,
    iic_sda_io,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    rst_main_n,
    sys_clk,
    sys_clk_gt,
    sys_rst_n);
  inout [3:0]BMC_GPIO_tri_io;
  input BMC_UART_rxd;
  output BMC_UART_txd;
  input [7:0]C0_DDR_SREF_CTRL_IN;
  output [7:0]C0_DDR_SREF_CTRL_OUT;
  input C1_SYS_CLK_clk_n;
  input C1_SYS_CLK_clk_p;
  input [7:0]C2_DDR_SREF_CTRL_IN;
  output [7:0]C2_DDR_SREF_CTRL_OUT;
  input [7:0]C3_DDR_SREF_CTRL_IN;
  output [7:0]C3_DDR_SREF_CTRL_OUT;
  output [0:0]MIG_0_RST_N;
  output [0:0]MIG_2_RST_N;
  output [0:0]MIG_3_RST_N;
  output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_araddr;
  output [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_arprot;
  input M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  output M_AXI_LITE_TO_HLS_PR_NORTH_arvalid;
  output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_awaddr;
  output [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_awprot;
  input M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  output M_AXI_LITE_TO_HLS_PR_NORTH_awvalid;
  output M_AXI_LITE_TO_HLS_PR_NORTH_bready;
  input [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_bresp;
  input M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  input [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_rdata;
  output M_AXI_LITE_TO_HLS_PR_NORTH_rready;
  input [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_rresp;
  input M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_wdata;
  input M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  output [3:0]M_AXI_LITE_TO_HLS_PR_NORTH_wstrb;
  output M_AXI_LITE_TO_HLS_PR_NORTH_wvalid;
  output [0:0]RESET_GATE;
  input [63:0]S_AXI_MM_0_araddr;
  input [1:0]S_AXI_MM_0_arburst;
  input [3:0]S_AXI_MM_0_arcache;
  input [5:0]S_AXI_MM_0_arid;
  input [7:0]S_AXI_MM_0_arlen;
  input [0:0]S_AXI_MM_0_arlock;
  input [2:0]S_AXI_MM_0_arprot;
  input [3:0]S_AXI_MM_0_arqos;
  output S_AXI_MM_0_arready;
  input [3:0]S_AXI_MM_0_arregion;
  input [2:0]S_AXI_MM_0_arsize;
  input S_AXI_MM_0_arvalid;
  input [63:0]S_AXI_MM_0_awaddr;
  input [1:0]S_AXI_MM_0_awburst;
  input [3:0]S_AXI_MM_0_awcache;
  input [5:0]S_AXI_MM_0_awid;
  input [7:0]S_AXI_MM_0_awlen;
  input [0:0]S_AXI_MM_0_awlock;
  input [2:0]S_AXI_MM_0_awprot;
  input [3:0]S_AXI_MM_0_awqos;
  output S_AXI_MM_0_awready;
  input [3:0]S_AXI_MM_0_awregion;
  input [2:0]S_AXI_MM_0_awsize;
  input S_AXI_MM_0_awvalid;
  output [5:0]S_AXI_MM_0_bid;
  input S_AXI_MM_0_bready;
  output [1:0]S_AXI_MM_0_bresp;
  output S_AXI_MM_0_bvalid;
  output [511:0]S_AXI_MM_0_rdata;
  output [5:0]S_AXI_MM_0_rid;
  output S_AXI_MM_0_rlast;
  input S_AXI_MM_0_rready;
  output [1:0]S_AXI_MM_0_rresp;
  output S_AXI_MM_0_rvalid;
  input [511:0]S_AXI_MM_0_wdata;
  input S_AXI_MM_0_wlast;
  output S_AXI_MM_0_wready;
  input [63:0]S_AXI_MM_0_wstrb;
  input S_AXI_MM_0_wvalid;
  input [63:0]S_AXI_MM_PCIM_araddr;
  input [1:0]S_AXI_MM_PCIM_arburst;
  input [3:0]S_AXI_MM_PCIM_arcache;
  input [4:0]S_AXI_MM_PCIM_arid;
  input [7:0]S_AXI_MM_PCIM_arlen;
  input [0:0]S_AXI_MM_PCIM_arlock;
  input [2:0]S_AXI_MM_PCIM_arprot;
  input [3:0]S_AXI_MM_PCIM_arqos;
  output S_AXI_MM_PCIM_arready;
  input [3:0]S_AXI_MM_PCIM_arregion;
  input [2:0]S_AXI_MM_PCIM_arsize;
  input S_AXI_MM_PCIM_arvalid;
  input [63:0]S_AXI_MM_PCIM_awaddr;
  input [1:0]S_AXI_MM_PCIM_awburst;
  input [3:0]S_AXI_MM_PCIM_awcache;
  input [4:0]S_AXI_MM_PCIM_awid;
  input [7:0]S_AXI_MM_PCIM_awlen;
  input [0:0]S_AXI_MM_PCIM_awlock;
  input [2:0]S_AXI_MM_PCIM_awprot;
  input [3:0]S_AXI_MM_PCIM_awqos;
  output S_AXI_MM_PCIM_awready;
  input [3:0]S_AXI_MM_PCIM_awregion;
  input [2:0]S_AXI_MM_PCIM_awsize;
  input S_AXI_MM_PCIM_awvalid;
  output [4:0]S_AXI_MM_PCIM_bid;
  input S_AXI_MM_PCIM_bready;
  output [1:0]S_AXI_MM_PCIM_bresp;
  output S_AXI_MM_PCIM_bvalid;
  output [511:0]S_AXI_MM_PCIM_rdata;
  output [4:0]S_AXI_MM_PCIM_rid;
  output S_AXI_MM_PCIM_rlast;
  input S_AXI_MM_PCIM_rready;
  output [1:0]S_AXI_MM_PCIM_rresp;
  output S_AXI_MM_PCIM_rvalid;
  input [511:0]S_AXI_MM_PCIM_wdata;
  input S_AXI_MM_PCIM_wlast;
  output S_AXI_MM_PCIM_wready;
  input [63:0]S_AXI_MM_PCIM_wstrb;
  input S_AXI_MM_PCIM_wvalid;
  output [0:0]axi_reset_n_250M_out;
  output c1_ddr4_act_n;
  output [16:0]c1_ddr4_adr;
  output [1:0]c1_ddr4_ba;
  output [1:0]c1_ddr4_bg;
  output [0:0]c1_ddr4_ck_c;
  output [0:0]c1_ddr4_ck_t;
  output [0:0]c1_ddr4_cke;
  output [0:0]c1_ddr4_cs_n;
  inout [71:0]c1_ddr4_dq;
  inout [17:0]c1_ddr4_dqs_c;
  inout [17:0]c1_ddr4_dqs_t;
  output [0:0]c1_ddr4_odt;
  output c1_ddr4_par;
  output c1_ddr4_reset_n;
  output c1_init_calib_complete;
  output clk_out_125M;
  output clk_out_250M;
  output clk_out_300M;
  output clk_out_400M;
  output clk_out_PROG;
  inout iic_scl_io;
  inout iic_sda_io;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  output [0:0]rst_main_n;
  input sys_clk;
  input sys_clk_gt;
  input sys_rst_n;

  wire [0:0]BMC_GPIO_tri_i_0;
  wire [1:1]BMC_GPIO_tri_i_1;
  wire [2:2]BMC_GPIO_tri_i_2;
  wire [3:3]BMC_GPIO_tri_i_3;
  wire [0:0]BMC_GPIO_tri_io_0;
  wire [1:1]BMC_GPIO_tri_io_1;
  wire [2:2]BMC_GPIO_tri_io_2;
  wire [3:3]BMC_GPIO_tri_io_3;
  wire [0:0]BMC_GPIO_tri_o_0;
  wire [1:1]BMC_GPIO_tri_o_1;
  wire [2:2]BMC_GPIO_tri_o_2;
  wire [3:3]BMC_GPIO_tri_o_3;
  wire [0:0]BMC_GPIO_tri_t_0;
  wire [1:1]BMC_GPIO_tri_t_1;
  wire [2:2]BMC_GPIO_tri_t_2;
  wire [3:3]BMC_GPIO_tri_t_3;
  wire BMC_UART_rxd;
  wire BMC_UART_txd;
  wire [7:0]C0_DDR_SREF_CTRL_IN;
  wire [7:0]C0_DDR_SREF_CTRL_OUT;
  wire C1_SYS_CLK_clk_n;
  wire C1_SYS_CLK_clk_p;
  wire [7:0]C2_DDR_SREF_CTRL_IN;
  wire [7:0]C2_DDR_SREF_CTRL_OUT;
  wire [7:0]C3_DDR_SREF_CTRL_IN;
  wire [7:0]C3_DDR_SREF_CTRL_OUT;
  wire [0:0]MIG_0_RST_N;
  wire [0:0]MIG_2_RST_N;
  wire [0:0]MIG_3_RST_N;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_araddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_arprot;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_arvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_awaddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_awprot;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_awvalid;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_bready;
  wire [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_bresp;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_rdata;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_rready;
  wire [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_rresp;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_wdata;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  wire [3:0]M_AXI_LITE_TO_HLS_PR_NORTH_wstrb;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_wvalid;
  wire [0:0]RESET_GATE;
  wire [63:0]S_AXI_MM_0_araddr;
  wire [1:0]S_AXI_MM_0_arburst;
  wire [3:0]S_AXI_MM_0_arcache;
  wire [5:0]S_AXI_MM_0_arid;
  wire [7:0]S_AXI_MM_0_arlen;
  wire [0:0]S_AXI_MM_0_arlock;
  wire [2:0]S_AXI_MM_0_arprot;
  wire [3:0]S_AXI_MM_0_arqos;
  wire S_AXI_MM_0_arready;
  wire [3:0]S_AXI_MM_0_arregion;
  wire [2:0]S_AXI_MM_0_arsize;
  wire S_AXI_MM_0_arvalid;
  wire [63:0]S_AXI_MM_0_awaddr;
  wire [1:0]S_AXI_MM_0_awburst;
  wire [3:0]S_AXI_MM_0_awcache;
  wire [5:0]S_AXI_MM_0_awid;
  wire [7:0]S_AXI_MM_0_awlen;
  wire [0:0]S_AXI_MM_0_awlock;
  wire [2:0]S_AXI_MM_0_awprot;
  wire [3:0]S_AXI_MM_0_awqos;
  wire S_AXI_MM_0_awready;
  wire [3:0]S_AXI_MM_0_awregion;
  wire [2:0]S_AXI_MM_0_awsize;
  wire S_AXI_MM_0_awvalid;
  wire [5:0]S_AXI_MM_0_bid;
  wire S_AXI_MM_0_bready;
  wire [1:0]S_AXI_MM_0_bresp;
  wire S_AXI_MM_0_bvalid;
  wire [511:0]S_AXI_MM_0_rdata;
  wire [5:0]S_AXI_MM_0_rid;
  wire S_AXI_MM_0_rlast;
  wire S_AXI_MM_0_rready;
  wire [1:0]S_AXI_MM_0_rresp;
  wire S_AXI_MM_0_rvalid;
  wire [511:0]S_AXI_MM_0_wdata;
  wire S_AXI_MM_0_wlast;
  wire S_AXI_MM_0_wready;
  wire [63:0]S_AXI_MM_0_wstrb;
  wire S_AXI_MM_0_wvalid;
  wire [63:0]S_AXI_MM_PCIM_araddr;
  wire [1:0]S_AXI_MM_PCIM_arburst;
  wire [3:0]S_AXI_MM_PCIM_arcache;
  wire [4:0]S_AXI_MM_PCIM_arid;
  wire [7:0]S_AXI_MM_PCIM_arlen;
  wire [0:0]S_AXI_MM_PCIM_arlock;
  wire [2:0]S_AXI_MM_PCIM_arprot;
  wire [3:0]S_AXI_MM_PCIM_arqos;
  wire S_AXI_MM_PCIM_arready;
  wire [3:0]S_AXI_MM_PCIM_arregion;
  wire [2:0]S_AXI_MM_PCIM_arsize;
  wire S_AXI_MM_PCIM_arvalid;
  wire [63:0]S_AXI_MM_PCIM_awaddr;
  wire [1:0]S_AXI_MM_PCIM_awburst;
  wire [3:0]S_AXI_MM_PCIM_awcache;
  wire [4:0]S_AXI_MM_PCIM_awid;
  wire [7:0]S_AXI_MM_PCIM_awlen;
  wire [0:0]S_AXI_MM_PCIM_awlock;
  wire [2:0]S_AXI_MM_PCIM_awprot;
  wire [3:0]S_AXI_MM_PCIM_awqos;
  wire S_AXI_MM_PCIM_awready;
  wire [3:0]S_AXI_MM_PCIM_awregion;
  wire [2:0]S_AXI_MM_PCIM_awsize;
  wire S_AXI_MM_PCIM_awvalid;
  wire [4:0]S_AXI_MM_PCIM_bid;
  wire S_AXI_MM_PCIM_bready;
  wire [1:0]S_AXI_MM_PCIM_bresp;
  wire S_AXI_MM_PCIM_bvalid;
  wire [511:0]S_AXI_MM_PCIM_rdata;
  wire [4:0]S_AXI_MM_PCIM_rid;
  wire S_AXI_MM_PCIM_rlast;
  wire S_AXI_MM_PCIM_rready;
  wire [1:0]S_AXI_MM_PCIM_rresp;
  wire S_AXI_MM_PCIM_rvalid;
  wire [511:0]S_AXI_MM_PCIM_wdata;
  wire S_AXI_MM_PCIM_wlast;
  wire S_AXI_MM_PCIM_wready;
  wire [63:0]S_AXI_MM_PCIM_wstrb;
  wire S_AXI_MM_PCIM_wvalid;
  wire [0:0]axi_reset_n_250M_out;
  wire c1_ddr4_act_n;
  wire [16:0]c1_ddr4_adr;
  wire [1:0]c1_ddr4_ba;
  wire [1:0]c1_ddr4_bg;
  wire [0:0]c1_ddr4_ck_c;
  wire [0:0]c1_ddr4_ck_t;
  wire [0:0]c1_ddr4_cke;
  wire [0:0]c1_ddr4_cs_n;
  wire [71:0]c1_ddr4_dq;
  wire [17:0]c1_ddr4_dqs_c;
  wire [17:0]c1_ddr4_dqs_t;
  wire [0:0]c1_ddr4_odt;
  wire c1_ddr4_par;
  wire c1_ddr4_reset_n;
  wire c1_init_calib_complete;
  wire clk_out_125M;
  wire clk_out_250M;
  wire clk_out_300M;
  wire clk_out_400M;
  wire clk_out_PROG;
  wire iic_scl_i;
  wire iic_scl_io;
  wire iic_scl_o;
  wire iic_scl_t;
  wire iic_sda_i;
  wire iic_sda_io;
  wire iic_sda_o;
  wire iic_sda_t;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;
  wire [0:0]rst_main_n;
  wire sys_clk;
  wire sys_clk_gt;
  wire sys_rst_n;

  IOBUF BMC_GPIO_tri_iobuf_0
       (.I(BMC_GPIO_tri_o_0),
        .IO(BMC_GPIO_tri_io[0]),
        .O(BMC_GPIO_tri_i_0),
        .T(BMC_GPIO_tri_t_0));
  IOBUF BMC_GPIO_tri_iobuf_1
       (.I(BMC_GPIO_tri_o_1),
        .IO(BMC_GPIO_tri_io[1]),
        .O(BMC_GPIO_tri_i_1),
        .T(BMC_GPIO_tri_t_1));
  IOBUF BMC_GPIO_tri_iobuf_2
       (.I(BMC_GPIO_tri_o_2),
        .IO(BMC_GPIO_tri_io[2]),
        .O(BMC_GPIO_tri_i_2),
        .T(BMC_GPIO_tri_t_2));
  IOBUF BMC_GPIO_tri_iobuf_3
       (.I(BMC_GPIO_tri_o_3),
        .IO(BMC_GPIO_tri_io[3]),
        .O(BMC_GPIO_tri_i_3),
        .T(BMC_GPIO_tri_t_3));
  PCIe_Bridge_ICAP_complex PCIe_Bridge_ICAP_complex_i
       (.BMC_GPIO_tri_i({BMC_GPIO_tri_i_3,BMC_GPIO_tri_i_2,BMC_GPIO_tri_i_1,BMC_GPIO_tri_i_0}),
        .BMC_GPIO_tri_o({BMC_GPIO_tri_o_3,BMC_GPIO_tri_o_2,BMC_GPIO_tri_o_1,BMC_GPIO_tri_o_0}),
        .BMC_GPIO_tri_t({BMC_GPIO_tri_t_3,BMC_GPIO_tri_t_2,BMC_GPIO_tri_t_1,BMC_GPIO_tri_t_0}),
        .BMC_UART_rxd(BMC_UART_rxd),
        .BMC_UART_txd(BMC_UART_txd),
        .C0_DDR_SREF_CTRL_IN(C0_DDR_SREF_CTRL_IN),
        .C0_DDR_SREF_CTRL_OUT(C0_DDR_SREF_CTRL_OUT),
        .C1_SYS_CLK_clk_n(C1_SYS_CLK_clk_n),
        .C1_SYS_CLK_clk_p(C1_SYS_CLK_clk_p),
        .C2_DDR_SREF_CTRL_IN(C2_DDR_SREF_CTRL_IN),
        .C2_DDR_SREF_CTRL_OUT(C2_DDR_SREF_CTRL_OUT),
        .C3_DDR_SREF_CTRL_IN(C3_DDR_SREF_CTRL_IN),
        .C3_DDR_SREF_CTRL_OUT(C3_DDR_SREF_CTRL_OUT),
        .MIG_0_RST_N(MIG_0_RST_N),
        .MIG_2_RST_N(MIG_2_RST_N),
        .MIG_3_RST_N(MIG_3_RST_N),
        .M_AXI_LITE_TO_HLS_PR_NORTH_araddr(M_AXI_LITE_TO_HLS_PR_NORTH_araddr),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arprot(M_AXI_LITE_TO_HLS_PR_NORTH_arprot),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arready(M_AXI_LITE_TO_HLS_PR_NORTH_arready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arvalid(M_AXI_LITE_TO_HLS_PR_NORTH_arvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awaddr(M_AXI_LITE_TO_HLS_PR_NORTH_awaddr),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awprot(M_AXI_LITE_TO_HLS_PR_NORTH_awprot),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awready(M_AXI_LITE_TO_HLS_PR_NORTH_awready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awvalid(M_AXI_LITE_TO_HLS_PR_NORTH_awvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bready(M_AXI_LITE_TO_HLS_PR_NORTH_bready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bresp(M_AXI_LITE_TO_HLS_PR_NORTH_bresp),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bvalid(M_AXI_LITE_TO_HLS_PR_NORTH_bvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rdata(M_AXI_LITE_TO_HLS_PR_NORTH_rdata),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rready(M_AXI_LITE_TO_HLS_PR_NORTH_rready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rresp(M_AXI_LITE_TO_HLS_PR_NORTH_rresp),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rvalid(M_AXI_LITE_TO_HLS_PR_NORTH_rvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wdata(M_AXI_LITE_TO_HLS_PR_NORTH_wdata),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wready(M_AXI_LITE_TO_HLS_PR_NORTH_wready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wstrb(M_AXI_LITE_TO_HLS_PR_NORTH_wstrb),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wvalid(M_AXI_LITE_TO_HLS_PR_NORTH_wvalid),
        .RESET_GATE(RESET_GATE),
        .S_AXI_MM_0_araddr(S_AXI_MM_0_araddr),
        .S_AXI_MM_0_arburst(S_AXI_MM_0_arburst),
        .S_AXI_MM_0_arcache(S_AXI_MM_0_arcache),
        .S_AXI_MM_0_arid(S_AXI_MM_0_arid),
        .S_AXI_MM_0_arlen(S_AXI_MM_0_arlen),
        .S_AXI_MM_0_arlock(S_AXI_MM_0_arlock),
        .S_AXI_MM_0_arprot(S_AXI_MM_0_arprot),
        .S_AXI_MM_0_arqos(S_AXI_MM_0_arqos),
        .S_AXI_MM_0_arready(S_AXI_MM_0_arready),
        .S_AXI_MM_0_arregion(S_AXI_MM_0_arregion),
        .S_AXI_MM_0_arsize(S_AXI_MM_0_arsize),
        .S_AXI_MM_0_arvalid(S_AXI_MM_0_arvalid),
        .S_AXI_MM_0_awaddr(S_AXI_MM_0_awaddr),
        .S_AXI_MM_0_awburst(S_AXI_MM_0_awburst),
        .S_AXI_MM_0_awcache(S_AXI_MM_0_awcache),
        .S_AXI_MM_0_awid(S_AXI_MM_0_awid),
        .S_AXI_MM_0_awlen(S_AXI_MM_0_awlen),
        .S_AXI_MM_0_awlock(S_AXI_MM_0_awlock),
        .S_AXI_MM_0_awprot(S_AXI_MM_0_awprot),
        .S_AXI_MM_0_awqos(S_AXI_MM_0_awqos),
        .S_AXI_MM_0_awready(S_AXI_MM_0_awready),
        .S_AXI_MM_0_awregion(S_AXI_MM_0_awregion),
        .S_AXI_MM_0_awsize(S_AXI_MM_0_awsize),
        .S_AXI_MM_0_awvalid(S_AXI_MM_0_awvalid),
        .S_AXI_MM_0_bid(S_AXI_MM_0_bid),
        .S_AXI_MM_0_bready(S_AXI_MM_0_bready),
        .S_AXI_MM_0_bresp(S_AXI_MM_0_bresp),
        .S_AXI_MM_0_bvalid(S_AXI_MM_0_bvalid),
        .S_AXI_MM_0_rdata(S_AXI_MM_0_rdata),
        .S_AXI_MM_0_rid(S_AXI_MM_0_rid),
        .S_AXI_MM_0_rlast(S_AXI_MM_0_rlast),
        .S_AXI_MM_0_rready(S_AXI_MM_0_rready),
        .S_AXI_MM_0_rresp(S_AXI_MM_0_rresp),
        .S_AXI_MM_0_rvalid(S_AXI_MM_0_rvalid),
        .S_AXI_MM_0_wdata(S_AXI_MM_0_wdata),
        .S_AXI_MM_0_wlast(S_AXI_MM_0_wlast),
        .S_AXI_MM_0_wready(S_AXI_MM_0_wready),
        .S_AXI_MM_0_wstrb(S_AXI_MM_0_wstrb),
        .S_AXI_MM_0_wvalid(S_AXI_MM_0_wvalid),
        .S_AXI_MM_PCIM_araddr(S_AXI_MM_PCIM_araddr),
        .S_AXI_MM_PCIM_arburst(S_AXI_MM_PCIM_arburst),
        .S_AXI_MM_PCIM_arcache(S_AXI_MM_PCIM_arcache),
        .S_AXI_MM_PCIM_arid(S_AXI_MM_PCIM_arid),
        .S_AXI_MM_PCIM_arlen(S_AXI_MM_PCIM_arlen),
        .S_AXI_MM_PCIM_arlock(S_AXI_MM_PCIM_arlock),
        .S_AXI_MM_PCIM_arprot(S_AXI_MM_PCIM_arprot),
        .S_AXI_MM_PCIM_arqos(S_AXI_MM_PCIM_arqos),
        .S_AXI_MM_PCIM_arready(S_AXI_MM_PCIM_arready),
        .S_AXI_MM_PCIM_arregion(S_AXI_MM_PCIM_arregion),
        .S_AXI_MM_PCIM_arsize(S_AXI_MM_PCIM_arsize),
        .S_AXI_MM_PCIM_arvalid(S_AXI_MM_PCIM_arvalid),
        .S_AXI_MM_PCIM_awaddr(S_AXI_MM_PCIM_awaddr),
        .S_AXI_MM_PCIM_awburst(S_AXI_MM_PCIM_awburst),
        .S_AXI_MM_PCIM_awcache(S_AXI_MM_PCIM_awcache),
        .S_AXI_MM_PCIM_awid(S_AXI_MM_PCIM_awid),
        .S_AXI_MM_PCIM_awlen(S_AXI_MM_PCIM_awlen),
        .S_AXI_MM_PCIM_awlock(S_AXI_MM_PCIM_awlock),
        .S_AXI_MM_PCIM_awprot(S_AXI_MM_PCIM_awprot),
        .S_AXI_MM_PCIM_awqos(S_AXI_MM_PCIM_awqos),
        .S_AXI_MM_PCIM_awready(S_AXI_MM_PCIM_awready),
        .S_AXI_MM_PCIM_awregion(S_AXI_MM_PCIM_awregion),
        .S_AXI_MM_PCIM_awsize(S_AXI_MM_PCIM_awsize),
        .S_AXI_MM_PCIM_awvalid(S_AXI_MM_PCIM_awvalid),
        .S_AXI_MM_PCIM_bid(S_AXI_MM_PCIM_bid),
        .S_AXI_MM_PCIM_bready(S_AXI_MM_PCIM_bready),
        .S_AXI_MM_PCIM_bresp(S_AXI_MM_PCIM_bresp),
        .S_AXI_MM_PCIM_bvalid(S_AXI_MM_PCIM_bvalid),
        .S_AXI_MM_PCIM_rdata(S_AXI_MM_PCIM_rdata),
        .S_AXI_MM_PCIM_rid(S_AXI_MM_PCIM_rid),
        .S_AXI_MM_PCIM_rlast(S_AXI_MM_PCIM_rlast),
        .S_AXI_MM_PCIM_rready(S_AXI_MM_PCIM_rready),
        .S_AXI_MM_PCIM_rresp(S_AXI_MM_PCIM_rresp),
        .S_AXI_MM_PCIM_rvalid(S_AXI_MM_PCIM_rvalid),
        .S_AXI_MM_PCIM_wdata(S_AXI_MM_PCIM_wdata),
        .S_AXI_MM_PCIM_wlast(S_AXI_MM_PCIM_wlast),
        .S_AXI_MM_PCIM_wready(S_AXI_MM_PCIM_wready),
        .S_AXI_MM_PCIM_wstrb(S_AXI_MM_PCIM_wstrb),
        .S_AXI_MM_PCIM_wvalid(S_AXI_MM_PCIM_wvalid),
        .axi_reset_n_250M_out(axi_reset_n_250M_out),
        .c1_ddr4_act_n(c1_ddr4_act_n),
        .c1_ddr4_adr(c1_ddr4_adr),
        .c1_ddr4_ba(c1_ddr4_ba),
        .c1_ddr4_bg(c1_ddr4_bg),
        .c1_ddr4_ck_c(c1_ddr4_ck_c),
        .c1_ddr4_ck_t(c1_ddr4_ck_t),
        .c1_ddr4_cke(c1_ddr4_cke),
        .c1_ddr4_cs_n(c1_ddr4_cs_n),
        .c1_ddr4_dq(c1_ddr4_dq),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t),
        .c1_ddr4_odt(c1_ddr4_odt),
        .c1_ddr4_par(c1_ddr4_par),
        .c1_ddr4_reset_n(c1_ddr4_reset_n),
        .c1_init_calib_complete(c1_init_calib_complete),
        .clk_out_125M(clk_out_125M),
        .clk_out_250M(clk_out_250M),
        .clk_out_300M(clk_out_300M),
        .clk_out_400M(clk_out_400M),
        .clk_out_PROG(clk_out_PROG),
        .iic_scl_i(iic_scl_i),
        .iic_scl_o(iic_scl_o),
        .iic_scl_t(iic_scl_t),
        .iic_sda_i(iic_sda_i),
        .iic_sda_o(iic_sda_o),
        .iic_sda_t(iic_sda_t),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .rst_main_n(rst_main_n),
        .sys_clk(sys_clk),
        .sys_clk_gt(sys_clk_gt),
        .sys_rst_n(sys_rst_n));
  IOBUF iic_scl_iobuf
       (.I(iic_scl_o),
        .IO(iic_scl_io),
        .O(iic_scl_i),
        .T(iic_scl_t));
  IOBUF iic_sda_iobuf
       (.I(iic_sda_o),
        .IO(iic_sda_io),
        .O(iic_sda_i),
        .T(iic_sda_t));
endmodule
