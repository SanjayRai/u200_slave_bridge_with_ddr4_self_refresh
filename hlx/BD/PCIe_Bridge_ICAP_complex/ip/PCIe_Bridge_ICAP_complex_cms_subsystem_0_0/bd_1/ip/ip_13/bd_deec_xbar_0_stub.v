// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Feb 28 12:27:45 2020
// Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
// Command     : write_verilog -force -mode synth_stub
//               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v12_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2019_2/hlx/BD/PCIe_Bridge_ICAP_complex/ip/PCIe_Bridge_ICAP_complex_cms_subsystem_0_0/bd_1/ip/ip_13/bd_deec_xbar_0_stub.v
// Design      : bd_deec_xbar_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_21_axi_crossbar,Vivado 2019.2" *)
module bd_deec_xbar_0(aclk, aresetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, m_axi_awaddr, 
  m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, 
  m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid[0:0],s_axi_awready[0:0],s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid[0:0],s_axi_wready[0:0],s_axi_bresp[1:0],s_axi_bvalid[0:0],s_axi_bready[0:0],s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid[0:0],s_axi_arready[0:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid[0:0],s_axi_rready[0:0],m_axi_awaddr[447:0],m_axi_awprot[41:0],m_axi_awvalid[13:0],m_axi_awready[13:0],m_axi_wdata[447:0],m_axi_wstrb[55:0],m_axi_wvalid[13:0],m_axi_wready[13:0],m_axi_bresp[27:0],m_axi_bvalid[13:0],m_axi_bready[13:0],m_axi_araddr[447:0],m_axi_arprot[41:0],m_axi_arvalid[13:0],m_axi_arready[13:0],m_axi_rdata[447:0],m_axi_rresp[27:0],m_axi_rvalid[13:0],m_axi_rready[13:0]" */;
  input aclk;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [447:0]m_axi_awaddr;
  output [41:0]m_axi_awprot;
  output [13:0]m_axi_awvalid;
  input [13:0]m_axi_awready;
  output [447:0]m_axi_wdata;
  output [55:0]m_axi_wstrb;
  output [13:0]m_axi_wvalid;
  input [13:0]m_axi_wready;
  input [27:0]m_axi_bresp;
  input [13:0]m_axi_bvalid;
  output [13:0]m_axi_bready;
  output [447:0]m_axi_araddr;
  output [41:0]m_axi_arprot;
  output [13:0]m_axi_arvalid;
  input [13:0]m_axi_arready;
  input [447:0]m_axi_rdata;
  input [27:0]m_axi_rresp;
  input [13:0]m_axi_rvalid;
  output [13:0]m_axi_rready;
endmodule
