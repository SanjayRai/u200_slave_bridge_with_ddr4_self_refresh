//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
//Date        : Fri Mar 13 02:02:31 2020
//Host        : mcxlnx running 64-bit CentOS Linux release 7.7.1908 (Core)
//Command     : generate_target axi_ic_axi4lite_wrapper.bd
//Design      : axi_ic_axi4lite_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_ic_axi4lite_wrapper
   (AXI_RESET_N,
    CLK_IN_250,
    MIG0_M_AXI_LITE_araddr,
    MIG0_M_AXI_LITE_arprot,
    MIG0_M_AXI_LITE_arready,
    MIG0_M_AXI_LITE_arvalid,
    MIG0_M_AXI_LITE_awaddr,
    MIG0_M_AXI_LITE_awprot,
    MIG0_M_AXI_LITE_awready,
    MIG0_M_AXI_LITE_awvalid,
    MIG0_M_AXI_LITE_bready,
    MIG0_M_AXI_LITE_bresp,
    MIG0_M_AXI_LITE_bvalid,
    MIG0_M_AXI_LITE_rdata,
    MIG0_M_AXI_LITE_rready,
    MIG0_M_AXI_LITE_rresp,
    MIG0_M_AXI_LITE_rvalid,
    MIG0_M_AXI_LITE_wdata,
    MIG0_M_AXI_LITE_wready,
    MIG0_M_AXI_LITE_wstrb,
    MIG0_M_AXI_LITE_wvalid,
    MIG2_M_AXI_LITE_araddr,
    MIG2_M_AXI_LITE_arprot,
    MIG2_M_AXI_LITE_arready,
    MIG2_M_AXI_LITE_arvalid,
    MIG2_M_AXI_LITE_awaddr,
    MIG2_M_AXI_LITE_awprot,
    MIG2_M_AXI_LITE_awready,
    MIG2_M_AXI_LITE_awvalid,
    MIG2_M_AXI_LITE_bready,
    MIG2_M_AXI_LITE_bresp,
    MIG2_M_AXI_LITE_bvalid,
    MIG2_M_AXI_LITE_rdata,
    MIG2_M_AXI_LITE_rready,
    MIG2_M_AXI_LITE_rresp,
    MIG2_M_AXI_LITE_rvalid,
    MIG2_M_AXI_LITE_wdata,
    MIG2_M_AXI_LITE_wready,
    MIG2_M_AXI_LITE_wstrb,
    MIG2_M_AXI_LITE_wvalid,
    MIG3_M_AXI_LITE_araddr,
    MIG3_M_AXI_LITE_arprot,
    MIG3_M_AXI_LITE_arready,
    MIG3_M_AXI_LITE_arvalid,
    MIG3_M_AXI_LITE_awaddr,
    MIG3_M_AXI_LITE_awprot,
    MIG3_M_AXI_LITE_awready,
    MIG3_M_AXI_LITE_awvalid,
    MIG3_M_AXI_LITE_bready,
    MIG3_M_AXI_LITE_bresp,
    MIG3_M_AXI_LITE_bvalid,
    MIG3_M_AXI_LITE_rdata,
    MIG3_M_AXI_LITE_rready,
    MIG3_M_AXI_LITE_rresp,
    MIG3_M_AXI_LITE_rvalid,
    MIG3_M_AXI_LITE_wdata,
    MIG3_M_AXI_LITE_wready,
    MIG3_M_AXI_LITE_wstrb,
    MIG3_M_AXI_LITE_wvalid,
    M_AXI_LITE_araddr,
    M_AXI_LITE_arprot,
    M_AXI_LITE_arready,
    M_AXI_LITE_arvalid,
    M_AXI_LITE_awaddr,
    M_AXI_LITE_awprot,
    M_AXI_LITE_awready,
    M_AXI_LITE_awvalid,
    M_AXI_LITE_bready,
    M_AXI_LITE_bresp,
    M_AXI_LITE_bvalid,
    M_AXI_LITE_rdata,
    M_AXI_LITE_rready,
    M_AXI_LITE_rresp,
    M_AXI_LITE_rvalid,
    M_AXI_LITE_wdata,
    M_AXI_LITE_wready,
    M_AXI_LITE_wstrb,
    M_AXI_LITE_wvalid,
    S_AXI_LITE_FROM_STATIC_araddr,
    S_AXI_LITE_FROM_STATIC_arprot,
    S_AXI_LITE_FROM_STATIC_arready,
    S_AXI_LITE_FROM_STATIC_arvalid,
    S_AXI_LITE_FROM_STATIC_awaddr,
    S_AXI_LITE_FROM_STATIC_awprot,
    S_AXI_LITE_FROM_STATIC_awready,
    S_AXI_LITE_FROM_STATIC_awvalid,
    S_AXI_LITE_FROM_STATIC_bready,
    S_AXI_LITE_FROM_STATIC_bresp,
    S_AXI_LITE_FROM_STATIC_bvalid,
    S_AXI_LITE_FROM_STATIC_rdata,
    S_AXI_LITE_FROM_STATIC_rready,
    S_AXI_LITE_FROM_STATIC_rresp,
    S_AXI_LITE_FROM_STATIC_rvalid,
    S_AXI_LITE_FROM_STATIC_wdata,
    S_AXI_LITE_FROM_STATIC_wready,
    S_AXI_LITE_FROM_STATIC_wstrb,
    S_AXI_LITE_FROM_STATIC_wvalid);
  input AXI_RESET_N;
  input CLK_IN_250;
  output [31:0]MIG0_M_AXI_LITE_araddr;
  output [2:0]MIG0_M_AXI_LITE_arprot;
  input MIG0_M_AXI_LITE_arready;
  output MIG0_M_AXI_LITE_arvalid;
  output [31:0]MIG0_M_AXI_LITE_awaddr;
  output [2:0]MIG0_M_AXI_LITE_awprot;
  input MIG0_M_AXI_LITE_awready;
  output MIG0_M_AXI_LITE_awvalid;
  output MIG0_M_AXI_LITE_bready;
  input [1:0]MIG0_M_AXI_LITE_bresp;
  input MIG0_M_AXI_LITE_bvalid;
  input [31:0]MIG0_M_AXI_LITE_rdata;
  output MIG0_M_AXI_LITE_rready;
  input [1:0]MIG0_M_AXI_LITE_rresp;
  input MIG0_M_AXI_LITE_rvalid;
  output [31:0]MIG0_M_AXI_LITE_wdata;
  input MIG0_M_AXI_LITE_wready;
  output [3:0]MIG0_M_AXI_LITE_wstrb;
  output MIG0_M_AXI_LITE_wvalid;
  output [31:0]MIG2_M_AXI_LITE_araddr;
  output [2:0]MIG2_M_AXI_LITE_arprot;
  input MIG2_M_AXI_LITE_arready;
  output MIG2_M_AXI_LITE_arvalid;
  output [31:0]MIG2_M_AXI_LITE_awaddr;
  output [2:0]MIG2_M_AXI_LITE_awprot;
  input MIG2_M_AXI_LITE_awready;
  output MIG2_M_AXI_LITE_awvalid;
  output MIG2_M_AXI_LITE_bready;
  input [1:0]MIG2_M_AXI_LITE_bresp;
  input MIG2_M_AXI_LITE_bvalid;
  input [31:0]MIG2_M_AXI_LITE_rdata;
  output MIG2_M_AXI_LITE_rready;
  input [1:0]MIG2_M_AXI_LITE_rresp;
  input MIG2_M_AXI_LITE_rvalid;
  output [31:0]MIG2_M_AXI_LITE_wdata;
  input MIG2_M_AXI_LITE_wready;
  output [3:0]MIG2_M_AXI_LITE_wstrb;
  output MIG2_M_AXI_LITE_wvalid;
  output [31:0]MIG3_M_AXI_LITE_araddr;
  output [2:0]MIG3_M_AXI_LITE_arprot;
  input MIG3_M_AXI_LITE_arready;
  output MIG3_M_AXI_LITE_arvalid;
  output [31:0]MIG3_M_AXI_LITE_awaddr;
  output [2:0]MIG3_M_AXI_LITE_awprot;
  input MIG3_M_AXI_LITE_awready;
  output MIG3_M_AXI_LITE_awvalid;
  output MIG3_M_AXI_LITE_bready;
  input [1:0]MIG3_M_AXI_LITE_bresp;
  input MIG3_M_AXI_LITE_bvalid;
  input [31:0]MIG3_M_AXI_LITE_rdata;
  output MIG3_M_AXI_LITE_rready;
  input [1:0]MIG3_M_AXI_LITE_rresp;
  input MIG3_M_AXI_LITE_rvalid;
  output [31:0]MIG3_M_AXI_LITE_wdata;
  input MIG3_M_AXI_LITE_wready;
  output [3:0]MIG3_M_AXI_LITE_wstrb;
  output MIG3_M_AXI_LITE_wvalid;
  output [31:0]M_AXI_LITE_araddr;
  output [2:0]M_AXI_LITE_arprot;
  input M_AXI_LITE_arready;
  output M_AXI_LITE_arvalid;
  output [31:0]M_AXI_LITE_awaddr;
  output [2:0]M_AXI_LITE_awprot;
  input M_AXI_LITE_awready;
  output M_AXI_LITE_awvalid;
  output M_AXI_LITE_bready;
  input [1:0]M_AXI_LITE_bresp;
  input M_AXI_LITE_bvalid;
  input [31:0]M_AXI_LITE_rdata;
  output M_AXI_LITE_rready;
  input [1:0]M_AXI_LITE_rresp;
  input M_AXI_LITE_rvalid;
  output [31:0]M_AXI_LITE_wdata;
  input M_AXI_LITE_wready;
  output [3:0]M_AXI_LITE_wstrb;
  output M_AXI_LITE_wvalid;
  input [31:0]S_AXI_LITE_FROM_STATIC_araddr;
  input [2:0]S_AXI_LITE_FROM_STATIC_arprot;
  output S_AXI_LITE_FROM_STATIC_arready;
  input S_AXI_LITE_FROM_STATIC_arvalid;
  input [31:0]S_AXI_LITE_FROM_STATIC_awaddr;
  input [2:0]S_AXI_LITE_FROM_STATIC_awprot;
  output S_AXI_LITE_FROM_STATIC_awready;
  input S_AXI_LITE_FROM_STATIC_awvalid;
  input S_AXI_LITE_FROM_STATIC_bready;
  output [1:0]S_AXI_LITE_FROM_STATIC_bresp;
  output S_AXI_LITE_FROM_STATIC_bvalid;
  output [31:0]S_AXI_LITE_FROM_STATIC_rdata;
  input S_AXI_LITE_FROM_STATIC_rready;
  output [1:0]S_AXI_LITE_FROM_STATIC_rresp;
  output S_AXI_LITE_FROM_STATIC_rvalid;
  input [31:0]S_AXI_LITE_FROM_STATIC_wdata;
  output S_AXI_LITE_FROM_STATIC_wready;
  input [3:0]S_AXI_LITE_FROM_STATIC_wstrb;
  input S_AXI_LITE_FROM_STATIC_wvalid;

  wire AXI_RESET_N;
  wire CLK_IN_250;
  wire [31:0]MIG0_M_AXI_LITE_araddr;
  wire [2:0]MIG0_M_AXI_LITE_arprot;
  wire MIG0_M_AXI_LITE_arready;
  wire MIG0_M_AXI_LITE_arvalid;
  wire [31:0]MIG0_M_AXI_LITE_awaddr;
  wire [2:0]MIG0_M_AXI_LITE_awprot;
  wire MIG0_M_AXI_LITE_awready;
  wire MIG0_M_AXI_LITE_awvalid;
  wire MIG0_M_AXI_LITE_bready;
  wire [1:0]MIG0_M_AXI_LITE_bresp;
  wire MIG0_M_AXI_LITE_bvalid;
  wire [31:0]MIG0_M_AXI_LITE_rdata;
  wire MIG0_M_AXI_LITE_rready;
  wire [1:0]MIG0_M_AXI_LITE_rresp;
  wire MIG0_M_AXI_LITE_rvalid;
  wire [31:0]MIG0_M_AXI_LITE_wdata;
  wire MIG0_M_AXI_LITE_wready;
  wire [3:0]MIG0_M_AXI_LITE_wstrb;
  wire MIG0_M_AXI_LITE_wvalid;
  wire [31:0]MIG2_M_AXI_LITE_araddr;
  wire [2:0]MIG2_M_AXI_LITE_arprot;
  wire MIG2_M_AXI_LITE_arready;
  wire MIG2_M_AXI_LITE_arvalid;
  wire [31:0]MIG2_M_AXI_LITE_awaddr;
  wire [2:0]MIG2_M_AXI_LITE_awprot;
  wire MIG2_M_AXI_LITE_awready;
  wire MIG2_M_AXI_LITE_awvalid;
  wire MIG2_M_AXI_LITE_bready;
  wire [1:0]MIG2_M_AXI_LITE_bresp;
  wire MIG2_M_AXI_LITE_bvalid;
  wire [31:0]MIG2_M_AXI_LITE_rdata;
  wire MIG2_M_AXI_LITE_rready;
  wire [1:0]MIG2_M_AXI_LITE_rresp;
  wire MIG2_M_AXI_LITE_rvalid;
  wire [31:0]MIG2_M_AXI_LITE_wdata;
  wire MIG2_M_AXI_LITE_wready;
  wire [3:0]MIG2_M_AXI_LITE_wstrb;
  wire MIG2_M_AXI_LITE_wvalid;
  wire [31:0]MIG3_M_AXI_LITE_araddr;
  wire [2:0]MIG3_M_AXI_LITE_arprot;
  wire MIG3_M_AXI_LITE_arready;
  wire MIG3_M_AXI_LITE_arvalid;
  wire [31:0]MIG3_M_AXI_LITE_awaddr;
  wire [2:0]MIG3_M_AXI_LITE_awprot;
  wire MIG3_M_AXI_LITE_awready;
  wire MIG3_M_AXI_LITE_awvalid;
  wire MIG3_M_AXI_LITE_bready;
  wire [1:0]MIG3_M_AXI_LITE_bresp;
  wire MIG3_M_AXI_LITE_bvalid;
  wire [31:0]MIG3_M_AXI_LITE_rdata;
  wire MIG3_M_AXI_LITE_rready;
  wire [1:0]MIG3_M_AXI_LITE_rresp;
  wire MIG3_M_AXI_LITE_rvalid;
  wire [31:0]MIG3_M_AXI_LITE_wdata;
  wire MIG3_M_AXI_LITE_wready;
  wire [3:0]MIG3_M_AXI_LITE_wstrb;
  wire MIG3_M_AXI_LITE_wvalid;
  wire [31:0]M_AXI_LITE_araddr;
  wire [2:0]M_AXI_LITE_arprot;
  wire M_AXI_LITE_arready;
  wire M_AXI_LITE_arvalid;
  wire [31:0]M_AXI_LITE_awaddr;
  wire [2:0]M_AXI_LITE_awprot;
  wire M_AXI_LITE_awready;
  wire M_AXI_LITE_awvalid;
  wire M_AXI_LITE_bready;
  wire [1:0]M_AXI_LITE_bresp;
  wire M_AXI_LITE_bvalid;
  wire [31:0]M_AXI_LITE_rdata;
  wire M_AXI_LITE_rready;
  wire [1:0]M_AXI_LITE_rresp;
  wire M_AXI_LITE_rvalid;
  wire [31:0]M_AXI_LITE_wdata;
  wire M_AXI_LITE_wready;
  wire [3:0]M_AXI_LITE_wstrb;
  wire M_AXI_LITE_wvalid;
  wire [31:0]S_AXI_LITE_FROM_STATIC_araddr;
  wire [2:0]S_AXI_LITE_FROM_STATIC_arprot;
  wire S_AXI_LITE_FROM_STATIC_arready;
  wire S_AXI_LITE_FROM_STATIC_arvalid;
  wire [31:0]S_AXI_LITE_FROM_STATIC_awaddr;
  wire [2:0]S_AXI_LITE_FROM_STATIC_awprot;
  wire S_AXI_LITE_FROM_STATIC_awready;
  wire S_AXI_LITE_FROM_STATIC_awvalid;
  wire S_AXI_LITE_FROM_STATIC_bready;
  wire [1:0]S_AXI_LITE_FROM_STATIC_bresp;
  wire S_AXI_LITE_FROM_STATIC_bvalid;
  wire [31:0]S_AXI_LITE_FROM_STATIC_rdata;
  wire S_AXI_LITE_FROM_STATIC_rready;
  wire [1:0]S_AXI_LITE_FROM_STATIC_rresp;
  wire S_AXI_LITE_FROM_STATIC_rvalid;
  wire [31:0]S_AXI_LITE_FROM_STATIC_wdata;
  wire S_AXI_LITE_FROM_STATIC_wready;
  wire [3:0]S_AXI_LITE_FROM_STATIC_wstrb;
  wire S_AXI_LITE_FROM_STATIC_wvalid;

  axi_ic_axi4lite axi_ic_axi4lite_i
       (.AXI_RESET_N(AXI_RESET_N),
        .CLK_IN_250(CLK_IN_250),
        .MIG0_M_AXI_LITE_araddr(MIG0_M_AXI_LITE_araddr),
        .MIG0_M_AXI_LITE_arprot(MIG0_M_AXI_LITE_arprot),
        .MIG0_M_AXI_LITE_arready(MIG0_M_AXI_LITE_arready),
        .MIG0_M_AXI_LITE_arvalid(MIG0_M_AXI_LITE_arvalid),
        .MIG0_M_AXI_LITE_awaddr(MIG0_M_AXI_LITE_awaddr),
        .MIG0_M_AXI_LITE_awprot(MIG0_M_AXI_LITE_awprot),
        .MIG0_M_AXI_LITE_awready(MIG0_M_AXI_LITE_awready),
        .MIG0_M_AXI_LITE_awvalid(MIG0_M_AXI_LITE_awvalid),
        .MIG0_M_AXI_LITE_bready(MIG0_M_AXI_LITE_bready),
        .MIG0_M_AXI_LITE_bresp(MIG0_M_AXI_LITE_bresp),
        .MIG0_M_AXI_LITE_bvalid(MIG0_M_AXI_LITE_bvalid),
        .MIG0_M_AXI_LITE_rdata(MIG0_M_AXI_LITE_rdata),
        .MIG0_M_AXI_LITE_rready(MIG0_M_AXI_LITE_rready),
        .MIG0_M_AXI_LITE_rresp(MIG0_M_AXI_LITE_rresp),
        .MIG0_M_AXI_LITE_rvalid(MIG0_M_AXI_LITE_rvalid),
        .MIG0_M_AXI_LITE_wdata(MIG0_M_AXI_LITE_wdata),
        .MIG0_M_AXI_LITE_wready(MIG0_M_AXI_LITE_wready),
        .MIG0_M_AXI_LITE_wstrb(MIG0_M_AXI_LITE_wstrb),
        .MIG0_M_AXI_LITE_wvalid(MIG0_M_AXI_LITE_wvalid),
        .MIG2_M_AXI_LITE_araddr(MIG2_M_AXI_LITE_araddr),
        .MIG2_M_AXI_LITE_arprot(MIG2_M_AXI_LITE_arprot),
        .MIG2_M_AXI_LITE_arready(MIG2_M_AXI_LITE_arready),
        .MIG2_M_AXI_LITE_arvalid(MIG2_M_AXI_LITE_arvalid),
        .MIG2_M_AXI_LITE_awaddr(MIG2_M_AXI_LITE_awaddr),
        .MIG2_M_AXI_LITE_awprot(MIG2_M_AXI_LITE_awprot),
        .MIG2_M_AXI_LITE_awready(MIG2_M_AXI_LITE_awready),
        .MIG2_M_AXI_LITE_awvalid(MIG2_M_AXI_LITE_awvalid),
        .MIG2_M_AXI_LITE_bready(MIG2_M_AXI_LITE_bready),
        .MIG2_M_AXI_LITE_bresp(MIG2_M_AXI_LITE_bresp),
        .MIG2_M_AXI_LITE_bvalid(MIG2_M_AXI_LITE_bvalid),
        .MIG2_M_AXI_LITE_rdata(MIG2_M_AXI_LITE_rdata),
        .MIG2_M_AXI_LITE_rready(MIG2_M_AXI_LITE_rready),
        .MIG2_M_AXI_LITE_rresp(MIG2_M_AXI_LITE_rresp),
        .MIG2_M_AXI_LITE_rvalid(MIG2_M_AXI_LITE_rvalid),
        .MIG2_M_AXI_LITE_wdata(MIG2_M_AXI_LITE_wdata),
        .MIG2_M_AXI_LITE_wready(MIG2_M_AXI_LITE_wready),
        .MIG2_M_AXI_LITE_wstrb(MIG2_M_AXI_LITE_wstrb),
        .MIG2_M_AXI_LITE_wvalid(MIG2_M_AXI_LITE_wvalid),
        .MIG3_M_AXI_LITE_araddr(MIG3_M_AXI_LITE_araddr),
        .MIG3_M_AXI_LITE_arprot(MIG3_M_AXI_LITE_arprot),
        .MIG3_M_AXI_LITE_arready(MIG3_M_AXI_LITE_arready),
        .MIG3_M_AXI_LITE_arvalid(MIG3_M_AXI_LITE_arvalid),
        .MIG3_M_AXI_LITE_awaddr(MIG3_M_AXI_LITE_awaddr),
        .MIG3_M_AXI_LITE_awprot(MIG3_M_AXI_LITE_awprot),
        .MIG3_M_AXI_LITE_awready(MIG3_M_AXI_LITE_awready),
        .MIG3_M_AXI_LITE_awvalid(MIG3_M_AXI_LITE_awvalid),
        .MIG3_M_AXI_LITE_bready(MIG3_M_AXI_LITE_bready),
        .MIG3_M_AXI_LITE_bresp(MIG3_M_AXI_LITE_bresp),
        .MIG3_M_AXI_LITE_bvalid(MIG3_M_AXI_LITE_bvalid),
        .MIG3_M_AXI_LITE_rdata(MIG3_M_AXI_LITE_rdata),
        .MIG3_M_AXI_LITE_rready(MIG3_M_AXI_LITE_rready),
        .MIG3_M_AXI_LITE_rresp(MIG3_M_AXI_LITE_rresp),
        .MIG3_M_AXI_LITE_rvalid(MIG3_M_AXI_LITE_rvalid),
        .MIG3_M_AXI_LITE_wdata(MIG3_M_AXI_LITE_wdata),
        .MIG3_M_AXI_LITE_wready(MIG3_M_AXI_LITE_wready),
        .MIG3_M_AXI_LITE_wstrb(MIG3_M_AXI_LITE_wstrb),
        .MIG3_M_AXI_LITE_wvalid(MIG3_M_AXI_LITE_wvalid),
        .M_AXI_LITE_araddr(M_AXI_LITE_araddr),
        .M_AXI_LITE_arprot(M_AXI_LITE_arprot),
        .M_AXI_LITE_arready(M_AXI_LITE_arready),
        .M_AXI_LITE_arvalid(M_AXI_LITE_arvalid),
        .M_AXI_LITE_awaddr(M_AXI_LITE_awaddr),
        .M_AXI_LITE_awprot(M_AXI_LITE_awprot),
        .M_AXI_LITE_awready(M_AXI_LITE_awready),
        .M_AXI_LITE_awvalid(M_AXI_LITE_awvalid),
        .M_AXI_LITE_bready(M_AXI_LITE_bready),
        .M_AXI_LITE_bresp(M_AXI_LITE_bresp),
        .M_AXI_LITE_bvalid(M_AXI_LITE_bvalid),
        .M_AXI_LITE_rdata(M_AXI_LITE_rdata),
        .M_AXI_LITE_rready(M_AXI_LITE_rready),
        .M_AXI_LITE_rresp(M_AXI_LITE_rresp),
        .M_AXI_LITE_rvalid(M_AXI_LITE_rvalid),
        .M_AXI_LITE_wdata(M_AXI_LITE_wdata),
        .M_AXI_LITE_wready(M_AXI_LITE_wready),
        .M_AXI_LITE_wstrb(M_AXI_LITE_wstrb),
        .M_AXI_LITE_wvalid(M_AXI_LITE_wvalid),
        .S_AXI_LITE_FROM_STATIC_araddr(S_AXI_LITE_FROM_STATIC_araddr),
        .S_AXI_LITE_FROM_STATIC_arprot(S_AXI_LITE_FROM_STATIC_arprot),
        .S_AXI_LITE_FROM_STATIC_arready(S_AXI_LITE_FROM_STATIC_arready),
        .S_AXI_LITE_FROM_STATIC_arvalid(S_AXI_LITE_FROM_STATIC_arvalid),
        .S_AXI_LITE_FROM_STATIC_awaddr(S_AXI_LITE_FROM_STATIC_awaddr),
        .S_AXI_LITE_FROM_STATIC_awprot(S_AXI_LITE_FROM_STATIC_awprot),
        .S_AXI_LITE_FROM_STATIC_awready(S_AXI_LITE_FROM_STATIC_awready),
        .S_AXI_LITE_FROM_STATIC_awvalid(S_AXI_LITE_FROM_STATIC_awvalid),
        .S_AXI_LITE_FROM_STATIC_bready(S_AXI_LITE_FROM_STATIC_bready),
        .S_AXI_LITE_FROM_STATIC_bresp(S_AXI_LITE_FROM_STATIC_bresp),
        .S_AXI_LITE_FROM_STATIC_bvalid(S_AXI_LITE_FROM_STATIC_bvalid),
        .S_AXI_LITE_FROM_STATIC_rdata(S_AXI_LITE_FROM_STATIC_rdata),
        .S_AXI_LITE_FROM_STATIC_rready(S_AXI_LITE_FROM_STATIC_rready),
        .S_AXI_LITE_FROM_STATIC_rresp(S_AXI_LITE_FROM_STATIC_rresp),
        .S_AXI_LITE_FROM_STATIC_rvalid(S_AXI_LITE_FROM_STATIC_rvalid),
        .S_AXI_LITE_FROM_STATIC_wdata(S_AXI_LITE_FROM_STATIC_wdata),
        .S_AXI_LITE_FROM_STATIC_wready(S_AXI_LITE_FROM_STATIC_wready),
        .S_AXI_LITE_FROM_STATIC_wstrb(S_AXI_LITE_FROM_STATIC_wstrb),
        .S_AXI_LITE_FROM_STATIC_wvalid(S_AXI_LITE_FROM_STATIC_wvalid));
endmodule
