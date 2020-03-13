// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Feb 28 12:21:55 2020
// Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v12_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2019_2/hlx/BD/PCIe_Bridge_ICAP_complex/ip/PCIe_Bridge_ICAP_complex_cms_subsystem_0_0/bd_1/ip/ip_20/bd_deec_lmb_bram_if_cntlr_0_sim_netlist.v
// Design      : bd_deec_lmb_bram_if_cntlr_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_deec_lmb_bram_if_cntlr_0,lmb_bram_if_cntlr,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "lmb_bram_if_cntlr,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_deec_lmb_bram_if_cntlr_0
   (LMB_Clk,
    LMB_Rst,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    LMB1_ABus,
    LMB1_WriteDBus,
    LMB1_AddrStrobe,
    LMB1_ReadStrobe,
    LMB1_WriteStrobe,
    LMB1_BE,
    Sl1_DBus,
    Sl1_Ready,
    Sl1_Wait,
    Sl1_UE,
    Sl1_CE,
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_Addr_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Dout_A,
    BRAM_Din_A);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.LMB_Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.LMB_Clk, ASSOCIATED_BUSIF SLMB:SLMB1:SLMB2:SLMB3, ASSOCIATED_RESET LMB_Rst, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, INSERT_VIP 0" *) input LMB_Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.LMB_Rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.LMB_Rst, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) input LMB_Rst;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB ABUS" *) (* x_interface_parameter = "XIL_INTERFACENAME SLMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD" *) input [0:31]LMB_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WRITEDBUS" *) input [0:31]LMB_WriteDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB ADDRSTROBE" *) input LMB_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READSTROBE" *) input LMB_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WRITESTROBE" *) input LMB_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB BE" *) input [0:3]LMB_BE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READDBUS" *) output [0:31]Sl_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB READY" *) output Sl_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB WAIT" *) output Sl_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB UE" *) output Sl_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB CE" *) output Sl_CE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 ABUS" *) (* x_interface_parameter = "XIL_INTERFACENAME SLMB1, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD" *) input [0:31]LMB1_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 WRITEDBUS" *) input [0:31]LMB1_WriteDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 ADDRSTROBE" *) input LMB1_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 READSTROBE" *) input LMB1_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 WRITESTROBE" *) input LMB1_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 BE" *) input [0:3]LMB1_BE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 READDBUS" *) output [0:31]Sl1_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 READY" *) output Sl1_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 WAIT" *) output Sl1_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 UE" *) output Sl1_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 SLMB1 CE" *) output Sl1_CE;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORT, MEM_SIZE 65536, MASTER_TYPE BRAM_CTRL, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output BRAM_Rst_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *) output BRAM_Clk_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) output [0:31]BRAM_Addr_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT EN" *) output BRAM_EN_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT WE" *) output [0:3]BRAM_WEN_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT DIN" *) output [0:31]BRAM_Dout_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *) input [0:31]BRAM_Din_A;

  wire \<const0> ;
  wire [0:31]BRAM_Addr_A;
  wire [0:31]BRAM_Din_A;
  wire [0:31]BRAM_Dout_A;
  wire BRAM_EN_A;
  wire [0:3]BRAM_WEN_A;
  wire [0:31]LMB1_ABus;
  wire LMB1_AddrStrobe;
  wire [0:3]LMB1_BE;
  wire [0:31]LMB1_WriteDBus;
  wire LMB1_WriteStrobe;
  wire [0:31]LMB_ABus;
  wire LMB_AddrStrobe;
  wire [0:3]LMB_BE;
  wire LMB_Clk;
  wire LMB_Rst;
  wire [0:31]LMB_WriteDBus;
  wire LMB_WriteStrobe;
  wire Sl1_Ready;
  wire Sl1_Wait;
  wire Sl_Ready;

  assign BRAM_Clk_A = LMB_Clk;
  assign BRAM_Rst_A = \<const0> ;
  assign Sl1_CE = \<const0> ;
  assign Sl1_DBus[0:31] = BRAM_Din_A;
  assign Sl1_UE = \<const0> ;
  assign Sl_CE = \<const0> ;
  assign Sl_DBus[0:31] = BRAM_Din_A;
  assign Sl_UE = \<const0> ;
  assign Sl_Wait = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_deec_lmb_bram_if_cntlr_0_lmb_bram_if_cntlr U0
       (.BRAM_Addr_A(BRAM_Addr_A),
        .BRAM_Dout_A(BRAM_Dout_A),
        .BRAM_EN_A(BRAM_EN_A),
        .BRAM_WEN_A(BRAM_WEN_A),
        .LMB1_ABus(LMB1_ABus),
        .LMB1_AddrStrobe(LMB1_AddrStrobe),
        .LMB1_BE(LMB1_BE),
        .LMB1_WriteDBus(LMB1_WriteDBus),
        .LMB1_WriteStrobe(LMB1_WriteStrobe),
        .LMB_ABus(LMB_ABus),
        .LMB_AddrStrobe(LMB_AddrStrobe),
        .LMB_BE(LMB_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_Rst(LMB_Rst),
        .LMB_WriteDBus(LMB_WriteDBus),
        .LMB_WriteStrobe(LMB_WriteStrobe),
        .Sl1_Ready(Sl1_Ready),
        .Sl1_Wait(Sl1_Wait),
        .Sl_Ready(Sl_Ready));
endmodule

(* ORIG_REF_NAME = "lmb_bram_if_cntlr" *) 
module bd_deec_lmb_bram_if_cntlr_0_lmb_bram_if_cntlr
   (Sl_Ready,
    BRAM_EN_A,
    BRAM_Addr_A,
    BRAM_Dout_A,
    BRAM_WEN_A,
    Sl1_Ready,
    Sl1_Wait,
    LMB_ABus,
    LMB_AddrStrobe,
    LMB1_AddrStrobe,
    LMB1_ABus,
    LMB_WriteDBus,
    LMB1_WriteDBus,
    LMB_BE,
    LMB_WriteStrobe,
    LMB_Rst,
    LMB_Clk,
    LMB1_WriteStrobe,
    LMB1_BE);
  output Sl_Ready;
  output BRAM_EN_A;
  output [0:31]BRAM_Addr_A;
  output [0:31]BRAM_Dout_A;
  output [0:3]BRAM_WEN_A;
  output Sl1_Ready;
  output Sl1_Wait;
  input [0:31]LMB_ABus;
  input LMB_AddrStrobe;
  input LMB1_AddrStrobe;
  input [0:31]LMB1_ABus;
  input [0:31]LMB_WriteDBus;
  input [0:31]LMB1_WriteDBus;
  input [0:3]LMB_BE;
  input LMB_WriteStrobe;
  input LMB_Rst;
  input LMB_Clk;
  input LMB1_WriteStrobe;
  input [0:3]LMB1_BE;

  wire [0:31]BRAM_Addr_A;
  wire [0:31]BRAM_Dout_A;
  wire BRAM_EN_A;
  wire [0:3]BRAM_WEN_A;
  wire [0:31]LMB1_ABus;
  wire LMB1_AddrStrobe;
  wire [0:3]LMB1_BE;
  wire [0:31]LMB1_WriteDBus;
  wire LMB1_WriteStrobe;
  wire [0:31]LMB_ABus;
  wire LMB_AddrStrobe;
  wire [0:3]LMB_BE;
  wire LMB_Clk;
  wire LMB_Rst;
  wire [0:31]LMB_WriteDBus;
  wire LMB_WriteStrobe;
  wire Sl1_Ready;
  wire Sl1_Wait;
  wire Sl_Rdy;
  wire Sl_Ready;
  wire lmb_as;
  wire lmb_select;

  FDRE \No_ECC.Sl_Rdy_reg 
       (.C(LMB_Clk),
        .CE(1'b1),
        .D(lmb_select),
        .Q(Sl_Rdy),
        .R(LMB_Rst));
  FDRE \No_ECC.lmb_as_reg 
       (.C(LMB_Clk),
        .CE(1'b1),
        .D(BRAM_EN_A),
        .Q(lmb_as),
        .R(LMB_Rst));
  bd_deec_lmb_bram_if_cntlr_0_lmb_mux lmb_mux_I
       (.BRAM_Addr_A(BRAM_Addr_A),
        .BRAM_Dout_A(BRAM_Dout_A),
        .BRAM_EN_A(BRAM_EN_A),
        .BRAM_WEN_A(BRAM_WEN_A),
        .LMB1_ABus(LMB1_ABus),
        .LMB1_AddrStrobe(LMB1_AddrStrobe),
        .LMB1_BE(LMB1_BE),
        .LMB1_WriteDBus(LMB1_WriteDBus),
        .LMB1_WriteStrobe(LMB1_WriteStrobe),
        .LMB_ABus(LMB_ABus),
        .LMB_AddrStrobe(LMB_AddrStrobe),
        .LMB_BE(LMB_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_Rst(LMB_Rst),
        .LMB_WriteDBus(LMB_WriteDBus),
        .LMB_WriteStrobe(LMB_WriteStrobe),
        .Sl1_Ready(Sl1_Ready),
        .Sl1_Wait(Sl1_Wait),
        .Sl_Rdy(Sl_Rdy),
        .Sl_Ready(Sl_Ready),
        .lmb_as(lmb_as),
        .lmb_select(lmb_select));
endmodule

(* ORIG_REF_NAME = "lmb_mux" *) 
module bd_deec_lmb_bram_if_cntlr_0_lmb_mux
   (Sl_Ready,
    BRAM_EN_A,
    BRAM_Addr_A,
    BRAM_Dout_A,
    BRAM_WEN_A,
    lmb_select,
    Sl1_Ready,
    Sl1_Wait,
    LMB_Rst,
    LMB_Clk,
    LMB1_AddrStrobe,
    LMB1_WriteStrobe,
    Sl_Rdy,
    lmb_as,
    LMB_ABus,
    LMB_AddrStrobe,
    LMB1_ABus,
    LMB_WriteDBus,
    LMB1_WriteDBus,
    LMB_BE,
    LMB_WriteStrobe,
    LMB1_BE);
  output Sl_Ready;
  output BRAM_EN_A;
  output [0:31]BRAM_Addr_A;
  output [0:31]BRAM_Dout_A;
  output [0:3]BRAM_WEN_A;
  output lmb_select;
  output Sl1_Ready;
  output Sl1_Wait;
  input LMB_Rst;
  input LMB_Clk;
  input LMB1_AddrStrobe;
  input LMB1_WriteStrobe;
  input Sl_Rdy;
  input lmb_as;
  input [0:31]LMB_ABus;
  input LMB_AddrStrobe;
  input [0:31]LMB1_ABus;
  input [0:31]LMB_WriteDBus;
  input [0:31]LMB1_WriteDBus;
  input [0:3]LMB_BE;
  input LMB_WriteStrobe;
  input [0:3]LMB1_BE;

  wire [0:31]BRAM_Addr_A;
  wire [0:31]BRAM_Dout_A;
  wire BRAM_EN_A;
  wire [0:3]BRAM_WEN_A;
  wire [0:31]LMB1_ABus;
  wire LMB1_AddrStrobe;
  wire [0:3]LMB1_BE;
  wire [0:31]LMB1_WriteDBus;
  wire LMB1_WriteStrobe;
  wire [0:31]LMB_ABus;
  wire LMB_AddrStrobe;
  wire [0:3]LMB_BE;
  wire [0:3]\LMB_BE_vec_i[1] ;
  wire LMB_Clk;
  wire LMB_Rst;
  wire [0:31]LMB_WriteDBus;
  wire LMB_WriteStrobe;
  wire [1:1]LMB_WriteStrobe_vec_i__1;
  wire Sl1_Ready;
  wire Sl1_Wait;
  wire Sl_Rdy;
  wire Sl_Ready;
  wire lmb_as;
  wire lmb_select;
  wire \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ;
  wire [31:0]\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] ;
  wire \more_than_one_lmb.lmb_mux_generate[1].LMB_AddrStrobe_vec_Q_reg_n_0_[1] ;
  wire [3:0]\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] ;
  wire [31:0]\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] ;
  wire \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteStrobe_vec_Q_reg_n_0_[1] ;
  wire \more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1_n_0 ;
  wire \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ;
  wire ongoing_Q;
  wire ongoing_new;

  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[0]_INST_0 
       (.I0(LMB_ABus[0]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [31]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[0]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[0]));
  LUT5 #(
    .INIT(32'hEAEA00EA)) 
    \BRAM_Addr_A[0]_INST_0_i_1 
       (.I0(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I1(LMB1_ABus[3]),
        .I2(LMB1_AddrStrobe),
        .I3(LMB_AddrStrobe),
        .I4(LMB_ABus[11]),
        .O(ongoing_new));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[10]_INST_0 
       (.I0(LMB_ABus[10]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [21]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[10]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[10]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[11]_INST_0 
       (.I0(LMB_ABus[11]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [20]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[11]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[11]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[12]_INST_0 
       (.I0(LMB_ABus[12]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [19]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[12]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[12]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[13]_INST_0 
       (.I0(LMB_ABus[13]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [18]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[13]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[13]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[14]_INST_0 
       (.I0(LMB_ABus[14]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [17]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[14]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[14]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[15]_INST_0 
       (.I0(LMB_ABus[15]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [16]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[15]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[15]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[16]_INST_0 
       (.I0(LMB_ABus[16]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [15]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[16]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[16]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[17]_INST_0 
       (.I0(LMB_ABus[17]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [14]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[17]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[17]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[18]_INST_0 
       (.I0(LMB_ABus[18]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [13]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[18]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[18]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[19]_INST_0 
       (.I0(LMB_ABus[19]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [12]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[19]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[19]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[1]_INST_0 
       (.I0(LMB_ABus[1]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [30]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[1]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[1]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[20]_INST_0 
       (.I0(LMB_ABus[20]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [11]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[20]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[20]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[21]_INST_0 
       (.I0(LMB_ABus[21]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [10]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[21]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[21]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[22]_INST_0 
       (.I0(LMB_ABus[22]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [9]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[22]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[22]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[23]_INST_0 
       (.I0(LMB_ABus[23]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [8]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[23]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[23]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[24]_INST_0 
       (.I0(LMB_ABus[24]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [7]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[24]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[24]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[25]_INST_0 
       (.I0(LMB_ABus[25]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [6]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[25]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[25]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[26]_INST_0 
       (.I0(LMB_ABus[26]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [5]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[26]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[26]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[27]_INST_0 
       (.I0(LMB_ABus[27]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [4]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[27]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[27]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[28]_INST_0 
       (.I0(LMB_ABus[28]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [3]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[28]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[28]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[29]_INST_0 
       (.I0(LMB_ABus[29]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [2]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[29]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[29]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[2]_INST_0 
       (.I0(LMB_ABus[2]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [29]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[2]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[2]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[30]_INST_0 
       (.I0(LMB_ABus[30]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [1]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[30]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[30]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[31]_INST_0 
       (.I0(LMB_ABus[31]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [0]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[31]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[31]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[3]_INST_0 
       (.I0(LMB_ABus[3]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [28]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[3]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[3]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[4]_INST_0 
       (.I0(LMB_ABus[4]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [27]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[4]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[4]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[5]_INST_0 
       (.I0(LMB_ABus[5]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [26]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[5]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[5]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[6]_INST_0 
       (.I0(LMB_ABus[6]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [25]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[6]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[6]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[7]_INST_0 
       (.I0(LMB_ABus[7]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [24]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[7]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[7]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[8]_INST_0 
       (.I0(LMB_ABus[8]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [23]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[8]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[8]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Addr_A[9]_INST_0 
       (.I0(LMB_ABus[9]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [22]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_ABus[9]),
        .I4(ongoing_new),
        .O(BRAM_Addr_A[9]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[0]_INST_0 
       (.I0(LMB_WriteDBus[0]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [31]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[0]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[0]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[10]_INST_0 
       (.I0(LMB_WriteDBus[10]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [21]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[10]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[10]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[11]_INST_0 
       (.I0(LMB_WriteDBus[11]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [20]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[11]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[11]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[12]_INST_0 
       (.I0(LMB_WriteDBus[12]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [19]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[12]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[12]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[13]_INST_0 
       (.I0(LMB_WriteDBus[13]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [18]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[13]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[13]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[14]_INST_0 
       (.I0(LMB_WriteDBus[14]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [17]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[14]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[14]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[15]_INST_0 
       (.I0(LMB_WriteDBus[15]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [16]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[15]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[15]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[16]_INST_0 
       (.I0(LMB_WriteDBus[16]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [15]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[16]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[16]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[17]_INST_0 
       (.I0(LMB_WriteDBus[17]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [14]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[17]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[17]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[18]_INST_0 
       (.I0(LMB_WriteDBus[18]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [13]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[18]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[18]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[19]_INST_0 
       (.I0(LMB_WriteDBus[19]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [12]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[19]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[19]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[1]_INST_0 
       (.I0(LMB_WriteDBus[1]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [30]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[1]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[1]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[20]_INST_0 
       (.I0(LMB_WriteDBus[20]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [11]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[20]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[20]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[21]_INST_0 
       (.I0(LMB_WriteDBus[21]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [10]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[21]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[21]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[22]_INST_0 
       (.I0(LMB_WriteDBus[22]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [9]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[22]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[22]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[23]_INST_0 
       (.I0(LMB_WriteDBus[23]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [8]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[23]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[23]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[24]_INST_0 
       (.I0(LMB_WriteDBus[24]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [7]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[24]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[24]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[25]_INST_0 
       (.I0(LMB_WriteDBus[25]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [6]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[25]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[25]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[26]_INST_0 
       (.I0(LMB_WriteDBus[26]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [5]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[26]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[26]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[27]_INST_0 
       (.I0(LMB_WriteDBus[27]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [4]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[27]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[27]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[28]_INST_0 
       (.I0(LMB_WriteDBus[28]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [3]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[28]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[28]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[29]_INST_0 
       (.I0(LMB_WriteDBus[29]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [2]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[29]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[29]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[2]_INST_0 
       (.I0(LMB_WriteDBus[2]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [29]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[2]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[2]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[30]_INST_0 
       (.I0(LMB_WriteDBus[30]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [1]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[30]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[30]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[31]_INST_0 
       (.I0(LMB_WriteDBus[31]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [0]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[31]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[31]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[3]_INST_0 
       (.I0(LMB_WriteDBus[3]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [28]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[3]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[3]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[4]_INST_0 
       (.I0(LMB_WriteDBus[4]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [27]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[4]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[4]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[5]_INST_0 
       (.I0(LMB_WriteDBus[5]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [26]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[5]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[5]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[6]_INST_0 
       (.I0(LMB_WriteDBus[6]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [25]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[6]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[6]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[7]_INST_0 
       (.I0(LMB_WriteDBus[7]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [24]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[7]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[7]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[8]_INST_0 
       (.I0(LMB_WriteDBus[8]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [23]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[8]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[8]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \BRAM_Dout_A[9]_INST_0 
       (.I0(LMB_WriteDBus[9]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [22]),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_WriteDBus[9]),
        .I4(ongoing_new),
        .O(BRAM_Dout_A[9]));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    BRAM_EN_A_INST_0
       (.I0(LMB_AddrStrobe),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].LMB_AddrStrobe_vec_Q_reg_n_0_[1] ),
        .I2(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I3(LMB1_AddrStrobe),
        .I4(ongoing_new),
        .O(BRAM_EN_A));
  LUT6 #(
    .INIT(64'hF000880000008800)) 
    \BRAM_WEN_A[0]_INST_0 
       (.I0(LMB_BE[0]),
        .I1(LMB_WriteStrobe),
        .I2(LMB_WriteStrobe_vec_i__1),
        .I3(lmb_select),
        .I4(ongoing_new),
        .I5(\LMB_BE_vec_i[1] [0]),
        .O(BRAM_WEN_A[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_WEN_A[0]_INST_0_i_1 
       (.I0(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteStrobe_vec_Q_reg_n_0_[1] ),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I2(LMB1_WriteStrobe),
        .O(LMB_WriteStrobe_vec_i__1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFD5)) 
    \BRAM_WEN_A[0]_INST_0_i_2 
       (.I0(LMB_ABus[11]),
        .I1(LMB1_AddrStrobe),
        .I2(LMB1_ABus[3]),
        .I3(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .O(lmb_select));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_WEN_A[0]_INST_0_i_3 
       (.I0(\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] [3]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I2(LMB1_BE[0]),
        .O(\LMB_BE_vec_i[1] [0]));
  LUT6 #(
    .INIT(64'hF000880000008800)) 
    \BRAM_WEN_A[1]_INST_0 
       (.I0(LMB_BE[1]),
        .I1(LMB_WriteStrobe),
        .I2(LMB_WriteStrobe_vec_i__1),
        .I3(lmb_select),
        .I4(ongoing_new),
        .I5(\LMB_BE_vec_i[1] [1]),
        .O(BRAM_WEN_A[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_WEN_A[1]_INST_0_i_1 
       (.I0(\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] [2]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I2(LMB1_BE[1]),
        .O(\LMB_BE_vec_i[1] [1]));
  LUT6 #(
    .INIT(64'hF000880000008800)) 
    \BRAM_WEN_A[2]_INST_0 
       (.I0(LMB_BE[2]),
        .I1(LMB_WriteStrobe),
        .I2(LMB_WriteStrobe_vec_i__1),
        .I3(lmb_select),
        .I4(ongoing_new),
        .I5(\LMB_BE_vec_i[1] [2]),
        .O(BRAM_WEN_A[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_WEN_A[2]_INST_0_i_1 
       (.I0(\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] [1]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I2(LMB1_BE[2]),
        .O(\LMB_BE_vec_i[1] [2]));
  LUT6 #(
    .INIT(64'hF000880000008800)) 
    \BRAM_WEN_A[3]_INST_0 
       (.I0(LMB_BE[3]),
        .I1(LMB_WriteStrobe),
        .I2(LMB_WriteStrobe_vec_i__1),
        .I3(lmb_select),
        .I4(ongoing_new),
        .I5(\LMB_BE_vec_i[1] [3]),
        .O(BRAM_WEN_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_WEN_A[3]_INST_0_i_1 
       (.I0(\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] [0]),
        .I1(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I2(LMB1_BE[3]),
        .O(\LMB_BE_vec_i[1] [3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    Sl1_Ready_INST_0
       (.I0(ongoing_Q),
        .I1(Sl_Rdy),
        .I2(lmb_as),
        .O(Sl1_Ready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Sl1_Wait_INST_0
       (.I0(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I1(ongoing_Q),
        .O(Sl1_Wait));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    Sl_Ready_INST_0
       (.I0(Sl_Rdy),
        .I1(lmb_as),
        .I2(ongoing_Q),
        .O(Sl_Ready));
  LUT4 #(
    .INIT(16'h4000)) 
    \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1 
       (.I0(LMB_ABus[11]),
        .I1(LMB_AddrStrobe),
        .I2(LMB1_AddrStrobe),
        .I3(LMB1_ABus[3]),
        .O(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][0] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[0]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [31]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][10] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[10]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [21]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][11] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[11]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [20]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][12] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[12]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [19]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][13] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[13]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [18]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][14] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[14]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [17]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][15] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[15]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [16]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][16] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[16]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [15]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][17] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[17]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [14]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][18] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[18]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [13]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][19] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[19]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [12]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][1] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[1]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [30]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][20] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[20]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [11]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][21] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[21]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [10]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][22] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[22]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [9]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][23] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[23]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [8]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][24] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[24]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [7]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][25] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[25]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [6]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][26] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[26]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [5]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][27] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[27]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [4]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][28] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[28]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [3]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][29] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[29]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [2]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][2] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[2]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [29]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][30] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[30]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [1]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][31] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[31]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [0]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][3] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[3]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [28]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][4] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[4]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [27]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][5] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[5]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [26]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][6] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[6]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [25]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][7] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[7]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [24]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][8] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[8]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [23]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][9] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_ABus[9]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1] [22]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_AddrStrobe_vec_Q_reg[1] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_AddrStrobe),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_AddrStrobe_vec_Q_reg_n_0_[1] ),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1][0] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_BE[0]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] [3]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1][1] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_BE[1]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] [2]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1][2] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_BE[2]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] [1]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1][3] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_BE[3]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1] [0]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][0] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[0]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [31]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][10] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[10]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [21]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][11] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[11]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [20]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][12] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[12]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [19]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][13] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[13]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [18]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][14] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[14]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [17]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][15] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[15]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [16]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][16] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[16]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [15]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][17] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[17]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [14]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][18] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[18]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [13]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][19] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[19]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [12]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][1] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[1]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [30]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][20] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[20]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [11]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][21] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[21]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [10]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][22] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[22]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [9]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][23] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[23]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [8]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][24] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[24]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [7]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][25] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[25]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [6]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][26] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[26]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [5]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][27] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[27]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [4]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][28] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[28]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [3]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][29] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[29]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [2]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][2] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[2]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [29]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][30] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[30]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [1]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][31] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[31]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [0]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][3] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[3]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [28]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][4] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[4]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [27]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][5] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[5]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [26]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][6] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[6]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [25]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][7] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[7]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [24]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][8] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[8]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [23]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][9] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteDBus[9]),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1] [22]),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteStrobe_vec_Q_reg[1] 
       (.C(LMB_Clk),
        .CE(\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0 ),
        .D(LMB1_WriteStrobe),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteStrobe_vec_Q_reg_n_0_[1] ),
        .R(LMB_Rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000EA00)) 
    \more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1 
       (.I0(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .I1(LMB1_ABus[3]),
        .I2(LMB1_AddrStrobe),
        .I3(LMB_AddrStrobe),
        .I4(LMB_ABus[11]),
        .O(\more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1_n_0 ));
  FDRE \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg[1] 
       (.C(LMB_Clk),
        .CE(1'b1),
        .D(\more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1_n_0 ),
        .Q(\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1] ),
        .R(LMB_Rst));
  FDRE \more_than_one_lmb.ongoing_Q_reg[0] 
       (.C(LMB_Clk),
        .CE(1'b1),
        .D(ongoing_new),
        .Q(ongoing_Q),
        .R(LMB_Rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
