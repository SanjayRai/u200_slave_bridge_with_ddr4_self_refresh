// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Feb 28 12:37:30 2020
// Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v12_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2019_2/hlx/BD/PCIe_Bridge_ICAP_complex/ip/PCIe_Bridge_ICAP_complex_cms_subsystem_0_0/bd_1/ip/ip_24/bd_deec_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_deec_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_deec_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_deec_msp432_bsl_crc_gen_0
   (clk,
    reset_n,
    s0_axis_tdata,
    s0_axis_tready,
    s0_axis_tvalid,
    s0_axis_tlast,
    m0_axis_tdata,
    m0_axis_tready,
    m0_axis_tvalid,
    m0_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s0_axis:m0_axis, ASSOCIATED_RESET reset_n, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) input [31:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) output s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) input s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, LAYERED_METADATA undef, INSERT_VIP 0" *) input s0_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TDATA" *) output [31:0]m0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TREADY" *) input m0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TVALID" *) output m0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, LAYERED_METADATA undef, INSERT_VIP 0" *) output m0_axis_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [15:0]\^m0_axis_tdata ;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire reset_n;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tvalid;
  wire NLW_inst_m0_axis_tlast_UNCONNECTED;
  wire NLW_inst_s0_axis_tready_UNCONNECTED;
  wire [31:16]NLW_inst_m0_axis_tdata_UNCONNECTED;

  assign m0_axis_tdata[31] = \<const0> ;
  assign m0_axis_tdata[30] = \<const0> ;
  assign m0_axis_tdata[29] = \<const0> ;
  assign m0_axis_tdata[28] = \<const0> ;
  assign m0_axis_tdata[27] = \<const0> ;
  assign m0_axis_tdata[26] = \<const0> ;
  assign m0_axis_tdata[25] = \<const0> ;
  assign m0_axis_tdata[24] = \<const0> ;
  assign m0_axis_tdata[23] = \<const0> ;
  assign m0_axis_tdata[22] = \<const0> ;
  assign m0_axis_tdata[21] = \<const0> ;
  assign m0_axis_tdata[20] = \<const0> ;
  assign m0_axis_tdata[19] = \<const0> ;
  assign m0_axis_tdata[18] = \<const0> ;
  assign m0_axis_tdata[17] = \<const0> ;
  assign m0_axis_tdata[16] = \<const0> ;
  assign m0_axis_tdata[15:0] = \^m0_axis_tdata [15:0];
  assign m0_axis_tlast = \<const0> ;
  assign s0_axis_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* IDLE = "1'b0" *) 
  (* PROC = "1'b1" *) 
  bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
       (.clk(clk),
        .m0_axis_tdata({NLW_inst_m0_axis_tdata_UNCONNECTED[31:16],\^m0_axis_tdata }),
        .m0_axis_tlast(NLW_inst_m0_axis_tlast_UNCONNECTED),
        .m0_axis_tready(m0_axis_tready),
        .m0_axis_tvalid(m0_axis_tvalid),
        .reset_n(reset_n),
        .s0_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s0_axis_tdata[15:0]}),
        .s0_axis_tlast(s0_axis_tlast),
        .s0_axis_tready(NLW_inst_s0_axis_tready_UNCONNECTED),
        .s0_axis_tvalid(s0_axis_tvalid));
endmodule

(* IDLE = "1'b0" *) (* ORIG_REF_NAME = "shell_utils_msp432_bsl_crc_gen_v1_0_0" *) (* PROC = "1'b1" *) 
module bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0
   (clk,
    reset_n,
    s0_axis_tdata,
    s0_axis_tready,
    s0_axis_tvalid,
    s0_axis_tlast,
    m0_axis_tdata,
    m0_axis_tready,
    m0_axis_tvalid,
    m0_axis_tlast);
  input clk;
  input reset_n;
  input [31:0]s0_axis_tdata;
  output s0_axis_tready;
  input s0_axis_tvalid;
  input s0_axis_tlast;
  output [31:0]m0_axis_tdata;
  input m0_axis_tready;
  output m0_axis_tvalid;
  output m0_axis_tlast;

  wire \<const0> ;
  wire clk;
  wire \crc[12]_i_3_n_0 ;
  wire \crc[13]_i_2_n_0 ;
  wire \crc[14]_i_2_n_0 ;
  wire \crc[15]_i_3_n_0 ;
  wire \crc[5]_i_2_n_0 ;
  wire \crc[6]_i_2_n_0 ;
  wire crc_done_i_1_n_0;
  wire [15:0]\^m0_axis_tdata ;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire p_0_in;
  wire [15:0]p_2_in;
  wire prev_state;
  wire reset_n;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tvalid;
  wire state;
  wire state01_out;
  wire \state[0]_i_1_n_0 ;

  assign m0_axis_tdata[31] = \<const0> ;
  assign m0_axis_tdata[30] = \<const0> ;
  assign m0_axis_tdata[29] = \<const0> ;
  assign m0_axis_tdata[28] = \<const0> ;
  assign m0_axis_tdata[27] = \<const0> ;
  assign m0_axis_tdata[26] = \<const0> ;
  assign m0_axis_tdata[25] = \<const0> ;
  assign m0_axis_tdata[24] = \<const0> ;
  assign m0_axis_tdata[23] = \<const0> ;
  assign m0_axis_tdata[22] = \<const0> ;
  assign m0_axis_tdata[21] = \<const0> ;
  assign m0_axis_tdata[20] = \<const0> ;
  assign m0_axis_tdata[19] = \<const0> ;
  assign m0_axis_tdata[18] = \<const0> ;
  assign m0_axis_tdata[17] = \<const0> ;
  assign m0_axis_tdata[16] = \<const0> ;
  assign m0_axis_tdata[15:0] = \^m0_axis_tdata [15:0];
  assign m0_axis_tlast = \<const0> ;
  assign s0_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7DD78228)) 
    \crc[0]_i_1 
       (.I0(state),
        .I1(\^m0_axis_tdata [12]),
        .I2(s0_axis_tdata[4]),
        .I3(\^m0_axis_tdata [8]),
        .I4(s0_axis_tdata[0]),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'hE22E2EE2)) 
    \crc[10]_i_1 
       (.I0(s0_axis_tdata[10]),
        .I1(state),
        .I2(\^m0_axis_tdata [2]),
        .I3(\^m0_axis_tdata [13]),
        .I4(s0_axis_tdata[5]),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hE22E2EE2)) 
    \crc[11]_i_1 
       (.I0(s0_axis_tdata[11]),
        .I1(state),
        .I2(\^m0_axis_tdata [3]),
        .I3(\^m0_axis_tdata [14]),
        .I4(s0_axis_tdata[6]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \crc[12]_i_1 
       (.I0(s0_axis_tdata[12]),
        .I1(state01_out),
        .I2(\^m0_axis_tdata [8]),
        .I3(\^m0_axis_tdata [4]),
        .I4(\^m0_axis_tdata [15]),
        .I5(\crc[12]_i_3_n_0 ),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \crc[12]_i_2 
       (.I0(s0_axis_tvalid),
        .I1(state),
        .O(state01_out));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc[12]_i_3 
       (.I0(s0_axis_tdata[0]),
        .I1(s0_axis_tdata[7]),
        .I2(\^m0_axis_tdata [12]),
        .I3(s0_axis_tdata[4]),
        .O(\crc[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \crc[13]_i_1 
       (.I0(s0_axis_tdata[13]),
        .I1(state),
        .I2(\^m0_axis_tdata [5]),
        .I3(\crc[13]_i_2_n_0 ),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc[13]_i_2 
       (.I0(s0_axis_tdata[1]),
        .I1(s0_axis_tdata[5]),
        .I2(\^m0_axis_tdata [13]),
        .I3(\^m0_axis_tdata [9]),
        .O(\crc[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \crc[14]_i_1 
       (.I0(s0_axis_tdata[14]),
        .I1(state),
        .I2(\^m0_axis_tdata [6]),
        .I3(\crc[14]_i_2_n_0 ),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc[14]_i_2 
       (.I0(\^m0_axis_tdata [14]),
        .I1(s0_axis_tdata[6]),
        .I2(\^m0_axis_tdata [10]),
        .I3(s0_axis_tdata[2]),
        .O(\crc[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \crc[15]_i_1 
       (.I0(reset_n),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2EE2)) 
    \crc[15]_i_2 
       (.I0(s0_axis_tdata[15]),
        .I1(state),
        .I2(\^m0_axis_tdata [7]),
        .I3(\crc[15]_i_3_n_0 ),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc[15]_i_3 
       (.I0(s0_axis_tdata[3]),
        .I1(s0_axis_tdata[7]),
        .I2(\^m0_axis_tdata [11]),
        .I3(\^m0_axis_tdata [15]),
        .O(\crc[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6CC6C66C)) 
    \crc[1]_i_1 
       (.I0(state),
        .I1(s0_axis_tdata[1]),
        .I2(s0_axis_tdata[5]),
        .I3(\^m0_axis_tdata [13]),
        .I4(\^m0_axis_tdata [9]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7DD78228)) 
    \crc[2]_i_1 
       (.I0(state),
        .I1(\^m0_axis_tdata [14]),
        .I2(s0_axis_tdata[6]),
        .I3(\^m0_axis_tdata [10]),
        .I4(s0_axis_tdata[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6CC6C66C)) 
    \crc[3]_i_1 
       (.I0(state),
        .I1(s0_axis_tdata[3]),
        .I2(s0_axis_tdata[7]),
        .I3(\^m0_axis_tdata [11]),
        .I4(\^m0_axis_tdata [15]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \crc[4]_i_1 
       (.I0(state),
        .I1(s0_axis_tdata[4]),
        .I2(\^m0_axis_tdata [12]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hE1B4B4E1B4E1E1B4)) 
    \crc[5]_i_1 
       (.I0(state01_out),
        .I1(\^m0_axis_tdata [13]),
        .I2(s0_axis_tdata[5]),
        .I3(s0_axis_tdata[0]),
        .I4(\^m0_axis_tdata [8]),
        .I5(\crc[5]_i_2_n_0 ),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc[5]_i_2 
       (.I0(s0_axis_tdata[4]),
        .I1(\^m0_axis_tdata [12]),
        .O(\crc[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA99A9AA99AA9A99A)) 
    \crc[6]_i_1 
       (.I0(s0_axis_tdata[6]),
        .I1(state01_out),
        .I2(\^m0_axis_tdata [9]),
        .I3(\^m0_axis_tdata [13]),
        .I4(\^m0_axis_tdata [14]),
        .I5(\crc[6]_i_2_n_0 ),
        .O(p_2_in[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \crc[6]_i_2 
       (.I0(s0_axis_tdata[5]),
        .I1(s0_axis_tdata[1]),
        .O(\crc[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA66A)) 
    \crc[7]_i_1 
       (.I0(s0_axis_tdata[7]),
        .I1(state),
        .I2(\^m0_axis_tdata [15]),
        .I3(\crc[14]_i_2_n_0 ),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \crc[8]_i_1 
       (.I0(s0_axis_tdata[8]),
        .I1(state),
        .I2(\^m0_axis_tdata [0]),
        .I3(\crc[15]_i_3_n_0 ),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE22E2EE2)) 
    \crc[9]_i_1 
       (.I0(s0_axis_tdata[9]),
        .I1(state),
        .I2(\^m0_axis_tdata [1]),
        .I3(\^m0_axis_tdata [12]),
        .I4(s0_axis_tdata[4]),
        .O(p_2_in[9]));
  LUT4 #(
    .INIT(16'h4F44)) 
    crc_done_i_1
       (.I0(state),
        .I1(prev_state),
        .I2(m0_axis_tready),
        .I3(m0_axis_tvalid),
        .O(crc_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    crc_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(crc_done_i_1_n_0),
        .Q(m0_axis_tvalid),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[0] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[0]),
        .Q(\^m0_axis_tdata [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[10] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[10]),
        .Q(\^m0_axis_tdata [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[11] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[11]),
        .Q(\^m0_axis_tdata [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[12] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[12]),
        .Q(\^m0_axis_tdata [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[13] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[13]),
        .Q(\^m0_axis_tdata [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[14] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[14]),
        .Q(\^m0_axis_tdata [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[15] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[15]),
        .Q(\^m0_axis_tdata [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[1] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[1]),
        .Q(\^m0_axis_tdata [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[2] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[2]),
        .Q(\^m0_axis_tdata [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[3] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[3]),
        .Q(\^m0_axis_tdata [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[4] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[4]),
        .Q(\^m0_axis_tdata [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[5] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[5]),
        .Q(\^m0_axis_tdata [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[6] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[6]),
        .Q(\^m0_axis_tdata [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[7] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[7]),
        .Q(\^m0_axis_tdata [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[8] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[8]),
        .Q(\^m0_axis_tdata [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \crc_reg[9] 
       (.C(clk),
        .CE(s0_axis_tvalid),
        .D(p_2_in[9]),
        .Q(\^m0_axis_tdata [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prev_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(state),
        .Q(prev_state),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7A)) 
    \state[0]_i_1 
       (.I0(s0_axis_tvalid),
        .I1(s0_axis_tlast),
        .I2(state),
        .O(\state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state),
        .R(p_0_in));
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
