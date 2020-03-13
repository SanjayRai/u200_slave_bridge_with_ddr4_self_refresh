//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
//Date        : Thu Mar 12 19:36:51 2020
//Host        : mcxlnx running 64-bit CentOS Linux release 7.7.1908 (Core)
//Command     : generate_target dynamic_region_ddr4_wrapper.bd
//Design      : dynamic_region_ddr4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dynamic_region_ddr4_wrapper
   (AXI_RESET_N,
    C0_SYS_CLK_clk_n,
    C0_SYS_CLK_clk_p,
    C2_SYS_CLK_clk_n,
    C2_SYS_CLK_clk_p,
    C3_SYS_CLK_clk_n,
    C3_SYS_CLK_clk_p,
    CLK_IN_250,
    MIG0_DDR4_S_AXI_CTRL_araddr,
    MIG0_DDR4_S_AXI_CTRL_arprot,
    MIG0_DDR4_S_AXI_CTRL_arready,
    MIG0_DDR4_S_AXI_CTRL_arvalid,
    MIG0_DDR4_S_AXI_CTRL_awaddr,
    MIG0_DDR4_S_AXI_CTRL_awprot,
    MIG0_DDR4_S_AXI_CTRL_awready,
    MIG0_DDR4_S_AXI_CTRL_awvalid,
    MIG0_DDR4_S_AXI_CTRL_bready,
    MIG0_DDR4_S_AXI_CTRL_bresp,
    MIG0_DDR4_S_AXI_CTRL_bvalid,
    MIG0_DDR4_S_AXI_CTRL_rdata,
    MIG0_DDR4_S_AXI_CTRL_rready,
    MIG0_DDR4_S_AXI_CTRL_rresp,
    MIG0_DDR4_S_AXI_CTRL_rvalid,
    MIG0_DDR4_S_AXI_CTRL_wdata,
    MIG0_DDR4_S_AXI_CTRL_wready,
    MIG0_DDR4_S_AXI_CTRL_wstrb,
    MIG0_DDR4_S_AXI_CTRL_wvalid,
    MIG2_DDR4_S_AXI_CTRL_araddr,
    MIG2_DDR4_S_AXI_CTRL_arprot,
    MIG2_DDR4_S_AXI_CTRL_arready,
    MIG2_DDR4_S_AXI_CTRL_arvalid,
    MIG2_DDR4_S_AXI_CTRL_awaddr,
    MIG2_DDR4_S_AXI_CTRL_awprot,
    MIG2_DDR4_S_AXI_CTRL_awready,
    MIG2_DDR4_S_AXI_CTRL_awvalid,
    MIG2_DDR4_S_AXI_CTRL_bready,
    MIG2_DDR4_S_AXI_CTRL_bresp,
    MIG2_DDR4_S_AXI_CTRL_bvalid,
    MIG2_DDR4_S_AXI_CTRL_rdata,
    MIG2_DDR4_S_AXI_CTRL_rready,
    MIG2_DDR4_S_AXI_CTRL_rresp,
    MIG2_DDR4_S_AXI_CTRL_rvalid,
    MIG2_DDR4_S_AXI_CTRL_wdata,
    MIG2_DDR4_S_AXI_CTRL_wready,
    MIG2_DDR4_S_AXI_CTRL_wstrb,
    MIG2_DDR4_S_AXI_CTRL_wvalid,
    MIG3_DDR4_S_AXI_CTRL_araddr,
    MIG3_DDR4_S_AXI_CTRL_arprot,
    MIG3_DDR4_S_AXI_CTRL_arready,
    MIG3_DDR4_S_AXI_CTRL_arvalid,
    MIG3_DDR4_S_AXI_CTRL_awaddr,
    MIG3_DDR4_S_AXI_CTRL_awprot,
    MIG3_DDR4_S_AXI_CTRL_awready,
    MIG3_DDR4_S_AXI_CTRL_awvalid,
    MIG3_DDR4_S_AXI_CTRL_bready,
    MIG3_DDR4_S_AXI_CTRL_bresp,
    MIG3_DDR4_S_AXI_CTRL_bvalid,
    MIG3_DDR4_S_AXI_CTRL_rdata,
    MIG3_DDR4_S_AXI_CTRL_rready,
    MIG3_DDR4_S_AXI_CTRL_rresp,
    MIG3_DDR4_S_AXI_CTRL_rvalid,
    MIG3_DDR4_S_AXI_CTRL_wdata,
    MIG3_DDR4_S_AXI_CTRL_wready,
    MIG3_DDR4_S_AXI_CTRL_wstrb,
    MIG3_DDR4_S_AXI_CTRL_wvalid,
    S_AXI_MM_MIG0_araddr,
    S_AXI_MM_MIG0_arburst,
    S_AXI_MM_MIG0_arcache,
    S_AXI_MM_MIG0_arid,
    S_AXI_MM_MIG0_arlen,
    S_AXI_MM_MIG0_arlock,
    S_AXI_MM_MIG0_arprot,
    S_AXI_MM_MIG0_arqos,
    S_AXI_MM_MIG0_arready,
    S_AXI_MM_MIG0_arregion,
    S_AXI_MM_MIG0_arsize,
    S_AXI_MM_MIG0_arvalid,
    S_AXI_MM_MIG0_awaddr,
    S_AXI_MM_MIG0_awburst,
    S_AXI_MM_MIG0_awcache,
    S_AXI_MM_MIG0_awid,
    S_AXI_MM_MIG0_awlen,
    S_AXI_MM_MIG0_awlock,
    S_AXI_MM_MIG0_awprot,
    S_AXI_MM_MIG0_awqos,
    S_AXI_MM_MIG0_awready,
    S_AXI_MM_MIG0_awregion,
    S_AXI_MM_MIG0_awsize,
    S_AXI_MM_MIG0_awvalid,
    S_AXI_MM_MIG0_bid,
    S_AXI_MM_MIG0_bready,
    S_AXI_MM_MIG0_bresp,
    S_AXI_MM_MIG0_bvalid,
    S_AXI_MM_MIG0_rdata,
    S_AXI_MM_MIG0_rid,
    S_AXI_MM_MIG0_rlast,
    S_AXI_MM_MIG0_rready,
    S_AXI_MM_MIG0_rresp,
    S_AXI_MM_MIG0_rvalid,
    S_AXI_MM_MIG0_wdata,
    S_AXI_MM_MIG0_wlast,
    S_AXI_MM_MIG0_wready,
    S_AXI_MM_MIG0_wstrb,
    S_AXI_MM_MIG0_wvalid,
    S_AXI_MM_MIG2_araddr,
    S_AXI_MM_MIG2_arburst,
    S_AXI_MM_MIG2_arcache,
    S_AXI_MM_MIG2_arid,
    S_AXI_MM_MIG2_arlen,
    S_AXI_MM_MIG2_arlock,
    S_AXI_MM_MIG2_arprot,
    S_AXI_MM_MIG2_arqos,
    S_AXI_MM_MIG2_arready,
    S_AXI_MM_MIG2_arregion,
    S_AXI_MM_MIG2_arsize,
    S_AXI_MM_MIG2_arvalid,
    S_AXI_MM_MIG2_awaddr,
    S_AXI_MM_MIG2_awburst,
    S_AXI_MM_MIG2_awcache,
    S_AXI_MM_MIG2_awid,
    S_AXI_MM_MIG2_awlen,
    S_AXI_MM_MIG2_awlock,
    S_AXI_MM_MIG2_awprot,
    S_AXI_MM_MIG2_awqos,
    S_AXI_MM_MIG2_awready,
    S_AXI_MM_MIG2_awregion,
    S_AXI_MM_MIG2_awsize,
    S_AXI_MM_MIG2_awvalid,
    S_AXI_MM_MIG2_bid,
    S_AXI_MM_MIG2_bready,
    S_AXI_MM_MIG2_bresp,
    S_AXI_MM_MIG2_bvalid,
    S_AXI_MM_MIG2_rdata,
    S_AXI_MM_MIG2_rid,
    S_AXI_MM_MIG2_rlast,
    S_AXI_MM_MIG2_rready,
    S_AXI_MM_MIG2_rresp,
    S_AXI_MM_MIG2_rvalid,
    S_AXI_MM_MIG2_wdata,
    S_AXI_MM_MIG2_wlast,
    S_AXI_MM_MIG2_wready,
    S_AXI_MM_MIG2_wstrb,
    S_AXI_MM_MIG2_wvalid,
    S_AXI_MM_MIG3_araddr,
    S_AXI_MM_MIG3_arburst,
    S_AXI_MM_MIG3_arcache,
    S_AXI_MM_MIG3_arid,
    S_AXI_MM_MIG3_arlen,
    S_AXI_MM_MIG3_arlock,
    S_AXI_MM_MIG3_arprot,
    S_AXI_MM_MIG3_arqos,
    S_AXI_MM_MIG3_arready,
    S_AXI_MM_MIG3_arregion,
    S_AXI_MM_MIG3_arsize,
    S_AXI_MM_MIG3_arvalid,
    S_AXI_MM_MIG3_awaddr,
    S_AXI_MM_MIG3_awburst,
    S_AXI_MM_MIG3_awcache,
    S_AXI_MM_MIG3_awid,
    S_AXI_MM_MIG3_awlen,
    S_AXI_MM_MIG3_awlock,
    S_AXI_MM_MIG3_awprot,
    S_AXI_MM_MIG3_awqos,
    S_AXI_MM_MIG3_awready,
    S_AXI_MM_MIG3_awregion,
    S_AXI_MM_MIG3_awsize,
    S_AXI_MM_MIG3_awvalid,
    S_AXI_MM_MIG3_bid,
    S_AXI_MM_MIG3_bready,
    S_AXI_MM_MIG3_bresp,
    S_AXI_MM_MIG3_bvalid,
    S_AXI_MM_MIG3_rdata,
    S_AXI_MM_MIG3_rid,
    S_AXI_MM_MIG3_rlast,
    S_AXI_MM_MIG3_rready,
    S_AXI_MM_MIG3_rresp,
    S_AXI_MM_MIG3_rvalid,
    S_AXI_MM_MIG3_wdata,
    S_AXI_MM_MIG3_wlast,
    S_AXI_MM_MIG3_wready,
    S_AXI_MM_MIG3_wstrb,
    S_AXI_MM_MIG3_wvalid,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_app_mem_init_skip,
    c0_ddr4_app_restore_complete,
    c0_ddr4_app_sref_ack,
    c0_ddr4_app_sref_req,
    c0_ddr4_app_xsdb_select,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_par,
    c0_ddr4_reset_n,
    c0_init_calib_complete,
    c2_ddr4_act_n,
    c2_ddr4_adr,
    c2_ddr4_app_mem_init_skip,
    c2_ddr4_app_restore_complete,
    c2_ddr4_app_sref_ack,
    c2_ddr4_app_sref_req,
    c2_ddr4_app_xsdb_select,
    c2_ddr4_ba,
    c2_ddr4_bg,
    c2_ddr4_ck_c,
    c2_ddr4_ck_t,
    c2_ddr4_cke,
    c2_ddr4_cs_n,
    c2_ddr4_dq,
    c2_ddr4_dqs_c,
    c2_ddr4_dqs_t,
    c2_ddr4_odt,
    c2_ddr4_par,
    c2_ddr4_reset_n,
    c2_init_calib_complete,
    c3_ddr4_act_n,
    c3_ddr4_adr,
    c3_ddr4_app_mem_init_skip,
    c3_ddr4_app_restore_complete,
    c3_ddr4_app_sref_ack,
    c3_ddr4_app_sref_req,
    c3_ddr4_app_xsdb_select,
    c3_ddr4_ba,
    c3_ddr4_bg,
    c3_ddr4_ck_c,
    c3_ddr4_ck_t,
    c3_ddr4_cke,
    c3_ddr4_cs_n,
    c3_ddr4_dq,
    c3_ddr4_dqs_c,
    c3_ddr4_dqs_t,
    c3_ddr4_odt,
    c3_ddr4_par,
    c3_ddr4_reset_n,
    c3_init_calib_complete,
    sys_rst_ddr_0,
    sys_rst_ddr_2,
    sys_rst_ddr_3);
  input AXI_RESET_N;
  input C0_SYS_CLK_clk_n;
  input C0_SYS_CLK_clk_p;
  input C2_SYS_CLK_clk_n;
  input C2_SYS_CLK_clk_p;
  input C3_SYS_CLK_clk_n;
  input C3_SYS_CLK_clk_p;
  input CLK_IN_250;
  input [31:0]MIG0_DDR4_S_AXI_CTRL_araddr;
  input [2:0]MIG0_DDR4_S_AXI_CTRL_arprot;
  output [0:0]MIG0_DDR4_S_AXI_CTRL_arready;
  input [0:0]MIG0_DDR4_S_AXI_CTRL_arvalid;
  input [31:0]MIG0_DDR4_S_AXI_CTRL_awaddr;
  input [2:0]MIG0_DDR4_S_AXI_CTRL_awprot;
  output [0:0]MIG0_DDR4_S_AXI_CTRL_awready;
  input [0:0]MIG0_DDR4_S_AXI_CTRL_awvalid;
  input [0:0]MIG0_DDR4_S_AXI_CTRL_bready;
  output [1:0]MIG0_DDR4_S_AXI_CTRL_bresp;
  output [0:0]MIG0_DDR4_S_AXI_CTRL_bvalid;
  output [31:0]MIG0_DDR4_S_AXI_CTRL_rdata;
  input [0:0]MIG0_DDR4_S_AXI_CTRL_rready;
  output [1:0]MIG0_DDR4_S_AXI_CTRL_rresp;
  output [0:0]MIG0_DDR4_S_AXI_CTRL_rvalid;
  input [31:0]MIG0_DDR4_S_AXI_CTRL_wdata;
  output [0:0]MIG0_DDR4_S_AXI_CTRL_wready;
  input [3:0]MIG0_DDR4_S_AXI_CTRL_wstrb;
  input [0:0]MIG0_DDR4_S_AXI_CTRL_wvalid;
  input [31:0]MIG2_DDR4_S_AXI_CTRL_araddr;
  input [2:0]MIG2_DDR4_S_AXI_CTRL_arprot;
  output [0:0]MIG2_DDR4_S_AXI_CTRL_arready;
  input [0:0]MIG2_DDR4_S_AXI_CTRL_arvalid;
  input [31:0]MIG2_DDR4_S_AXI_CTRL_awaddr;
  input [2:0]MIG2_DDR4_S_AXI_CTRL_awprot;
  output [0:0]MIG2_DDR4_S_AXI_CTRL_awready;
  input [0:0]MIG2_DDR4_S_AXI_CTRL_awvalid;
  input [0:0]MIG2_DDR4_S_AXI_CTRL_bready;
  output [1:0]MIG2_DDR4_S_AXI_CTRL_bresp;
  output [0:0]MIG2_DDR4_S_AXI_CTRL_bvalid;
  output [31:0]MIG2_DDR4_S_AXI_CTRL_rdata;
  input [0:0]MIG2_DDR4_S_AXI_CTRL_rready;
  output [1:0]MIG2_DDR4_S_AXI_CTRL_rresp;
  output [0:0]MIG2_DDR4_S_AXI_CTRL_rvalid;
  input [31:0]MIG2_DDR4_S_AXI_CTRL_wdata;
  output [0:0]MIG2_DDR4_S_AXI_CTRL_wready;
  input [3:0]MIG2_DDR4_S_AXI_CTRL_wstrb;
  input [0:0]MIG2_DDR4_S_AXI_CTRL_wvalid;
  input [31:0]MIG3_DDR4_S_AXI_CTRL_araddr;
  input [2:0]MIG3_DDR4_S_AXI_CTRL_arprot;
  output [0:0]MIG3_DDR4_S_AXI_CTRL_arready;
  input [0:0]MIG3_DDR4_S_AXI_CTRL_arvalid;
  input [31:0]MIG3_DDR4_S_AXI_CTRL_awaddr;
  input [2:0]MIG3_DDR4_S_AXI_CTRL_awprot;
  output [0:0]MIG3_DDR4_S_AXI_CTRL_awready;
  input [0:0]MIG3_DDR4_S_AXI_CTRL_awvalid;
  input [0:0]MIG3_DDR4_S_AXI_CTRL_bready;
  output [1:0]MIG3_DDR4_S_AXI_CTRL_bresp;
  output [0:0]MIG3_DDR4_S_AXI_CTRL_bvalid;
  output [31:0]MIG3_DDR4_S_AXI_CTRL_rdata;
  input [0:0]MIG3_DDR4_S_AXI_CTRL_rready;
  output [1:0]MIG3_DDR4_S_AXI_CTRL_rresp;
  output [0:0]MIG3_DDR4_S_AXI_CTRL_rvalid;
  input [31:0]MIG3_DDR4_S_AXI_CTRL_wdata;
  output [0:0]MIG3_DDR4_S_AXI_CTRL_wready;
  input [3:0]MIG3_DDR4_S_AXI_CTRL_wstrb;
  input [0:0]MIG3_DDR4_S_AXI_CTRL_wvalid;
  input [63:0]S_AXI_MM_MIG0_araddr;
  input [1:0]S_AXI_MM_MIG0_arburst;
  input [3:0]S_AXI_MM_MIG0_arcache;
  input [5:0]S_AXI_MM_MIG0_arid;
  input [7:0]S_AXI_MM_MIG0_arlen;
  input [0:0]S_AXI_MM_MIG0_arlock;
  input [2:0]S_AXI_MM_MIG0_arprot;
  input [3:0]S_AXI_MM_MIG0_arqos;
  output S_AXI_MM_MIG0_arready;
  input [3:0]S_AXI_MM_MIG0_arregion;
  input [2:0]S_AXI_MM_MIG0_arsize;
  input S_AXI_MM_MIG0_arvalid;
  input [63:0]S_AXI_MM_MIG0_awaddr;
  input [1:0]S_AXI_MM_MIG0_awburst;
  input [3:0]S_AXI_MM_MIG0_awcache;
  input [5:0]S_AXI_MM_MIG0_awid;
  input [7:0]S_AXI_MM_MIG0_awlen;
  input [0:0]S_AXI_MM_MIG0_awlock;
  input [2:0]S_AXI_MM_MIG0_awprot;
  input [3:0]S_AXI_MM_MIG0_awqos;
  output S_AXI_MM_MIG0_awready;
  input [3:0]S_AXI_MM_MIG0_awregion;
  input [2:0]S_AXI_MM_MIG0_awsize;
  input S_AXI_MM_MIG0_awvalid;
  output [5:0]S_AXI_MM_MIG0_bid;
  input S_AXI_MM_MIG0_bready;
  output [1:0]S_AXI_MM_MIG0_bresp;
  output S_AXI_MM_MIG0_bvalid;
  output [511:0]S_AXI_MM_MIG0_rdata;
  output [5:0]S_AXI_MM_MIG0_rid;
  output S_AXI_MM_MIG0_rlast;
  input S_AXI_MM_MIG0_rready;
  output [1:0]S_AXI_MM_MIG0_rresp;
  output S_AXI_MM_MIG0_rvalid;
  input [511:0]S_AXI_MM_MIG0_wdata;
  input S_AXI_MM_MIG0_wlast;
  output S_AXI_MM_MIG0_wready;
  input [63:0]S_AXI_MM_MIG0_wstrb;
  input S_AXI_MM_MIG0_wvalid;
  input [63:0]S_AXI_MM_MIG2_araddr;
  input [1:0]S_AXI_MM_MIG2_arburst;
  input [3:0]S_AXI_MM_MIG2_arcache;
  input [5:0]S_AXI_MM_MIG2_arid;
  input [7:0]S_AXI_MM_MIG2_arlen;
  input [0:0]S_AXI_MM_MIG2_arlock;
  input [2:0]S_AXI_MM_MIG2_arprot;
  input [3:0]S_AXI_MM_MIG2_arqos;
  output S_AXI_MM_MIG2_arready;
  input [3:0]S_AXI_MM_MIG2_arregion;
  input [2:0]S_AXI_MM_MIG2_arsize;
  input S_AXI_MM_MIG2_arvalid;
  input [63:0]S_AXI_MM_MIG2_awaddr;
  input [1:0]S_AXI_MM_MIG2_awburst;
  input [3:0]S_AXI_MM_MIG2_awcache;
  input [5:0]S_AXI_MM_MIG2_awid;
  input [7:0]S_AXI_MM_MIG2_awlen;
  input [0:0]S_AXI_MM_MIG2_awlock;
  input [2:0]S_AXI_MM_MIG2_awprot;
  input [3:0]S_AXI_MM_MIG2_awqos;
  output S_AXI_MM_MIG2_awready;
  input [3:0]S_AXI_MM_MIG2_awregion;
  input [2:0]S_AXI_MM_MIG2_awsize;
  input S_AXI_MM_MIG2_awvalid;
  output [5:0]S_AXI_MM_MIG2_bid;
  input S_AXI_MM_MIG2_bready;
  output [1:0]S_AXI_MM_MIG2_bresp;
  output S_AXI_MM_MIG2_bvalid;
  output [511:0]S_AXI_MM_MIG2_rdata;
  output [5:0]S_AXI_MM_MIG2_rid;
  output S_AXI_MM_MIG2_rlast;
  input S_AXI_MM_MIG2_rready;
  output [1:0]S_AXI_MM_MIG2_rresp;
  output S_AXI_MM_MIG2_rvalid;
  input [511:0]S_AXI_MM_MIG2_wdata;
  input S_AXI_MM_MIG2_wlast;
  output S_AXI_MM_MIG2_wready;
  input [63:0]S_AXI_MM_MIG2_wstrb;
  input S_AXI_MM_MIG2_wvalid;
  input [63:0]S_AXI_MM_MIG3_araddr;
  input [1:0]S_AXI_MM_MIG3_arburst;
  input [3:0]S_AXI_MM_MIG3_arcache;
  input [5:0]S_AXI_MM_MIG3_arid;
  input [7:0]S_AXI_MM_MIG3_arlen;
  input [0:0]S_AXI_MM_MIG3_arlock;
  input [2:0]S_AXI_MM_MIG3_arprot;
  input [3:0]S_AXI_MM_MIG3_arqos;
  output S_AXI_MM_MIG3_arready;
  input [3:0]S_AXI_MM_MIG3_arregion;
  input [2:0]S_AXI_MM_MIG3_arsize;
  input S_AXI_MM_MIG3_arvalid;
  input [63:0]S_AXI_MM_MIG3_awaddr;
  input [1:0]S_AXI_MM_MIG3_awburst;
  input [3:0]S_AXI_MM_MIG3_awcache;
  input [5:0]S_AXI_MM_MIG3_awid;
  input [7:0]S_AXI_MM_MIG3_awlen;
  input [0:0]S_AXI_MM_MIG3_awlock;
  input [2:0]S_AXI_MM_MIG3_awprot;
  input [3:0]S_AXI_MM_MIG3_awqos;
  output S_AXI_MM_MIG3_awready;
  input [3:0]S_AXI_MM_MIG3_awregion;
  input [2:0]S_AXI_MM_MIG3_awsize;
  input S_AXI_MM_MIG3_awvalid;
  output [5:0]S_AXI_MM_MIG3_bid;
  input S_AXI_MM_MIG3_bready;
  output [1:0]S_AXI_MM_MIG3_bresp;
  output S_AXI_MM_MIG3_bvalid;
  output [511:0]S_AXI_MM_MIG3_rdata;
  output [5:0]S_AXI_MM_MIG3_rid;
  output S_AXI_MM_MIG3_rlast;
  input S_AXI_MM_MIG3_rready;
  output [1:0]S_AXI_MM_MIG3_rresp;
  output S_AXI_MM_MIG3_rvalid;
  input [511:0]S_AXI_MM_MIG3_wdata;
  input S_AXI_MM_MIG3_wlast;
  output S_AXI_MM_MIG3_wready;
  input [63:0]S_AXI_MM_MIG3_wstrb;
  input S_AXI_MM_MIG3_wvalid;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  input c0_ddr4_app_mem_init_skip;
  input c0_ddr4_app_restore_complete;
  output c0_ddr4_app_sref_ack;
  input c0_ddr4_app_sref_req;
  input c0_ddr4_app_xsdb_select;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [71:0]c0_ddr4_dq;
  inout [17:0]c0_ddr4_dqs_c;
  inout [17:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_par;
  output c0_ddr4_reset_n;
  output c0_init_calib_complete;
  output c2_ddr4_act_n;
  output [16:0]c2_ddr4_adr;
  input c2_ddr4_app_mem_init_skip;
  input c2_ddr4_app_restore_complete;
  output c2_ddr4_app_sref_ack;
  input c2_ddr4_app_sref_req;
  input c2_ddr4_app_xsdb_select;
  output [1:0]c2_ddr4_ba;
  output [1:0]c2_ddr4_bg;
  output [0:0]c2_ddr4_ck_c;
  output [0:0]c2_ddr4_ck_t;
  output [0:0]c2_ddr4_cke;
  output [0:0]c2_ddr4_cs_n;
  inout [71:0]c2_ddr4_dq;
  inout [17:0]c2_ddr4_dqs_c;
  inout [17:0]c2_ddr4_dqs_t;
  output [0:0]c2_ddr4_odt;
  output c2_ddr4_par;
  output c2_ddr4_reset_n;
  output c2_init_calib_complete;
  output c3_ddr4_act_n;
  output [16:0]c3_ddr4_adr;
  input c3_ddr4_app_mem_init_skip;
  input c3_ddr4_app_restore_complete;
  output c3_ddr4_app_sref_ack;
  input c3_ddr4_app_sref_req;
  input c3_ddr4_app_xsdb_select;
  output [1:0]c3_ddr4_ba;
  output [1:0]c3_ddr4_bg;
  output [0:0]c3_ddr4_ck_c;
  output [0:0]c3_ddr4_ck_t;
  output [0:0]c3_ddr4_cke;
  output [0:0]c3_ddr4_cs_n;
  inout [71:0]c3_ddr4_dq;
  inout [17:0]c3_ddr4_dqs_c;
  inout [17:0]c3_ddr4_dqs_t;
  output [0:0]c3_ddr4_odt;
  output c3_ddr4_par;
  output c3_ddr4_reset_n;
  output c3_init_calib_complete;
  input sys_rst_ddr_0;
  input sys_rst_ddr_2;
  input sys_rst_ddr_3;

  wire AXI_RESET_N;
  wire C0_SYS_CLK_clk_n;
  wire C0_SYS_CLK_clk_p;
  wire C2_SYS_CLK_clk_n;
  wire C2_SYS_CLK_clk_p;
  wire C3_SYS_CLK_clk_n;
  wire C3_SYS_CLK_clk_p;
  wire CLK_IN_250;
  wire [31:0]MIG0_DDR4_S_AXI_CTRL_araddr;
  wire [2:0]MIG0_DDR4_S_AXI_CTRL_arprot;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_arready;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_arvalid;
  wire [31:0]MIG0_DDR4_S_AXI_CTRL_awaddr;
  wire [2:0]MIG0_DDR4_S_AXI_CTRL_awprot;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_awready;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_awvalid;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_bready;
  wire [1:0]MIG0_DDR4_S_AXI_CTRL_bresp;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_bvalid;
  wire [31:0]MIG0_DDR4_S_AXI_CTRL_rdata;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_rready;
  wire [1:0]MIG0_DDR4_S_AXI_CTRL_rresp;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_rvalid;
  wire [31:0]MIG0_DDR4_S_AXI_CTRL_wdata;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_wready;
  wire [3:0]MIG0_DDR4_S_AXI_CTRL_wstrb;
  wire [0:0]MIG0_DDR4_S_AXI_CTRL_wvalid;
  wire [31:0]MIG2_DDR4_S_AXI_CTRL_araddr;
  wire [2:0]MIG2_DDR4_S_AXI_CTRL_arprot;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_arready;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_arvalid;
  wire [31:0]MIG2_DDR4_S_AXI_CTRL_awaddr;
  wire [2:0]MIG2_DDR4_S_AXI_CTRL_awprot;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_awready;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_awvalid;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_bready;
  wire [1:0]MIG2_DDR4_S_AXI_CTRL_bresp;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_bvalid;
  wire [31:0]MIG2_DDR4_S_AXI_CTRL_rdata;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_rready;
  wire [1:0]MIG2_DDR4_S_AXI_CTRL_rresp;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_rvalid;
  wire [31:0]MIG2_DDR4_S_AXI_CTRL_wdata;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_wready;
  wire [3:0]MIG2_DDR4_S_AXI_CTRL_wstrb;
  wire [0:0]MIG2_DDR4_S_AXI_CTRL_wvalid;
  wire [31:0]MIG3_DDR4_S_AXI_CTRL_araddr;
  wire [2:0]MIG3_DDR4_S_AXI_CTRL_arprot;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_arready;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_arvalid;
  wire [31:0]MIG3_DDR4_S_AXI_CTRL_awaddr;
  wire [2:0]MIG3_DDR4_S_AXI_CTRL_awprot;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_awready;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_awvalid;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_bready;
  wire [1:0]MIG3_DDR4_S_AXI_CTRL_bresp;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_bvalid;
  wire [31:0]MIG3_DDR4_S_AXI_CTRL_rdata;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_rready;
  wire [1:0]MIG3_DDR4_S_AXI_CTRL_rresp;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_rvalid;
  wire [31:0]MIG3_DDR4_S_AXI_CTRL_wdata;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_wready;
  wire [3:0]MIG3_DDR4_S_AXI_CTRL_wstrb;
  wire [0:0]MIG3_DDR4_S_AXI_CTRL_wvalid;
  wire [63:0]S_AXI_MM_MIG0_araddr;
  wire [1:0]S_AXI_MM_MIG0_arburst;
  wire [3:0]S_AXI_MM_MIG0_arcache;
  wire [5:0]S_AXI_MM_MIG0_arid;
  wire [7:0]S_AXI_MM_MIG0_arlen;
  wire [0:0]S_AXI_MM_MIG0_arlock;
  wire [2:0]S_AXI_MM_MIG0_arprot;
  wire [3:0]S_AXI_MM_MIG0_arqos;
  wire S_AXI_MM_MIG0_arready;
  wire [3:0]S_AXI_MM_MIG0_arregion;
  wire [2:0]S_AXI_MM_MIG0_arsize;
  wire S_AXI_MM_MIG0_arvalid;
  wire [63:0]S_AXI_MM_MIG0_awaddr;
  wire [1:0]S_AXI_MM_MIG0_awburst;
  wire [3:0]S_AXI_MM_MIG0_awcache;
  wire [5:0]S_AXI_MM_MIG0_awid;
  wire [7:0]S_AXI_MM_MIG0_awlen;
  wire [0:0]S_AXI_MM_MIG0_awlock;
  wire [2:0]S_AXI_MM_MIG0_awprot;
  wire [3:0]S_AXI_MM_MIG0_awqos;
  wire S_AXI_MM_MIG0_awready;
  wire [3:0]S_AXI_MM_MIG0_awregion;
  wire [2:0]S_AXI_MM_MIG0_awsize;
  wire S_AXI_MM_MIG0_awvalid;
  wire [5:0]S_AXI_MM_MIG0_bid;
  wire S_AXI_MM_MIG0_bready;
  wire [1:0]S_AXI_MM_MIG0_bresp;
  wire S_AXI_MM_MIG0_bvalid;
  wire [511:0]S_AXI_MM_MIG0_rdata;
  wire [5:0]S_AXI_MM_MIG0_rid;
  wire S_AXI_MM_MIG0_rlast;
  wire S_AXI_MM_MIG0_rready;
  wire [1:0]S_AXI_MM_MIG0_rresp;
  wire S_AXI_MM_MIG0_rvalid;
  wire [511:0]S_AXI_MM_MIG0_wdata;
  wire S_AXI_MM_MIG0_wlast;
  wire S_AXI_MM_MIG0_wready;
  wire [63:0]S_AXI_MM_MIG0_wstrb;
  wire S_AXI_MM_MIG0_wvalid;
  wire [63:0]S_AXI_MM_MIG2_araddr;
  wire [1:0]S_AXI_MM_MIG2_arburst;
  wire [3:0]S_AXI_MM_MIG2_arcache;
  wire [5:0]S_AXI_MM_MIG2_arid;
  wire [7:0]S_AXI_MM_MIG2_arlen;
  wire [0:0]S_AXI_MM_MIG2_arlock;
  wire [2:0]S_AXI_MM_MIG2_arprot;
  wire [3:0]S_AXI_MM_MIG2_arqos;
  wire S_AXI_MM_MIG2_arready;
  wire [3:0]S_AXI_MM_MIG2_arregion;
  wire [2:0]S_AXI_MM_MIG2_arsize;
  wire S_AXI_MM_MIG2_arvalid;
  wire [63:0]S_AXI_MM_MIG2_awaddr;
  wire [1:0]S_AXI_MM_MIG2_awburst;
  wire [3:0]S_AXI_MM_MIG2_awcache;
  wire [5:0]S_AXI_MM_MIG2_awid;
  wire [7:0]S_AXI_MM_MIG2_awlen;
  wire [0:0]S_AXI_MM_MIG2_awlock;
  wire [2:0]S_AXI_MM_MIG2_awprot;
  wire [3:0]S_AXI_MM_MIG2_awqos;
  wire S_AXI_MM_MIG2_awready;
  wire [3:0]S_AXI_MM_MIG2_awregion;
  wire [2:0]S_AXI_MM_MIG2_awsize;
  wire S_AXI_MM_MIG2_awvalid;
  wire [5:0]S_AXI_MM_MIG2_bid;
  wire S_AXI_MM_MIG2_bready;
  wire [1:0]S_AXI_MM_MIG2_bresp;
  wire S_AXI_MM_MIG2_bvalid;
  wire [511:0]S_AXI_MM_MIG2_rdata;
  wire [5:0]S_AXI_MM_MIG2_rid;
  wire S_AXI_MM_MIG2_rlast;
  wire S_AXI_MM_MIG2_rready;
  wire [1:0]S_AXI_MM_MIG2_rresp;
  wire S_AXI_MM_MIG2_rvalid;
  wire [511:0]S_AXI_MM_MIG2_wdata;
  wire S_AXI_MM_MIG2_wlast;
  wire S_AXI_MM_MIG2_wready;
  wire [63:0]S_AXI_MM_MIG2_wstrb;
  wire S_AXI_MM_MIG2_wvalid;
  wire [63:0]S_AXI_MM_MIG3_araddr;
  wire [1:0]S_AXI_MM_MIG3_arburst;
  wire [3:0]S_AXI_MM_MIG3_arcache;
  wire [5:0]S_AXI_MM_MIG3_arid;
  wire [7:0]S_AXI_MM_MIG3_arlen;
  wire [0:0]S_AXI_MM_MIG3_arlock;
  wire [2:0]S_AXI_MM_MIG3_arprot;
  wire [3:0]S_AXI_MM_MIG3_arqos;
  wire S_AXI_MM_MIG3_arready;
  wire [3:0]S_AXI_MM_MIG3_arregion;
  wire [2:0]S_AXI_MM_MIG3_arsize;
  wire S_AXI_MM_MIG3_arvalid;
  wire [63:0]S_AXI_MM_MIG3_awaddr;
  wire [1:0]S_AXI_MM_MIG3_awburst;
  wire [3:0]S_AXI_MM_MIG3_awcache;
  wire [5:0]S_AXI_MM_MIG3_awid;
  wire [7:0]S_AXI_MM_MIG3_awlen;
  wire [0:0]S_AXI_MM_MIG3_awlock;
  wire [2:0]S_AXI_MM_MIG3_awprot;
  wire [3:0]S_AXI_MM_MIG3_awqos;
  wire S_AXI_MM_MIG3_awready;
  wire [3:0]S_AXI_MM_MIG3_awregion;
  wire [2:0]S_AXI_MM_MIG3_awsize;
  wire S_AXI_MM_MIG3_awvalid;
  wire [5:0]S_AXI_MM_MIG3_bid;
  wire S_AXI_MM_MIG3_bready;
  wire [1:0]S_AXI_MM_MIG3_bresp;
  wire S_AXI_MM_MIG3_bvalid;
  wire [511:0]S_AXI_MM_MIG3_rdata;
  wire [5:0]S_AXI_MM_MIG3_rid;
  wire S_AXI_MM_MIG3_rlast;
  wire S_AXI_MM_MIG3_rready;
  wire [1:0]S_AXI_MM_MIG3_rresp;
  wire S_AXI_MM_MIG3_rvalid;
  wire [511:0]S_AXI_MM_MIG3_wdata;
  wire S_AXI_MM_MIG3_wlast;
  wire S_AXI_MM_MIG3_wready;
  wire [63:0]S_AXI_MM_MIG3_wstrb;
  wire S_AXI_MM_MIG3_wvalid;
  wire c0_ddr4_act_n;
  wire [16:0]c0_ddr4_adr;
  wire c0_ddr4_app_mem_init_skip;
  wire c0_ddr4_app_restore_complete;
  wire c0_ddr4_app_sref_ack;
  wire c0_ddr4_app_sref_req;
  wire c0_ddr4_app_xsdb_select;
  wire [1:0]c0_ddr4_ba;
  wire [1:0]c0_ddr4_bg;
  wire [0:0]c0_ddr4_ck_c;
  wire [0:0]c0_ddr4_ck_t;
  wire [0:0]c0_ddr4_cke;
  wire [0:0]c0_ddr4_cs_n;
  wire [71:0]c0_ddr4_dq;
  wire [17:0]c0_ddr4_dqs_c;
  wire [17:0]c0_ddr4_dqs_t;
  wire [0:0]c0_ddr4_odt;
  wire c0_ddr4_par;
  wire c0_ddr4_reset_n;
  wire c0_init_calib_complete;
  wire c2_ddr4_act_n;
  wire [16:0]c2_ddr4_adr;
  wire c2_ddr4_app_mem_init_skip;
  wire c2_ddr4_app_restore_complete;
  wire c2_ddr4_app_sref_ack;
  wire c2_ddr4_app_sref_req;
  wire c2_ddr4_app_xsdb_select;
  wire [1:0]c2_ddr4_ba;
  wire [1:0]c2_ddr4_bg;
  wire [0:0]c2_ddr4_ck_c;
  wire [0:0]c2_ddr4_ck_t;
  wire [0:0]c2_ddr4_cke;
  wire [0:0]c2_ddr4_cs_n;
  wire [71:0]c2_ddr4_dq;
  wire [17:0]c2_ddr4_dqs_c;
  wire [17:0]c2_ddr4_dqs_t;
  wire [0:0]c2_ddr4_odt;
  wire c2_ddr4_par;
  wire c2_ddr4_reset_n;
  wire c2_init_calib_complete;
  wire c3_ddr4_act_n;
  wire [16:0]c3_ddr4_adr;
  wire c3_ddr4_app_mem_init_skip;
  wire c3_ddr4_app_restore_complete;
  wire c3_ddr4_app_sref_ack;
  wire c3_ddr4_app_sref_req;
  wire c3_ddr4_app_xsdb_select;
  wire [1:0]c3_ddr4_ba;
  wire [1:0]c3_ddr4_bg;
  wire [0:0]c3_ddr4_ck_c;
  wire [0:0]c3_ddr4_ck_t;
  wire [0:0]c3_ddr4_cke;
  wire [0:0]c3_ddr4_cs_n;
  wire [71:0]c3_ddr4_dq;
  wire [17:0]c3_ddr4_dqs_c;
  wire [17:0]c3_ddr4_dqs_t;
  wire [0:0]c3_ddr4_odt;
  wire c3_ddr4_par;
  wire c3_ddr4_reset_n;
  wire c3_init_calib_complete;
  wire sys_rst_ddr_0;
  wire sys_rst_ddr_2;
  wire sys_rst_ddr_3;

  dynamic_region_ddr4 dynamic_region_ddr4_i
       (.AXI_RESET_N(AXI_RESET_N),
        .C0_SYS_CLK_clk_n(C0_SYS_CLK_clk_n),
        .C0_SYS_CLK_clk_p(C0_SYS_CLK_clk_p),
        .C2_SYS_CLK_clk_n(C2_SYS_CLK_clk_n),
        .C2_SYS_CLK_clk_p(C2_SYS_CLK_clk_p),
        .C3_SYS_CLK_clk_n(C3_SYS_CLK_clk_n),
        .C3_SYS_CLK_clk_p(C3_SYS_CLK_clk_p),
        .CLK_IN_250(CLK_IN_250),
        .MIG0_DDR4_S_AXI_CTRL_araddr(MIG0_DDR4_S_AXI_CTRL_araddr),
        .MIG0_DDR4_S_AXI_CTRL_arprot(MIG0_DDR4_S_AXI_CTRL_arprot),
        .MIG0_DDR4_S_AXI_CTRL_arready(MIG0_DDR4_S_AXI_CTRL_arready),
        .MIG0_DDR4_S_AXI_CTRL_arvalid(MIG0_DDR4_S_AXI_CTRL_arvalid),
        .MIG0_DDR4_S_AXI_CTRL_awaddr(MIG0_DDR4_S_AXI_CTRL_awaddr),
        .MIG0_DDR4_S_AXI_CTRL_awprot(MIG0_DDR4_S_AXI_CTRL_awprot),
        .MIG0_DDR4_S_AXI_CTRL_awready(MIG0_DDR4_S_AXI_CTRL_awready),
        .MIG0_DDR4_S_AXI_CTRL_awvalid(MIG0_DDR4_S_AXI_CTRL_awvalid),
        .MIG0_DDR4_S_AXI_CTRL_bready(MIG0_DDR4_S_AXI_CTRL_bready),
        .MIG0_DDR4_S_AXI_CTRL_bresp(MIG0_DDR4_S_AXI_CTRL_bresp),
        .MIG0_DDR4_S_AXI_CTRL_bvalid(MIG0_DDR4_S_AXI_CTRL_bvalid),
        .MIG0_DDR4_S_AXI_CTRL_rdata(MIG0_DDR4_S_AXI_CTRL_rdata),
        .MIG0_DDR4_S_AXI_CTRL_rready(MIG0_DDR4_S_AXI_CTRL_rready),
        .MIG0_DDR4_S_AXI_CTRL_rresp(MIG0_DDR4_S_AXI_CTRL_rresp),
        .MIG0_DDR4_S_AXI_CTRL_rvalid(MIG0_DDR4_S_AXI_CTRL_rvalid),
        .MIG0_DDR4_S_AXI_CTRL_wdata(MIG0_DDR4_S_AXI_CTRL_wdata),
        .MIG0_DDR4_S_AXI_CTRL_wready(MIG0_DDR4_S_AXI_CTRL_wready),
        .MIG0_DDR4_S_AXI_CTRL_wstrb(MIG0_DDR4_S_AXI_CTRL_wstrb),
        .MIG0_DDR4_S_AXI_CTRL_wvalid(MIG0_DDR4_S_AXI_CTRL_wvalid),
        .MIG2_DDR4_S_AXI_CTRL_araddr(MIG2_DDR4_S_AXI_CTRL_araddr),
        .MIG2_DDR4_S_AXI_CTRL_arprot(MIG2_DDR4_S_AXI_CTRL_arprot),
        .MIG2_DDR4_S_AXI_CTRL_arready(MIG2_DDR4_S_AXI_CTRL_arready),
        .MIG2_DDR4_S_AXI_CTRL_arvalid(MIG2_DDR4_S_AXI_CTRL_arvalid),
        .MIG2_DDR4_S_AXI_CTRL_awaddr(MIG2_DDR4_S_AXI_CTRL_awaddr),
        .MIG2_DDR4_S_AXI_CTRL_awprot(MIG2_DDR4_S_AXI_CTRL_awprot),
        .MIG2_DDR4_S_AXI_CTRL_awready(MIG2_DDR4_S_AXI_CTRL_awready),
        .MIG2_DDR4_S_AXI_CTRL_awvalid(MIG2_DDR4_S_AXI_CTRL_awvalid),
        .MIG2_DDR4_S_AXI_CTRL_bready(MIG2_DDR4_S_AXI_CTRL_bready),
        .MIG2_DDR4_S_AXI_CTRL_bresp(MIG2_DDR4_S_AXI_CTRL_bresp),
        .MIG2_DDR4_S_AXI_CTRL_bvalid(MIG2_DDR4_S_AXI_CTRL_bvalid),
        .MIG2_DDR4_S_AXI_CTRL_rdata(MIG2_DDR4_S_AXI_CTRL_rdata),
        .MIG2_DDR4_S_AXI_CTRL_rready(MIG2_DDR4_S_AXI_CTRL_rready),
        .MIG2_DDR4_S_AXI_CTRL_rresp(MIG2_DDR4_S_AXI_CTRL_rresp),
        .MIG2_DDR4_S_AXI_CTRL_rvalid(MIG2_DDR4_S_AXI_CTRL_rvalid),
        .MIG2_DDR4_S_AXI_CTRL_wdata(MIG2_DDR4_S_AXI_CTRL_wdata),
        .MIG2_DDR4_S_AXI_CTRL_wready(MIG2_DDR4_S_AXI_CTRL_wready),
        .MIG2_DDR4_S_AXI_CTRL_wstrb(MIG2_DDR4_S_AXI_CTRL_wstrb),
        .MIG2_DDR4_S_AXI_CTRL_wvalid(MIG2_DDR4_S_AXI_CTRL_wvalid),
        .MIG3_DDR4_S_AXI_CTRL_araddr(MIG3_DDR4_S_AXI_CTRL_araddr),
        .MIG3_DDR4_S_AXI_CTRL_arprot(MIG3_DDR4_S_AXI_CTRL_arprot),
        .MIG3_DDR4_S_AXI_CTRL_arready(MIG3_DDR4_S_AXI_CTRL_arready),
        .MIG3_DDR4_S_AXI_CTRL_arvalid(MIG3_DDR4_S_AXI_CTRL_arvalid),
        .MIG3_DDR4_S_AXI_CTRL_awaddr(MIG3_DDR4_S_AXI_CTRL_awaddr),
        .MIG3_DDR4_S_AXI_CTRL_awprot(MIG3_DDR4_S_AXI_CTRL_awprot),
        .MIG3_DDR4_S_AXI_CTRL_awready(MIG3_DDR4_S_AXI_CTRL_awready),
        .MIG3_DDR4_S_AXI_CTRL_awvalid(MIG3_DDR4_S_AXI_CTRL_awvalid),
        .MIG3_DDR4_S_AXI_CTRL_bready(MIG3_DDR4_S_AXI_CTRL_bready),
        .MIG3_DDR4_S_AXI_CTRL_bresp(MIG3_DDR4_S_AXI_CTRL_bresp),
        .MIG3_DDR4_S_AXI_CTRL_bvalid(MIG3_DDR4_S_AXI_CTRL_bvalid),
        .MIG3_DDR4_S_AXI_CTRL_rdata(MIG3_DDR4_S_AXI_CTRL_rdata),
        .MIG3_DDR4_S_AXI_CTRL_rready(MIG3_DDR4_S_AXI_CTRL_rready),
        .MIG3_DDR4_S_AXI_CTRL_rresp(MIG3_DDR4_S_AXI_CTRL_rresp),
        .MIG3_DDR4_S_AXI_CTRL_rvalid(MIG3_DDR4_S_AXI_CTRL_rvalid),
        .MIG3_DDR4_S_AXI_CTRL_wdata(MIG3_DDR4_S_AXI_CTRL_wdata),
        .MIG3_DDR4_S_AXI_CTRL_wready(MIG3_DDR4_S_AXI_CTRL_wready),
        .MIG3_DDR4_S_AXI_CTRL_wstrb(MIG3_DDR4_S_AXI_CTRL_wstrb),
        .MIG3_DDR4_S_AXI_CTRL_wvalid(MIG3_DDR4_S_AXI_CTRL_wvalid),
        .S_AXI_MM_MIG0_araddr(S_AXI_MM_MIG0_araddr),
        .S_AXI_MM_MIG0_arburst(S_AXI_MM_MIG0_arburst),
        .S_AXI_MM_MIG0_arcache(S_AXI_MM_MIG0_arcache),
        .S_AXI_MM_MIG0_arid(S_AXI_MM_MIG0_arid),
        .S_AXI_MM_MIG0_arlen(S_AXI_MM_MIG0_arlen),
        .S_AXI_MM_MIG0_arlock(S_AXI_MM_MIG0_arlock),
        .S_AXI_MM_MIG0_arprot(S_AXI_MM_MIG0_arprot),
        .S_AXI_MM_MIG0_arqos(S_AXI_MM_MIG0_arqos),
        .S_AXI_MM_MIG0_arready(S_AXI_MM_MIG0_arready),
        .S_AXI_MM_MIG0_arregion(S_AXI_MM_MIG0_arregion),
        .S_AXI_MM_MIG0_arsize(S_AXI_MM_MIG0_arsize),
        .S_AXI_MM_MIG0_arvalid(S_AXI_MM_MIG0_arvalid),
        .S_AXI_MM_MIG0_awaddr(S_AXI_MM_MIG0_awaddr),
        .S_AXI_MM_MIG0_awburst(S_AXI_MM_MIG0_awburst),
        .S_AXI_MM_MIG0_awcache(S_AXI_MM_MIG0_awcache),
        .S_AXI_MM_MIG0_awid(S_AXI_MM_MIG0_awid),
        .S_AXI_MM_MIG0_awlen(S_AXI_MM_MIG0_awlen),
        .S_AXI_MM_MIG0_awlock(S_AXI_MM_MIG0_awlock),
        .S_AXI_MM_MIG0_awprot(S_AXI_MM_MIG0_awprot),
        .S_AXI_MM_MIG0_awqos(S_AXI_MM_MIG0_awqos),
        .S_AXI_MM_MIG0_awready(S_AXI_MM_MIG0_awready),
        .S_AXI_MM_MIG0_awregion(S_AXI_MM_MIG0_awregion),
        .S_AXI_MM_MIG0_awsize(S_AXI_MM_MIG0_awsize),
        .S_AXI_MM_MIG0_awvalid(S_AXI_MM_MIG0_awvalid),
        .S_AXI_MM_MIG0_bid(S_AXI_MM_MIG0_bid),
        .S_AXI_MM_MIG0_bready(S_AXI_MM_MIG0_bready),
        .S_AXI_MM_MIG0_bresp(S_AXI_MM_MIG0_bresp),
        .S_AXI_MM_MIG0_bvalid(S_AXI_MM_MIG0_bvalid),
        .S_AXI_MM_MIG0_rdata(S_AXI_MM_MIG0_rdata),
        .S_AXI_MM_MIG0_rid(S_AXI_MM_MIG0_rid),
        .S_AXI_MM_MIG0_rlast(S_AXI_MM_MIG0_rlast),
        .S_AXI_MM_MIG0_rready(S_AXI_MM_MIG0_rready),
        .S_AXI_MM_MIG0_rresp(S_AXI_MM_MIG0_rresp),
        .S_AXI_MM_MIG0_rvalid(S_AXI_MM_MIG0_rvalid),
        .S_AXI_MM_MIG0_wdata(S_AXI_MM_MIG0_wdata),
        .S_AXI_MM_MIG0_wlast(S_AXI_MM_MIG0_wlast),
        .S_AXI_MM_MIG0_wready(S_AXI_MM_MIG0_wready),
        .S_AXI_MM_MIG0_wstrb(S_AXI_MM_MIG0_wstrb),
        .S_AXI_MM_MIG0_wvalid(S_AXI_MM_MIG0_wvalid),
        .S_AXI_MM_MIG2_araddr(S_AXI_MM_MIG2_araddr),
        .S_AXI_MM_MIG2_arburst(S_AXI_MM_MIG2_arburst),
        .S_AXI_MM_MIG2_arcache(S_AXI_MM_MIG2_arcache),
        .S_AXI_MM_MIG2_arid(S_AXI_MM_MIG2_arid),
        .S_AXI_MM_MIG2_arlen(S_AXI_MM_MIG2_arlen),
        .S_AXI_MM_MIG2_arlock(S_AXI_MM_MIG2_arlock),
        .S_AXI_MM_MIG2_arprot(S_AXI_MM_MIG2_arprot),
        .S_AXI_MM_MIG2_arqos(S_AXI_MM_MIG2_arqos),
        .S_AXI_MM_MIG2_arready(S_AXI_MM_MIG2_arready),
        .S_AXI_MM_MIG2_arregion(S_AXI_MM_MIG2_arregion),
        .S_AXI_MM_MIG2_arsize(S_AXI_MM_MIG2_arsize),
        .S_AXI_MM_MIG2_arvalid(S_AXI_MM_MIG2_arvalid),
        .S_AXI_MM_MIG2_awaddr(S_AXI_MM_MIG2_awaddr),
        .S_AXI_MM_MIG2_awburst(S_AXI_MM_MIG2_awburst),
        .S_AXI_MM_MIG2_awcache(S_AXI_MM_MIG2_awcache),
        .S_AXI_MM_MIG2_awid(S_AXI_MM_MIG2_awid),
        .S_AXI_MM_MIG2_awlen(S_AXI_MM_MIG2_awlen),
        .S_AXI_MM_MIG2_awlock(S_AXI_MM_MIG2_awlock),
        .S_AXI_MM_MIG2_awprot(S_AXI_MM_MIG2_awprot),
        .S_AXI_MM_MIG2_awqos(S_AXI_MM_MIG2_awqos),
        .S_AXI_MM_MIG2_awready(S_AXI_MM_MIG2_awready),
        .S_AXI_MM_MIG2_awregion(S_AXI_MM_MIG2_awregion),
        .S_AXI_MM_MIG2_awsize(S_AXI_MM_MIG2_awsize),
        .S_AXI_MM_MIG2_awvalid(S_AXI_MM_MIG2_awvalid),
        .S_AXI_MM_MIG2_bid(S_AXI_MM_MIG2_bid),
        .S_AXI_MM_MIG2_bready(S_AXI_MM_MIG2_bready),
        .S_AXI_MM_MIG2_bresp(S_AXI_MM_MIG2_bresp),
        .S_AXI_MM_MIG2_bvalid(S_AXI_MM_MIG2_bvalid),
        .S_AXI_MM_MIG2_rdata(S_AXI_MM_MIG2_rdata),
        .S_AXI_MM_MIG2_rid(S_AXI_MM_MIG2_rid),
        .S_AXI_MM_MIG2_rlast(S_AXI_MM_MIG2_rlast),
        .S_AXI_MM_MIG2_rready(S_AXI_MM_MIG2_rready),
        .S_AXI_MM_MIG2_rresp(S_AXI_MM_MIG2_rresp),
        .S_AXI_MM_MIG2_rvalid(S_AXI_MM_MIG2_rvalid),
        .S_AXI_MM_MIG2_wdata(S_AXI_MM_MIG2_wdata),
        .S_AXI_MM_MIG2_wlast(S_AXI_MM_MIG2_wlast),
        .S_AXI_MM_MIG2_wready(S_AXI_MM_MIG2_wready),
        .S_AXI_MM_MIG2_wstrb(S_AXI_MM_MIG2_wstrb),
        .S_AXI_MM_MIG2_wvalid(S_AXI_MM_MIG2_wvalid),
        .S_AXI_MM_MIG3_araddr(S_AXI_MM_MIG3_araddr),
        .S_AXI_MM_MIG3_arburst(S_AXI_MM_MIG3_arburst),
        .S_AXI_MM_MIG3_arcache(S_AXI_MM_MIG3_arcache),
        .S_AXI_MM_MIG3_arid(S_AXI_MM_MIG3_arid),
        .S_AXI_MM_MIG3_arlen(S_AXI_MM_MIG3_arlen),
        .S_AXI_MM_MIG3_arlock(S_AXI_MM_MIG3_arlock),
        .S_AXI_MM_MIG3_arprot(S_AXI_MM_MIG3_arprot),
        .S_AXI_MM_MIG3_arqos(S_AXI_MM_MIG3_arqos),
        .S_AXI_MM_MIG3_arready(S_AXI_MM_MIG3_arready),
        .S_AXI_MM_MIG3_arregion(S_AXI_MM_MIG3_arregion),
        .S_AXI_MM_MIG3_arsize(S_AXI_MM_MIG3_arsize),
        .S_AXI_MM_MIG3_arvalid(S_AXI_MM_MIG3_arvalid),
        .S_AXI_MM_MIG3_awaddr(S_AXI_MM_MIG3_awaddr),
        .S_AXI_MM_MIG3_awburst(S_AXI_MM_MIG3_awburst),
        .S_AXI_MM_MIG3_awcache(S_AXI_MM_MIG3_awcache),
        .S_AXI_MM_MIG3_awid(S_AXI_MM_MIG3_awid),
        .S_AXI_MM_MIG3_awlen(S_AXI_MM_MIG3_awlen),
        .S_AXI_MM_MIG3_awlock(S_AXI_MM_MIG3_awlock),
        .S_AXI_MM_MIG3_awprot(S_AXI_MM_MIG3_awprot),
        .S_AXI_MM_MIG3_awqos(S_AXI_MM_MIG3_awqos),
        .S_AXI_MM_MIG3_awready(S_AXI_MM_MIG3_awready),
        .S_AXI_MM_MIG3_awregion(S_AXI_MM_MIG3_awregion),
        .S_AXI_MM_MIG3_awsize(S_AXI_MM_MIG3_awsize),
        .S_AXI_MM_MIG3_awvalid(S_AXI_MM_MIG3_awvalid),
        .S_AXI_MM_MIG3_bid(S_AXI_MM_MIG3_bid),
        .S_AXI_MM_MIG3_bready(S_AXI_MM_MIG3_bready),
        .S_AXI_MM_MIG3_bresp(S_AXI_MM_MIG3_bresp),
        .S_AXI_MM_MIG3_bvalid(S_AXI_MM_MIG3_bvalid),
        .S_AXI_MM_MIG3_rdata(S_AXI_MM_MIG3_rdata),
        .S_AXI_MM_MIG3_rid(S_AXI_MM_MIG3_rid),
        .S_AXI_MM_MIG3_rlast(S_AXI_MM_MIG3_rlast),
        .S_AXI_MM_MIG3_rready(S_AXI_MM_MIG3_rready),
        .S_AXI_MM_MIG3_rresp(S_AXI_MM_MIG3_rresp),
        .S_AXI_MM_MIG3_rvalid(S_AXI_MM_MIG3_rvalid),
        .S_AXI_MM_MIG3_wdata(S_AXI_MM_MIG3_wdata),
        .S_AXI_MM_MIG3_wlast(S_AXI_MM_MIG3_wlast),
        .S_AXI_MM_MIG3_wready(S_AXI_MM_MIG3_wready),
        .S_AXI_MM_MIG3_wstrb(S_AXI_MM_MIG3_wstrb),
        .S_AXI_MM_MIG3_wvalid(S_AXI_MM_MIG3_wvalid),
        .c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_app_mem_init_skip(c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(c0_ddr4_app_restore_complete),
        .c0_ddr4_app_sref_ack(c0_ddr4_app_sref_ack),
        .c0_ddr4_app_sref_req(c0_ddr4_app_sref_req),
        .c0_ddr4_app_xsdb_select(c0_ddr4_app_xsdb_select),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_par(c0_ddr4_par),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .c0_init_calib_complete(c0_init_calib_complete),
        .c2_ddr4_act_n(c2_ddr4_act_n),
        .c2_ddr4_adr(c2_ddr4_adr),
        .c2_ddr4_app_mem_init_skip(c2_ddr4_app_mem_init_skip),
        .c2_ddr4_app_restore_complete(c2_ddr4_app_restore_complete),
        .c2_ddr4_app_sref_ack(c2_ddr4_app_sref_ack),
        .c2_ddr4_app_sref_req(c2_ddr4_app_sref_req),
        .c2_ddr4_app_xsdb_select(c2_ddr4_app_xsdb_select),
        .c2_ddr4_ba(c2_ddr4_ba),
        .c2_ddr4_bg(c2_ddr4_bg),
        .c2_ddr4_ck_c(c2_ddr4_ck_c),
        .c2_ddr4_ck_t(c2_ddr4_ck_t),
        .c2_ddr4_cke(c2_ddr4_cke),
        .c2_ddr4_cs_n(c2_ddr4_cs_n),
        .c2_ddr4_dq(c2_ddr4_dq),
        .c2_ddr4_dqs_c(c2_ddr4_dqs_c),
        .c2_ddr4_dqs_t(c2_ddr4_dqs_t),
        .c2_ddr4_odt(c2_ddr4_odt),
        .c2_ddr4_par(c2_ddr4_par),
        .c2_ddr4_reset_n(c2_ddr4_reset_n),
        .c2_init_calib_complete(c2_init_calib_complete),
        .c3_ddr4_act_n(c3_ddr4_act_n),
        .c3_ddr4_adr(c3_ddr4_adr),
        .c3_ddr4_app_mem_init_skip(c3_ddr4_app_mem_init_skip),
        .c3_ddr4_app_restore_complete(c3_ddr4_app_restore_complete),
        .c3_ddr4_app_sref_ack(c3_ddr4_app_sref_ack),
        .c3_ddr4_app_sref_req(c3_ddr4_app_sref_req),
        .c3_ddr4_app_xsdb_select(c3_ddr4_app_xsdb_select),
        .c3_ddr4_ba(c3_ddr4_ba),
        .c3_ddr4_bg(c3_ddr4_bg),
        .c3_ddr4_ck_c(c3_ddr4_ck_c),
        .c3_ddr4_ck_t(c3_ddr4_ck_t),
        .c3_ddr4_cke(c3_ddr4_cke),
        .c3_ddr4_cs_n(c3_ddr4_cs_n),
        .c3_ddr4_dq(c3_ddr4_dq),
        .c3_ddr4_dqs_c(c3_ddr4_dqs_c),
        .c3_ddr4_dqs_t(c3_ddr4_dqs_t),
        .c3_ddr4_odt(c3_ddr4_odt),
        .c3_ddr4_par(c3_ddr4_par),
        .c3_ddr4_reset_n(c3_ddr4_reset_n),
        .c3_init_calib_complete(c3_init_calib_complete),
        .sys_rst_ddr_0(sys_rst_ddr_0),
        .sys_rst_ddr_2(sys_rst_ddr_2),
        .sys_rst_ddr_3(sys_rst_ddr_3));
endmodule
