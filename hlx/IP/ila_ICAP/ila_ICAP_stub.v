// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (lin64) Build 2489853 Tue Mar 26 04:18:30 MDT 2019
// Date        : Mon Feb 24 11:54:44 2020
// Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
// Command     : write_verilog -force -mode synth_stub
//               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v9_ICAP_DLY_ILA_DEBUG_SENT_TO_ILMN/hlx/IP/ila_ICAP/ila_ICAP_stub.v
// Design      : ila_ICAP
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.3.1" *)
module ila_ICAP(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[71:0]" */;
  input clk;
  input [71:0]probe0;
endmodule
