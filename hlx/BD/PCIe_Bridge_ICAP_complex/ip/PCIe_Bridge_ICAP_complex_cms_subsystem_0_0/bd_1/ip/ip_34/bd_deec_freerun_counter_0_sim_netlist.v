// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Feb 28 12:41:53 2020
// Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v12_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2019_2/hlx/BD/PCIe_Bridge_ICAP_complex/ip/PCIe_Bridge_ICAP_complex_cms_subsystem_0_0/bd_1/ip/ip_34/bd_deec_freerun_counter_0_sim_netlist.v
// Design      : bd_deec_freerun_counter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_deec_freerun_counter_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_deec_freerun_counter_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_deec_freerun_counter_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "virtexuplus" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_deec_freerun_counter_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const0> ;
  wire CLK;
  wire [31:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_deec_freerun_counter_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ETPSkHr704UHxotu/+Q540l9cX8jPkemopoZFBrfLcZwZSqWsAYNlYOxA+8clWO0IaIobvUTExwu
3qiDkUim7Q==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q/ZujnFSVQXVdMiB7t3RgoKgod0SiCI7cie3Bajj7ZUMRH21cn/WoEmh+i2/U5nvJ1IxjHZMMsnL
jNOgnuRl/uz6gmv2hslUt+TdGzhMaPPve9oPXv8EmhInBh/UlGQD0X3tVrbYw8LdxKhblhrQN1KD
WgzGpvXYCfHOlJd77ss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ETTzQTvFs8K5urlNIkSEqcCqQsRVMALSpC2Jhf3M591IpL4n8eCCrlWEDqdxRPk61veqcN2MuIQQ
RD0BSRDwbe9cjxrZEgwtxzD35fBocQFb/DkEfpxz5nyKxyzet91/0nPIanDRa8GGanUSKmYlKU4t
DjmUodKGe1PJ784R5WQejJ9XyRiCuptKO0ruupgSlwSrkLGp0E2QovN0UbLsrFzrGMgmTybR6mHa
JJNAosTk8n3+uVLbFJxQJ2nGrdJtMdUisHnNuYeEXpxpP1Sj7G0YPNIk4646/cKcNHUpiFM2YMbG
H4nXuh5WxhHxYXB4gxvuI63CQL6DqNIXvgI4lg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dkpnsBBbY7QGv6Hkw1rgHmViq/T7Sx0Hh3rXk6KnFSL0hzEQJXpVJi7OYdCcfQWt4K95/pt9Xqav
t6NybSZdaZ+tgnwyGHZMk3dJwxIprrCl+VecY2pLm4qimW8XAxa6FuxvhJiSc4VfyMGXJKF4WKO8
GjcBAGFd25XQH0coBhoBujfpK7hmVkqkrN6XLtiAC9F6H3BtRSiQZ0zhEf+kYQ0dS60WDkFNnsOn
liCqc/kNkD5k76q/z2vyIsWUbUxOa2HbbmoW1u8G7PpiY0bbd2+gzAzVb8XQtqbyQjZvHZE13dyg
OSi9FQgiTvFQeYzSrZg0cMfmPdeZ0ILephLH5A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZBMTxFJ+tGZo+4Sjh6eizbFlkO4UaKOo0Ngso0uimVhzqV/QfS3JpX4ZBNhbOJMFUaOr3lEUjTSm
f8AtNwP9rzu5gRbP+L7TElZLp30fQimeDNpzzg2v337qX7GEHe7tsISCFLaIJDerXU+G06e3RbvW
NgVY58cpi8Ms/TFeK5AipVNgtZf7eMV1oD4jRlEBqcKotH6cchebYiWkCM9Vb60MNcVmVl2zRd2T
NJNwwqf/Kz0ks5E9GY+ZFGZJP4D30RPJqHgrbx5+68s19m/3OZxUEJijPmffMk4AQRhppyEEav/y
0avcDCYIMXYbPCB7pysSRoFl0CKSz3LJQz6Ong==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
EL6gzAbRUo7MBxcCtAoaECEuRnI1Q2C00UaSwLXL1ryLpnokfTPoB/bgKtfKkh+MzFzPW6ah8YfI
veVoldKK9xXCPTwJNfmaG8+M3rGpKC9pSEdaFHwaxzVKMG5jcKT0qCK7lmB/2FnMhinVhL2z8vPP
p5226h5MrC6lk2zcuI4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G5HcEILPkBkrQPoq+r9Sj5tP/XOXd86ycmkB2y9avVO5e0vj49/0a0iiLBe/kpLlEY3elZA8xZ59
6KTr10Nmww8L8pwcutMWrv3j7vmH9wL5kqC9m9X6IUEb6N4Qdc7kxN31QBzGNWAyg6TYXXFe+QD6
n9kejOyxlfnVMAIv0zM45mQLpCMagDuFcOXPkPnuJv61D3Jj0X43Kt1MUwkq1HKYHib11MQ3H54b
mfDxwUYly6kku1iVCT07iWEPGhg4IndboQUCbq5L/y0ysKXQASfI0/m8mB6doIxTGk78cNHPckHc
a2aspT/J9xDfQaSP38NLIcmmfMuRhYHkZweLcg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fRFPk71NAOXOZBIEWKpRRE3o56Tgt1tv9LQ8x/bDyDwg7szh8uIzHE2N55+0WrGlxdKxvPtRWLF3
X26CwZ4sU8Pvh2GNxlW91WKid1joKXXZ1qQt59o6adD8kzDFSj01HYU3of1+Z1LH67iRT4l780QA
KX7MSQsrG8viINk1AfCUOH8IVGPWZwlsuP4dqoaTU+UXdVv07pU9nEu+/30rolEZFGSL9OicMRhQ
OWdKxtfmiVdZS17j56HN9cvko5CBgVGTuVZk6ZvkcOnu9BGhWAcjElkXjs6YvgqxTVfEqnrsWGvu
ORNBZkiwjq0diUtt47hTU43xUD7/B4I1GZZAGw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XCe98RkAEE3VWFqnWfEoy8UgOSjEYJHBRCH7S6mUQJP1H0VYIVp3o9XQVD3Ct5Y6284JxzcBeeiB
QDchgVsnCOk2i/r5eTF4u8PYcVUcA1g6WMioK5sQTjS6zv12/nie4GhSgsuH0zszcTblDsn5EmgX
rJ2XBgzkqzhvazMnv1FmBOdy/PGgPrkSoNQQir4GRUOtCy0nSGfga7t8DykjgRn1GNuk7VR9sKxI
d4uQiGbYzqiP6fTOpPc1P/FsdnNeorz6ALg1/WD2lbTgwe0/AGOFGD6c0AYXrQKf6DHmnyRYnaPD
RbMZ11CFDf6GZVanNhSONuOaOnuD8+ep2k153w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
smUgiGWlSh60bd5kDoTAd834lSi+AJXwxfIy1roTQ7G2mKwt6sKdgNMZ6ijnRWR8vpfEDkhFnN8x
fUUofz4h2n0tKe7ZM7jSYgV9IoeNwwr88O3WvtVHtOnbiS2U/PZS9z+wHPLonsRdimD9ZbEeiWVu
hwM+ZWee3GLGmHkmgpot8Zi03Zu2sNNWzIjK3H0aBehcpZnJ0V8Fi8PwApS0qDY3lPzKpWviA3C+
1c1D9hNTnoE5qkt0VleWOu45n9OZU7JqzcsGMVjYBZf4eoY4VvP7KFrbfCBJXuGYQGX+/Qp6atsI
OV9E1tN3HZnUqb+snAgR4mQagXEFzsKWhpoxFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16416)
`pragma protect data_block
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
`pragma protect end_protected
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
