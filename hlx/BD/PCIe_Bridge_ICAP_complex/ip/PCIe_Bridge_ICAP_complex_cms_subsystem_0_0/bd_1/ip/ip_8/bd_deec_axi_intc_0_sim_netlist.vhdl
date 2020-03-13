-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Feb 28 12:17:28 2020
-- Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v12_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2019_2/hlx/BD/PCIe_Bridge_ICAP_complex/ip/PCIe_Bridge_ICAP_complex_cms_subsystem_0_0/bd_1/ip/ip_8/bd_deec_axi_intc_0_sim_netlist.vhdl
-- Design      : bd_deec_axi_intc_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu200-fsgd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_axi_intc_0_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    s_axi_aresetn_1 : out STD_LOGIC;
    s_axi_aresetn_2 : out STD_LOGIC;
    s_axi_aresetn_3 : out STD_LOGIC;
    s_axi_aresetn_4 : out STD_LOGIC;
    s_axi_aresetn_5 : out STD_LOGIC;
    s_axi_aresetn_6 : out STD_LOGIC;
    s_axi_aresetn_7 : out STD_LOGIC;
    s_axi_aresetn_8 : out STD_LOGIC;
    s_axi_aresetn_9 : out STD_LOGIC;
    s_axi_aresetn_10 : out STD_LOGIC;
    s_axi_aresetn_11 : out STD_LOGIC;
    s_axi_aresetn_12 : out STD_LOGIC;
    s_axi_aresetn_13 : out STD_LOGIC;
    s_axi_aresetn_14 : out STD_LOGIC;
    s_axi_aresetn_15 : out STD_LOGIC;
    s_axi_aresetn_16 : out STD_LOGIC;
    s_axi_aresetn_17 : out STD_LOGIC;
    s_axi_aresetn_18 : out STD_LOGIC;
    s_axi_aresetn_19 : out STD_LOGIC;
    s_axi_aresetn_20 : out STD_LOGIC;
    s_axi_aresetn_21 : out STD_LOGIC;
    s_axi_aresetn_22 : out STD_LOGIC;
    s_axi_aresetn_23 : out STD_LOGIC;
    s_axi_aresetn_24 : out STD_LOGIC;
    s_axi_aresetn_25 : out STD_LOGIC;
    s_axi_aresetn_26 : out STD_LOGIC;
    s_axi_aresetn_27 : out STD_LOGIC;
    s_axi_aresetn_28 : out STD_LOGIC;
    s_axi_aresetn_29 : out STD_LOGIC;
    s_axi_aresetn_30 : out STD_LOGIC;
    s_axi_aresetn_31 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    Bus_RNW_reg_reg_8 : out STD_LOGIC;
    Bus_RNW_reg_reg_9 : out STD_LOGIC;
    Bus_RNW_reg_reg_10 : out STD_LOGIC;
    Bus_RNW_reg_reg_11 : out STD_LOGIC;
    Bus_RNW_reg_reg_12 : out STD_LOGIC;
    Bus_RNW_reg_reg_13 : out STD_LOGIC;
    Bus_RNW_reg_reg_14 : out STD_LOGIC;
    Bus_RNW_reg_reg_15 : out STD_LOGIC;
    Bus_RNW_reg_reg_16 : out STD_LOGIC;
    Bus_RNW_reg_reg_17 : out STD_LOGIC;
    Bus_RNW_reg_reg_18 : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_19 : out STD_LOGIC;
    Bus_RNW_reg_reg_20 : out STD_LOGIC;
    Bus_RNW_reg_reg_21 : out STD_LOGIC;
    Bus_RNW_reg_reg_22 : out STD_LOGIC;
    Bus_RNW_reg_reg_23 : out STD_LOGIC;
    Bus_RNW_reg_reg_24 : out STD_LOGIC;
    Bus_RNW_reg_reg_25 : out STD_LOGIC;
    Bus_RNW_reg_reg_26 : out STD_LOGIC;
    Bus_RNW_reg_reg_27 : out STD_LOGIC;
    Bus_RNW_reg_reg_28 : out STD_LOGIC;
    Bus_RNW_reg_reg_29 : out STD_LOGIC;
    Bus_RNW_reg_reg_30 : out STD_LOGIC;
    Bus_RNW_reg_reg_31 : out STD_LOGIC;
    Bus_RNW_reg_reg_32 : out STD_LOGIC;
    Bus_RNW_reg_reg_33 : out STD_LOGIC;
    Bus_RNW_reg_reg_34 : out STD_LOGIC;
    Bus_RNW_reg_reg_35 : out STD_LOGIC;
    Bus_RNW_reg_reg_36 : out STD_LOGIC;
    Bus_RNW_reg_reg_37 : out STD_LOGIC;
    Bus_RNW_reg_reg_38 : out STD_LOGIC;
    Bus_RNW_reg_reg_39 : out STD_LOGIC;
    Bus_RNW_reg_reg_40 : out STD_LOGIC;
    Bus_RNW_reg_reg_41 : out STD_LOGIC;
    Bus_RNW_reg_reg_42 : out STD_LOGIC;
    Bus_RNW_reg_reg_43 : out STD_LOGIC;
    Bus_RNW_reg_reg_44 : out STD_LOGIC;
    Bus_RNW_reg_reg_45 : out STD_LOGIC;
    Bus_RNW_reg_reg_46 : out STD_LOGIC;
    Bus_RNW_reg_reg_47 : out STD_LOGIC;
    Bus_RNW_reg_reg_48 : out STD_LOGIC;
    Bus_RNW_reg_reg_49 : out STD_LOGIC;
    Bus_RNW_reg_reg_50 : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    Or128_vec2stdlogic : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : in STD_LOGIC;
    p_0_in65_in : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in63_in : in STD_LOGIC;
    p_0_in62_in : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    p_0_in60_in : in STD_LOGIC;
    p_0_in59_in : in STD_LOGIC;
    p_0_in58_in : in STD_LOGIC;
    p_0_in57_in : in STD_LOGIC;
    p_0_in56_in : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    p_0_in53_in : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    p_0_in51_in : in STD_LOGIC;
    p_0_in50_in : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    p_0_in48_in : in STD_LOGIC;
    p_0_in47_in : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    p_0_in45_in : in STD_LOGIC;
    p_0_in44_in : in STD_LOGIC;
    p_0_in43_in : in STD_LOGIC;
    p_0_in42_in : in STD_LOGIC;
    p_0_in41_in : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    p_0_in39_in : in STD_LOGIC;
    p_0_in38_in : in STD_LOGIC;
    p_0_in37_in : in STD_LOGIC;
    p_0_in36_in : in STD_LOGIC;
    p_0_in35_in : in STD_LOGIC;
    \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\ : in STD_LOGIC;
    p_0_in2_in : in STD_LOGIC;
    p_0_in5_in : in STD_LOGIC;
    p_0_in8_in : in STD_LOGIC;
    p_0_in11_in : in STD_LOGIC;
    p_0_in14_in : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    p_0_in20_in : in STD_LOGIC;
    p_0_in23_in : in STD_LOGIC;
    p_0_in26_in : in STD_LOGIC;
    p_0_in29_in : in STD_LOGIC;
    p_0_in32_in : in STD_LOGIC;
    \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\ : in STD_LOGIC;
    \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\ : in STD_LOGIC;
    \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\ : in STD_LOGIC;
    p_0_in83_in : in STD_LOGIC;
    p_0_in86_in : in STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready_0 : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[16]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[16]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[19]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[19]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[20]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[20]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[21]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[21]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[22]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[22]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[23]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[23]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[24]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[24]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[25]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[25]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[26]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[26]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[27]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[27]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[28]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[28]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[29]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[29]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[30]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[30]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \mer_int_reg[0]\ : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC;
    p_0_in33_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ : in STD_LOGIC;
    p_0_in31_in : in STD_LOGIC;
    p_0_in30_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ : in STD_LOGIC;
    p_0_in28_in : in STD_LOGIC;
    p_0_in27_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ : in STD_LOGIC;
    p_0_in25_in : in STD_LOGIC;
    p_0_in24_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ : in STD_LOGIC;
    p_0_in22_in : in STD_LOGIC;
    p_0_in21_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ : in STD_LOGIC;
    p_0_in19_in : in STD_LOGIC;
    p_0_in18_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\ : in STD_LOGIC;
    p_0_in16_in : in STD_LOGIC;
    p_0_in15_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\ : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    p_0_in12_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\ : in STD_LOGIC;
    p_0_in10_in : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\ : in STD_LOGIC;
    p_0_in7_in : in STD_LOGIC;
    p_0_in6_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\ : in STD_LOGIC;
    p_0_in4_in : in STD_LOGIC;
    p_0_in3_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : in STD_LOGIC;
    Bus_RNW_reg_reg_51 : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_axi_intc_0_address_decoder : entity is "address_decoder";
end bd_deec_axi_intc_0_address_decoder;

architecture STRUCTURE of bd_deec_axi_intc_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_16 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_18 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal ip2bus_rdack_int_d1_i_2_n_0 : STD_LOGIC;
  signal ip2bus_rdack_int_d1_i_3_n_0 : STD_LOGIC;
  signal \^ip2bus_rdack_reg\ : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_2_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_3_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_4_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_5_n_0 : STD_LOGIC;
  signal \^ip2bus_wrack_reg\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_9_n_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \REG_GEN[0].IMR_FAST_MODE_GEN.imr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \REG_GEN[0].ier[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ip2bus_rdack_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ip2bus_rdack_int_d1_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_9\ : label is "soft_lutpair1";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\;
  \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ <= \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\;
  ip2bus_rdack_reg <= \^ip2bus_rdack_reg\;
  ip2bus_wrack_reg <= \^ip2bus_wrack_reg\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Bus_RNW_reg_reg_51,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      O => Bus_RNW_reg_reg_50
    );
\CIE_GEN.CIE_BIT_GEN[10].cie[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(10),
      I3 => s_axi_aresetn,
      I4 => p_0_in24_in,
      O => Bus_RNW_reg_reg_28
    );
\CIE_GEN.CIE_BIT_GEN[11].cie[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(11),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\,
      O => Bus_RNW_reg_reg_29
    );
\CIE_GEN.CIE_BIT_GEN[12].cie[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(12),
      I3 => s_axi_aresetn,
      I4 => p_0_in22_in,
      O => Bus_RNW_reg_reg_30
    );
\CIE_GEN.CIE_BIT_GEN[13].cie[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(13),
      I3 => s_axi_aresetn,
      I4 => p_0_in21_in,
      O => Bus_RNW_reg_reg_31
    );
\CIE_GEN.CIE_BIT_GEN[14].cie[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(14),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\,
      O => Bus_RNW_reg_reg_32
    );
\CIE_GEN.CIE_BIT_GEN[15].cie[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(15),
      I3 => s_axi_aresetn,
      I4 => p_0_in19_in,
      O => Bus_RNW_reg_reg_33
    );
\CIE_GEN.CIE_BIT_GEN[16].cie[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(16),
      I3 => s_axi_aresetn,
      I4 => p_0_in18_in,
      O => Bus_RNW_reg_reg_34
    );
\CIE_GEN.CIE_BIT_GEN[17].cie[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(17),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\,
      O => Bus_RNW_reg_reg_35
    );
\CIE_GEN.CIE_BIT_GEN[18].cie[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(18),
      I3 => s_axi_aresetn,
      I4 => p_0_in16_in,
      O => Bus_RNW_reg_reg_36
    );
\CIE_GEN.CIE_BIT_GEN[19].cie[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(19),
      I3 => s_axi_aresetn,
      I4 => p_0_in15_in,
      O => Bus_RNW_reg_reg_37
    );
\CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => p_0_in33_in,
      O => Bus_RNW_reg_reg_19
    );
\CIE_GEN.CIE_BIT_GEN[20].cie[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(20),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\,
      O => Bus_RNW_reg_reg_38
    );
\CIE_GEN.CIE_BIT_GEN[21].cie[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(21),
      I3 => s_axi_aresetn,
      I4 => p_0_in13_in,
      O => Bus_RNW_reg_reg_39
    );
\CIE_GEN.CIE_BIT_GEN[22].cie[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(22),
      I3 => s_axi_aresetn,
      I4 => p_0_in12_in,
      O => Bus_RNW_reg_reg_40
    );
\CIE_GEN.CIE_BIT_GEN[23].cie[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(23),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\,
      O => Bus_RNW_reg_reg_41
    );
\CIE_GEN.CIE_BIT_GEN[24].cie[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(24),
      I3 => s_axi_aresetn,
      I4 => p_0_in10_in,
      O => Bus_RNW_reg_reg_42
    );
\CIE_GEN.CIE_BIT_GEN[25].cie[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(25),
      I3 => s_axi_aresetn,
      I4 => p_0_in9_in,
      O => Bus_RNW_reg_reg_43
    );
\CIE_GEN.CIE_BIT_GEN[26].cie[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(26),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\,
      O => Bus_RNW_reg_reg_44
    );
\CIE_GEN.CIE_BIT_GEN[27].cie[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(27),
      I3 => s_axi_aresetn,
      I4 => p_0_in7_in,
      O => Bus_RNW_reg_reg_45
    );
\CIE_GEN.CIE_BIT_GEN[28].cie[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(28),
      I3 => s_axi_aresetn,
      I4 => p_0_in6_in,
      O => Bus_RNW_reg_reg_46
    );
\CIE_GEN.CIE_BIT_GEN[29].cie[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(29),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\,
      O => Bus_RNW_reg_reg_47
    );
\CIE_GEN.CIE_BIT_GEN[2].cie[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(2),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\,
      O => Bus_RNW_reg_reg_20
    );
\CIE_GEN.CIE_BIT_GEN[30].cie[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(30),
      I3 => s_axi_aresetn,
      I4 => p_0_in4_in,
      O => Bus_RNW_reg_reg_48
    );
\CIE_GEN.CIE_BIT_GEN[31].cie[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(31),
      I3 => s_axi_aresetn,
      I4 => p_0_in3_in,
      O => Bus_RNW_reg_reg_49
    );
\CIE_GEN.CIE_BIT_GEN[3].cie[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(3),
      I3 => s_axi_aresetn,
      I4 => p_0_in31_in,
      O => Bus_RNW_reg_reg_21
    );
\CIE_GEN.CIE_BIT_GEN[4].cie[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(4),
      I3 => s_axi_aresetn,
      I4 => p_0_in30_in,
      O => Bus_RNW_reg_reg_22
    );
\CIE_GEN.CIE_BIT_GEN[5].cie[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(5),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\,
      O => Bus_RNW_reg_reg_23
    );
\CIE_GEN.CIE_BIT_GEN[6].cie[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(6),
      I3 => s_axi_aresetn,
      I4 => p_0_in28_in,
      O => Bus_RNW_reg_reg_24
    );
\CIE_GEN.CIE_BIT_GEN[7].cie[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(7),
      I3 => s_axi_aresetn,
      I4 => p_0_in27_in,
      O => Bus_RNW_reg_reg_25
    );
\CIE_GEN.CIE_BIT_GEN[8].cie[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(8),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\,
      O => Bus_RNW_reg_reg_26
    );
\CIE_GEN.CIE_BIT_GEN[9].cie[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_13_in,
      I2 => s_axi_wdata(9),
      I3 => s_axi_aresetn,
      I4 => p_0_in25_in,
      O => Bus_RNW_reg_reg_27
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => ce_expnd_i_18
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_18,
      Q => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_6,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      O => ce_expnd_i_5
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_4,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => Q,
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      O => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      O => ce_expnd_i_1
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => p_1_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^ip2bus_wrack_reg\,
      I1 => s_axi_aresetn,
      I2 => \^ip2bus_rdack_reg\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => ce_expnd_i_17
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_17,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      O => ce_expnd_i_16
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_16,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\,
      Q => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => ce_expnd_i_13
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(1),
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      O => Bus_RNW_reg_reg_18
    );
\REG_GEN[0].IMR_FAST_MODE_GEN.imr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_10_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(1)
    );
\REG_GEN[0].ier[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_16_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(2)
    );
\REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\,
      O => Bus_RNW_reg_reg_15
    );
\REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\,
      O => Bus_RNW_reg_reg_14
    );
\REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\,
      O => Bus_RNW_reg_reg_13
    );
\REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in32_in,
      O => Bus_RNW_reg_reg_12
    );
\REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in29_in,
      O => Bus_RNW_reg_reg_11
    );
\REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in26_in,
      O => Bus_RNW_reg_reg_10
    );
\REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in23_in,
      O => Bus_RNW_reg_reg_9
    );
\REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in20_in,
      O => Bus_RNW_reg_reg_8
    );
\REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in17_in,
      O => Bus_RNW_reg_reg_7
    );
\REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in14_in,
      O => Bus_RNW_reg_reg_6
    );
\REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in11_in,
      O => Bus_RNW_reg_reg_5
    );
\REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in8_in,
      O => Bus_RNW_reg_reg_4
    );
\REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in5_in,
      O => Bus_RNW_reg_reg_3
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in86_in,
      O => Bus_RNW_reg_reg_17
    );
\REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in2_in,
      O => Bus_RNW_reg_reg_2
    );
\REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\,
      O => Bus_RNW_reg_reg_1
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I2 => p_0_in83_in,
      O => Bus_RNW_reg_reg_16
    );
\SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(0),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      O => s_axi_aresetn_0
    );
\SIE_GEN.SIE_BIT_GEN[10].sie[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(10),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in56_in,
      O => s_axi_aresetn_10
    );
\SIE_GEN.SIE_BIT_GEN[11].sie[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(11),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in55_in,
      O => s_axi_aresetn_11
    );
\SIE_GEN.SIE_BIT_GEN[12].sie[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(12),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in54_in,
      O => s_axi_aresetn_12
    );
\SIE_GEN.SIE_BIT_GEN[13].sie[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(13),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in53_in,
      O => s_axi_aresetn_13
    );
\SIE_GEN.SIE_BIT_GEN[14].sie[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(14),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in52_in,
      O => s_axi_aresetn_14
    );
\SIE_GEN.SIE_BIT_GEN[15].sie[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(15),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in51_in,
      O => s_axi_aresetn_15
    );
\SIE_GEN.SIE_BIT_GEN[16].sie[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(16),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in50_in,
      O => s_axi_aresetn_16
    );
\SIE_GEN.SIE_BIT_GEN[17].sie[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(17),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in49_in,
      O => s_axi_aresetn_17
    );
\SIE_GEN.SIE_BIT_GEN[18].sie[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(18),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in48_in,
      O => s_axi_aresetn_18
    );
\SIE_GEN.SIE_BIT_GEN[19].sie[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(19),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in47_in,
      O => s_axi_aresetn_19
    );
\SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(1),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in65_in,
      O => s_axi_aresetn_1
    );
\SIE_GEN.SIE_BIT_GEN[20].sie[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(20),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in46_in,
      O => s_axi_aresetn_20
    );
\SIE_GEN.SIE_BIT_GEN[21].sie[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(21),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in45_in,
      O => s_axi_aresetn_21
    );
\SIE_GEN.SIE_BIT_GEN[22].sie[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(22),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in44_in,
      O => s_axi_aresetn_22
    );
\SIE_GEN.SIE_BIT_GEN[23].sie[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(23),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in43_in,
      O => s_axi_aresetn_23
    );
\SIE_GEN.SIE_BIT_GEN[24].sie[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(24),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in42_in,
      O => s_axi_aresetn_24
    );
\SIE_GEN.SIE_BIT_GEN[25].sie[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(25),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in41_in,
      O => s_axi_aresetn_25
    );
\SIE_GEN.SIE_BIT_GEN[26].sie[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(26),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in40_in,
      O => s_axi_aresetn_26
    );
\SIE_GEN.SIE_BIT_GEN[27].sie[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(27),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in39_in,
      O => s_axi_aresetn_27
    );
\SIE_GEN.SIE_BIT_GEN[28].sie[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(28),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in38_in,
      O => s_axi_aresetn_28
    );
\SIE_GEN.SIE_BIT_GEN[29].sie[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(29),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in37_in,
      O => s_axi_aresetn_29
    );
\SIE_GEN.SIE_BIT_GEN[2].sie[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(2),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in64_in,
      O => s_axi_aresetn_2
    );
\SIE_GEN.SIE_BIT_GEN[30].sie[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(30),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in36_in,
      O => s_axi_aresetn_30
    );
\SIE_GEN.SIE_BIT_GEN[31].sie[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(31),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in35_in,
      O => s_axi_aresetn_31
    );
\SIE_GEN.SIE_BIT_GEN[3].sie[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(3),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in63_in,
      O => s_axi_aresetn_3
    );
\SIE_GEN.SIE_BIT_GEN[4].sie[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(4),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in62_in,
      O => s_axi_aresetn_4
    );
\SIE_GEN.SIE_BIT_GEN[5].sie[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(5),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in61_in,
      O => s_axi_aresetn_5
    );
\SIE_GEN.SIE_BIT_GEN[6].sie[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(6),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in60_in,
      O => s_axi_aresetn_6
    );
\SIE_GEN.SIE_BIT_GEN[7].sie[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(7),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in59_in,
      O => s_axi_aresetn_7
    );
\SIE_GEN.SIE_BIT_GEN[8].sie[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(8),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in58_in,
      O => s_axi_aresetn_8
    );
\SIE_GEN.SIE_BIT_GEN[9].sie[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wdata(9),
      I2 => p_14_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_0_in57_in,
      O => s_axi_aresetn_9
    );
ip2bus_rdack_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2bus_rdack_int_d1_i_2_n_0,
      I2 => ip2bus_wrack_int_d1_i_2_n_0,
      I3 => ip2bus_rdack_int_d1,
      O => ip2bus_rdack_prev2
    );
ip2bus_rdack_int_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2bus_rdack_int_d1_i_2_n_0,
      I2 => ip2bus_wrack_int_d1_i_2_n_0,
      O => Or128_vec2stdlogic19_out
    );
ip2bus_rdack_int_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ip2bus_rdack_int_d1_i_3_n_0,
      I1 => p_13_in,
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I3 => p_2_in,
      I4 => p_14_in,
      O => ip2bus_rdack_int_d1_i_2_n_0
    );
ip2bus_rdack_int_d1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_17_in,
      I1 => p_12_in,
      I2 => p_11_in,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => p_16_in,
      O => ip2bus_rdack_int_d1_i_3_n_0
    );
ip2bus_wrack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF5455"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_17_in,
      I2 => p_12_in,
      I3 => ip2bus_wrack_int_d1_i_2_n_0,
      I4 => ip2bus_wrack_int_d1_i_3_n_0,
      I5 => ip2bus_wrack_int_d1,
      O => ip2bus_wrack_prev2
    );
ip2bus_wrack_int_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5455"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_17_in,
      I2 => p_12_in,
      I3 => ip2bus_wrack_int_d1_i_2_n_0,
      I4 => ip2bus_wrack_int_d1_i_3_n_0,
      O => Or128_vec2stdlogic
    );
ip2bus_wrack_int_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18]\,
      I1 => p_8_in,
      I2 => p_1_in,
      I3 => p_7_in,
      I4 => ip2bus_wrack_int_d1_i_4_n_0,
      O => ip2bus_wrack_int_d1_i_2_n_0
    );
ip2bus_wrack_int_d1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF3332"
    )
        port map (
      I0 => p_16_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_14_in,
      I3 => p_11_in,
      I4 => ip2bus_wrack_int_d1_i_5_n_0,
      O => ip2bus_wrack_int_d1_i_3_n_0
    );
ip2bus_wrack_int_d1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_10_in,
      I1 => p_9_in,
      I2 => p_4_in,
      I3 => p_6_in,
      I4 => p_3_in,
      I5 => p_5_in,
      O => ip2bus_wrack_int_d1_i_4_n_0
    );
ip2bus_wrack_int_d1_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      I1 => p_13_in,
      I2 => p_2_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => ip2bus_wrack_int_d1_i_5_n_0
    );
\mer_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_11_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \mer_int_reg[0]\,
      O => s_axi_wdata_0_sn_1
    );
\mer_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_11_in,
      I3 => p_0_in_0,
      O => s_axi_wdata_1_sn_1
    );
\ram_i[0].ram_reg_0_31_0_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => s_axi_awready(1),
      I2 => s_axi_awready(0),
      I3 => s_axi_awready(3),
      I4 => s_axi_awready(2),
      I5 => s_axi_arready,
      O => \^ip2bus_rdack_reg\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(0),
      I2 => \s_axi_rdata_i_reg[0]\,
      I3 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(0)
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(10),
      I2 => \s_axi_rdata_i_reg[10]\,
      I3 => \s_axi_rdata_i_reg[10]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(10)
    );
\s_axi_rdata_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(11),
      I2 => \s_axi_rdata_i_reg[11]\,
      I3 => \s_axi_rdata_i_reg[11]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(11)
    );
\s_axi_rdata_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[12]\,
      I1 => \s_axi_rdata_i_reg[12]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(12),
      O => D(12)
    );
\s_axi_rdata_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(13),
      I2 => \s_axi_rdata_i_reg[13]\,
      I3 => \s_axi_rdata_i_reg[13]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(13)
    );
\s_axi_rdata_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[14]\,
      I1 => \s_axi_rdata_i_reg[14]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(14),
      O => D(14)
    );
\s_axi_rdata_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(15),
      I2 => \s_axi_rdata_i_reg[15]\,
      I3 => \s_axi_rdata_i_reg[15]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(15)
    );
\s_axi_rdata_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[16]\,
      I1 => \s_axi_rdata_i_reg[16]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(16),
      O => D(16)
    );
\s_axi_rdata_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[17]\,
      I1 => \s_axi_rdata_i_reg[17]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(17),
      O => D(17)
    );
\s_axi_rdata_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[18]\,
      I1 => \s_axi_rdata_i_reg[18]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(18),
      O => D(18)
    );
\s_axi_rdata_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(19),
      I2 => \s_axi_rdata_i_reg[19]\,
      I3 => \s_axi_rdata_i_reg[19]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(19)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(1),
      I2 => \s_axi_rdata_i_reg[1]\,
      I3 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(1)
    );
\s_axi_rdata_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[20]\,
      I1 => \s_axi_rdata_i_reg[20]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(20),
      O => D(20)
    );
\s_axi_rdata_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[21]\,
      I1 => \s_axi_rdata_i_reg[21]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(21),
      O => D(21)
    );
\s_axi_rdata_i[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[22]\,
      I1 => \s_axi_rdata_i_reg[22]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(22),
      O => D(22)
    );
\s_axi_rdata_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[23]\,
      I1 => \s_axi_rdata_i_reg[23]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(23),
      O => D(23)
    );
\s_axi_rdata_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[24]\,
      I1 => \s_axi_rdata_i_reg[24]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(24),
      O => D(24)
    );
\s_axi_rdata_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[25]\,
      I1 => \s_axi_rdata_i_reg[25]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(25),
      O => D(25)
    );
\s_axi_rdata_i[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[26]\,
      I1 => \s_axi_rdata_i_reg[26]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(26),
      O => D(26)
    );
\s_axi_rdata_i[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[27]\,
      I1 => \s_axi_rdata_i_reg[27]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(27),
      O => D(27)
    );
\s_axi_rdata_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[28]\,
      I1 => \s_axi_rdata_i_reg[28]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(28),
      O => D(28)
    );
\s_axi_rdata_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[29]\,
      I1 => \s_axi_rdata_i_reg[29]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(29),
      O => D(29)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[2]\,
      I1 => \s_axi_rdata_i_reg[2]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(2),
      O => D(2)
    );
\s_axi_rdata_i[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(30),
      I2 => \s_axi_rdata_i_reg[30]\,
      I3 => \s_axi_rdata_i_reg[30]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(30)
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE0E0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[31]_0\,
      I1 => \s_axi_rdata_i_reg[31]_1\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(31),
      O => D(31)
    );
\s_axi_rdata_i[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6),
      I1 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(4),
      I2 => \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(5),
      I3 => \s_axi_rdata_i[31]_i_8_n_0\,
      O => \s_axi_rdata_i[31]_i_4_n_0\
    );
\s_axi_rdata_i[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => p_2_in,
      I1 => \s_axi_rdata_i[31]_i_9_n_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_17_in,
      I4 => p_16_in,
      I5 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => \s_axi_rdata_i[31]_i_5_n_0\
    );
\s_axi_rdata_i[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000001FF"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => p_16_in,
      I2 => p_17_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \s_axi_rdata_i[31]_i_9_n_0\,
      O => \s_axi_rdata_i[31]_i_8_n_0\
    );
\s_axi_rdata_i[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => p_11_in,
      I1 => p_12_in,
      I2 => p_9_in,
      I3 => p_10_in,
      I4 => \^bus_rnw_reg_reg_0\,
      O => \s_axi_rdata_i[31]_i_9_n_0\
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(3),
      I2 => \s_axi_rdata_i_reg[3]\,
      I3 => \s_axi_rdata_i_reg[3]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(4),
      I2 => \s_axi_rdata_i_reg[4]\,
      I3 => \s_axi_rdata_i_reg[4]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(5),
      I2 => \s_axi_rdata_i_reg[5]\,
      I3 => \s_axi_rdata_i_reg[5]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[6]\,
      I1 => \s_axi_rdata_i_reg[6]_0\,
      I2 => \s_axi_rdata_i[31]_i_4_n_0\,
      I3 => \s_axi_rdata_i[31]_i_5_n_0\,
      I4 => \s_axi_rdata_i_reg[31]\(6),
      O => D(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(7),
      I2 => \s_axi_rdata_i_reg[7]\,
      I3 => \s_axi_rdata_i_reg[7]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(7)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(8),
      I2 => \s_axi_rdata_i_reg[8]\,
      I3 => \s_axi_rdata_i_reg[8]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(8)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => \s_axi_rdata_i_reg[31]\(9),
      I2 => \s_axi_rdata_i_reg[9]\,
      I3 => \s_axi_rdata_i_reg[9]_0\,
      I4 => \s_axi_rdata_i[31]_i_4_n_0\,
      O => D(9)
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => ip2bus_wrack,
      I1 => s_axi_awready(1),
      I2 => s_axi_awready(0),
      I3 => s_axi_awready(3),
      I4 => s_axi_awready(2),
      I5 => s_axi_awready_0,
      O => \^ip2bus_wrack_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_axi_intc_0_shared_ram_ivar is
  port (
    Douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_i[0].Doutb_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_axi_intc_0_shared_ram_ivar : entity is "shared_ram_ivar";
end bd_deec_axi_intc_0_shared_ram_ivar;

architecture STRUCTURE of bd_deec_axi_intc_0_shared_ram_ivar is
  signal Doutb0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_i[0].ram_reg_0_31_0_0_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_10_10_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_11_11_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_12_12_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_13_13_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_14_14_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_15_15_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_16_16_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_17_17_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_18_18_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_19_19_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_1_1_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_20_20_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_21_21_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_22_22_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_23_23_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_24_24_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_25_25_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_26_26_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_27_27_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_28_28_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_29_29_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_2_2_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_30_30_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_31_31_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_3_3_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_4_4_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_5_5_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_6_6_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_7_7_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_8_8_n_1\ : STD_LOGIC;
  signal \ram_i[0].ram_reg_0_31_9_9_n_1\ : STD_LOGIC;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_0_0\ : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_0_0\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_0_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_0_0\ : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_0_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_0_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_0_0\ : label is 0;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_10_10\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_10_10\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_10_10\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_10_10\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_10_10\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_10_10\ : label is 10;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_10_10\ : label is 10;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_11_11\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_11_11\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_11_11\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_11_11\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_11_11\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_11_11\ : label is 11;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_11_11\ : label is 11;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_12_12\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_12_12\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_12_12\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_12_12\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_12_12\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_12_12\ : label is 12;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_12_12\ : label is 12;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_13_13\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_13_13\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_13_13\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_13_13\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_13_13\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_13_13\ : label is 13;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_13_13\ : label is 13;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_14_14\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_14_14\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_14_14\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_14_14\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_14_14\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_14_14\ : label is 14;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_14_14\ : label is 14;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_15_15\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_15_15\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_15_15\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_15_15\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_15_15\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_15_15\ : label is 15;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_15_15\ : label is 15;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_16_16\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_16_16\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_16_16\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_16_16\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_16_16\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_16_16\ : label is 16;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_16_16\ : label is 16;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_17_17\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_17_17\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_17_17\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_17_17\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_17_17\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_17_17\ : label is 17;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_17_17\ : label is 17;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_18_18\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_18_18\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_18_18\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_18_18\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_18_18\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_18_18\ : label is 18;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_18_18\ : label is 18;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_19_19\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_19_19\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_19_19\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_19_19\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_19_19\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_19_19\ : label is 19;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_19_19\ : label is 19;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_1_1\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_1_1\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_1_1\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_1_1\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_1_1\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_1_1\ : label is 1;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_1_1\ : label is 1;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_20_20\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_20_20\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_20_20\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_20_20\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_20_20\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_20_20\ : label is 20;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_20_20\ : label is 20;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_21_21\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_21_21\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_21_21\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_21_21\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_21_21\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_21_21\ : label is 21;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_21_21\ : label is 21;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_22_22\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_22_22\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_22_22\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_22_22\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_22_22\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_22_22\ : label is 22;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_22_22\ : label is 22;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_23_23\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_23_23\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_23_23\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_23_23\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_23_23\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_23_23\ : label is 23;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_23_23\ : label is 23;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_24_24\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_24_24\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_24_24\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_24_24\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_24_24\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_24_24\ : label is 24;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_24_24\ : label is 24;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_25_25\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_25_25\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_25_25\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_25_25\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_25_25\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_25_25\ : label is 25;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_25_25\ : label is 25;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_26_26\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_26_26\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_26_26\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_26_26\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_26_26\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_26_26\ : label is 26;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_26_26\ : label is 26;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_27_27\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_27_27\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_27_27\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_27_27\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_27_27\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_27_27\ : label is 27;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_27_27\ : label is 27;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_28_28\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_28_28\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_28_28\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_28_28\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_28_28\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_28_28\ : label is 28;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_28_28\ : label is 28;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_29_29\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_29_29\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_29_29\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_29_29\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_29_29\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_29_29\ : label is 29;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_29_29\ : label is 29;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_2_2\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_2_2\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_2_2\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_2_2\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_2_2\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_2_2\ : label is 2;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_2_2\ : label is 2;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_30_30\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_30_30\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_30_30\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_30_30\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_30_30\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_30_30\ : label is 30;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_30_30\ : label is 30;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_31_31\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_31_31\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_31_31\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_31_31\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_31_31\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_31_31\ : label is 31;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_31_31\ : label is 31;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_3_3\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_3_3\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_3_3\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_3_3\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_3_3\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_3_3\ : label is 3;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_3_3\ : label is 3;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_4_4\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_4_4\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_4_4\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_4_4\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_4_4\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_4_4\ : label is 4;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_4_4\ : label is 4;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_5_5\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_5_5\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_5_5\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_5_5\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_5_5\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_5_5\ : label is 5;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_5_5\ : label is 5;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_6_6\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_6_6\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_6_6\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_6_6\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_6_6\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_6_6\ : label is 6;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_6_6\ : label is 6;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_7_7\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_7_7\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_7_7\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_7_7\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_7_7\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_7_7\ : label is 7;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_7_7\ : label is 7;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_8_8\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_8_8\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_8_8\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_8_8\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_8_8\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_8_8\ : label is 8;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_8_8\ : label is 8;
  attribute RTL_RAM_BITS of \ram_i[0].ram_reg_0_31_9_9\ : label is 1024;
  attribute RTL_RAM_NAME of \ram_i[0].ram_reg_0_31_9_9\ : label is "INTC_CORE_I/IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I/ram_i[0].ram";
  attribute ram_addr_begin of \ram_i[0].ram_reg_0_31_9_9\ : label is 0;
  attribute ram_addr_end of \ram_i[0].ram_reg_0_31_9_9\ : label is 31;
  attribute ram_offset of \ram_i[0].ram_reg_0_31_9_9\ : label is 0;
  attribute ram_slice_begin of \ram_i[0].ram_reg_0_31_9_9\ : label is 9;
  attribute ram_slice_end of \ram_i[0].ram_reg_0_31_9_9\ : label is 9;
begin
\ram_i[0].Douta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_0_0_n_1\,
      Q => Douta(0),
      R => '0'
    );
\ram_i[0].Douta_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_10_10_n_1\,
      Q => Douta(10),
      R => '0'
    );
\ram_i[0].Douta_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_11_11_n_1\,
      Q => Douta(11),
      R => '0'
    );
\ram_i[0].Douta_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_12_12_n_1\,
      Q => Douta(12),
      R => '0'
    );
\ram_i[0].Douta_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_13_13_n_1\,
      Q => Douta(13),
      R => '0'
    );
\ram_i[0].Douta_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_14_14_n_1\,
      Q => Douta(14),
      R => '0'
    );
\ram_i[0].Douta_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_15_15_n_1\,
      Q => Douta(15),
      R => '0'
    );
\ram_i[0].Douta_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_16_16_n_1\,
      Q => Douta(16),
      R => '0'
    );
\ram_i[0].Douta_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_17_17_n_1\,
      Q => Douta(17),
      R => '0'
    );
\ram_i[0].Douta_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_18_18_n_1\,
      Q => Douta(18),
      R => '0'
    );
\ram_i[0].Douta_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_19_19_n_1\,
      Q => Douta(19),
      R => '0'
    );
\ram_i[0].Douta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_1_1_n_1\,
      Q => Douta(1),
      R => '0'
    );
\ram_i[0].Douta_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_20_20_n_1\,
      Q => Douta(20),
      R => '0'
    );
\ram_i[0].Douta_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_21_21_n_1\,
      Q => Douta(21),
      R => '0'
    );
\ram_i[0].Douta_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_22_22_n_1\,
      Q => Douta(22),
      R => '0'
    );
\ram_i[0].Douta_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_23_23_n_1\,
      Q => Douta(23),
      R => '0'
    );
\ram_i[0].Douta_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_24_24_n_1\,
      Q => Douta(24),
      R => '0'
    );
\ram_i[0].Douta_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_25_25_n_1\,
      Q => Douta(25),
      R => '0'
    );
\ram_i[0].Douta_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_26_26_n_1\,
      Q => Douta(26),
      R => '0'
    );
\ram_i[0].Douta_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_27_27_n_1\,
      Q => Douta(27),
      R => '0'
    );
\ram_i[0].Douta_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_28_28_n_1\,
      Q => Douta(28),
      R => '0'
    );
\ram_i[0].Douta_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_29_29_n_1\,
      Q => Douta(29),
      R => '0'
    );
\ram_i[0].Douta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_2_2_n_1\,
      Q => Douta(2),
      R => '0'
    );
\ram_i[0].Douta_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_30_30_n_1\,
      Q => Douta(30),
      R => '0'
    );
\ram_i[0].Douta_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_31_31_n_1\,
      Q => Douta(31),
      R => '0'
    );
\ram_i[0].Douta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_3_3_n_1\,
      Q => Douta(3),
      R => '0'
    );
\ram_i[0].Douta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_4_4_n_1\,
      Q => Douta(4),
      R => '0'
    );
\ram_i[0].Douta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_5_5_n_1\,
      Q => Douta(5),
      R => '0'
    );
\ram_i[0].Douta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_6_6_n_1\,
      Q => Douta(6),
      R => '0'
    );
\ram_i[0].Douta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_7_7_n_1\,
      Q => Douta(7),
      R => '0'
    );
\ram_i[0].Douta_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_8_8_n_1\,
      Q => Douta(8),
      R => '0'
    );
\ram_i[0].Douta_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ram_i[0].ram_reg_0_31_9_9_n_1\,
      Q => Douta(9),
      R => '0'
    );
\ram_i[0].Doutb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(0),
      Q => interrupt_address(0),
      R => '0'
    );
\ram_i[0].Doutb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(10),
      Q => interrupt_address(10),
      R => '0'
    );
\ram_i[0].Doutb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(11),
      Q => interrupt_address(11),
      R => '0'
    );
\ram_i[0].Doutb_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(12),
      Q => interrupt_address(12),
      R => '0'
    );
\ram_i[0].Doutb_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(13),
      Q => interrupt_address(13),
      R => '0'
    );
\ram_i[0].Doutb_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(14),
      Q => interrupt_address(14),
      R => '0'
    );
\ram_i[0].Doutb_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(15),
      Q => interrupt_address(15),
      R => '0'
    );
\ram_i[0].Doutb_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(16),
      Q => interrupt_address(16),
      R => '0'
    );
\ram_i[0].Doutb_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(17),
      Q => interrupt_address(17),
      R => '0'
    );
\ram_i[0].Doutb_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(18),
      Q => interrupt_address(18),
      R => '0'
    );
\ram_i[0].Doutb_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(19),
      Q => interrupt_address(19),
      R => '0'
    );
\ram_i[0].Doutb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(1),
      Q => interrupt_address(1),
      R => '0'
    );
\ram_i[0].Doutb_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(20),
      Q => interrupt_address(20),
      R => '0'
    );
\ram_i[0].Doutb_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(21),
      Q => interrupt_address(21),
      R => '0'
    );
\ram_i[0].Doutb_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(22),
      Q => interrupt_address(22),
      R => '0'
    );
\ram_i[0].Doutb_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(23),
      Q => interrupt_address(23),
      R => '0'
    );
\ram_i[0].Doutb_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(24),
      Q => interrupt_address(24),
      R => '0'
    );
\ram_i[0].Doutb_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(25),
      Q => interrupt_address(25),
      R => '0'
    );
\ram_i[0].Doutb_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(26),
      Q => interrupt_address(26),
      R => '0'
    );
\ram_i[0].Doutb_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(27),
      Q => interrupt_address(27),
      R => '0'
    );
\ram_i[0].Doutb_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(28),
      Q => interrupt_address(28),
      R => '0'
    );
\ram_i[0].Doutb_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(29),
      Q => interrupt_address(29),
      R => '0'
    );
\ram_i[0].Doutb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(2),
      Q => interrupt_address(2),
      R => '0'
    );
\ram_i[0].Doutb_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(30),
      Q => interrupt_address(30),
      R => '0'
    );
\ram_i[0].Doutb_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(31),
      Q => interrupt_address(31),
      R => '0'
    );
\ram_i[0].Doutb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(3),
      Q => interrupt_address(3),
      R => '0'
    );
\ram_i[0].Doutb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(4),
      Q => interrupt_address(4),
      R => '0'
    );
\ram_i[0].Doutb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(5),
      Q => interrupt_address(5),
      R => '0'
    );
\ram_i[0].Doutb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(6),
      Q => interrupt_address(6),
      R => '0'
    );
\ram_i[0].Doutb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(7),
      Q => interrupt_address(7),
      R => '0'
    );
\ram_i[0].Doutb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(8),
      Q => interrupt_address(8),
      R => '0'
    );
\ram_i[0].Doutb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(9),
      Q => interrupt_address(9),
      R => '0'
    );
\ram_i[0].ram_reg_0_31_0_0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(0),
      DPO => Doutb0(0),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_0_0_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_10_10\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(10),
      DPO => Doutb0(10),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_10_10_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_11_11\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(11),
      DPO => Doutb0(11),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_11_11_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_12_12\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(12),
      DPO => Doutb0(12),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_12_12_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_13_13\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(13),
      DPO => Doutb0(13),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_13_13_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_14_14\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(14),
      DPO => Doutb0(14),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_14_14_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_15_15\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(15),
      DPO => Doutb0(15),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_15_15_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_16_16\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(16),
      DPO => Doutb0(16),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_16_16_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_17_17\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(17),
      DPO => Doutb0(17),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_17_17_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_18_18\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(18),
      DPO => Doutb0(18),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_18_18_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_19_19\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(19),
      DPO => Doutb0(19),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_19_19_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_1_1\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(1),
      DPO => Doutb0(1),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_1_1_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_20_20\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(20),
      DPO => Doutb0(20),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_20_20_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_21_21\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(21),
      DPO => Doutb0(21),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_21_21_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_22_22\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(22),
      DPO => Doutb0(22),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_22_22_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_23_23\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(23),
      DPO => Doutb0(23),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_23_23_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_24_24\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(24),
      DPO => Doutb0(24),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_24_24_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_25_25\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(25),
      DPO => Doutb0(25),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_25_25_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_26_26\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(26),
      DPO => Doutb0(26),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_26_26_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_27_27\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(27),
      DPO => Doutb0(27),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_27_27_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_28_28\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(28),
      DPO => Doutb0(28),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_28_28_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_29_29\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(29),
      DPO => Doutb0(29),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_29_29_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_2_2\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(2),
      DPO => Doutb0(2),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_2_2_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_30_30\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(30),
      DPO => Doutb0(30),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_30_30_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_31_31\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(31),
      DPO => Doutb0(31),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_31_31_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_3_3\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(3),
      DPO => Doutb0(3),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_3_3_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_4_4\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(4),
      DPO => Doutb0(4),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_4_4_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_5_5\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(5),
      DPO => Doutb0(5),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_5_5_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_6_6\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(6),
      DPO => Doutb0(6),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_6_6_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_7_7\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(7),
      DPO => Doutb0(7),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_7_7_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_8_8\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(8),
      DPO => Doutb0(8),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_8_8_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\ram_i[0].ram_reg_0_31_9_9\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \ram_i[0].Doutb_reg[0]_0\(0),
      A1 => \ram_i[0].Doutb_reg[0]_0\(1),
      A2 => \ram_i[0].Doutb_reg[0]_0\(2),
      A3 => \ram_i[0].Doutb_reg[0]_0\(3),
      A4 => \ram_i[0].Doutb_reg[0]_0\(4),
      D => s_axi_wdata(9),
      DPO => Doutb0(9),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      SPO => \ram_i[0].ram_reg_0_31_9_9_n_1\,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_axi_intc_0_intc_core is
  port (
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    p_0_in89_in : out STD_LOGIC;
    p_0_in86_in : out STD_LOGIC;
    p_0_in83_in : out STD_LOGIC;
    p_0_in80_in : out STD_LOGIC;
    p_0_in77_in : out STD_LOGIC;
    p_0_in74_in : out STD_LOGIC;
    p_0_in71_in : out STD_LOGIC;
    p_0_in68_in : out STD_LOGIC;
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\ : out STD_LOGIC;
    \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0\ : out STD_LOGIC;
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\ : out STD_LOGIC;
    \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0\ : out STD_LOGIC;
    \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0\ : out STD_LOGIC;
    \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0\ : out STD_LOGIC;
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\ : out STD_LOGIC;
    \REG_GEN[16].IMR_FAST_MODE_GEN.imr_reg[16]_0\ : out STD_LOGIC;
    \REG_GEN[17].IMR_FAST_MODE_GEN.imr_reg[17]_0\ : out STD_LOGIC;
    \REG_GEN[18].IMR_FAST_MODE_GEN.imr_reg[18]_0\ : out STD_LOGIC;
    \REG_GEN[19].IMR_FAST_MODE_GEN.imr_reg[19]_0\ : out STD_LOGIC;
    p_0_in32_in : out STD_LOGIC;
    p_0_in29_in : out STD_LOGIC;
    p_0_in26_in : out STD_LOGIC;
    p_0_in23_in : out STD_LOGIC;
    p_0_in20_in : out STD_LOGIC;
    p_0_in17_in : out STD_LOGIC;
    p_0_in14_in : out STD_LOGIC;
    p_0_in11_in : out STD_LOGIC;
    p_0_in8_in : out STD_LOGIC;
    p_0_in5_in : out STD_LOGIC;
    p_0_in2_in : out STD_LOGIC;
    \REG_GEN[31].IMR_FAST_MODE_GEN.imr_reg[31]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    irq : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ : out STD_LOGIC;
    p_0_in65_in : out STD_LOGIC;
    p_0_in64_in : out STD_LOGIC;
    p_0_in63_in : out STD_LOGIC;
    p_0_in62_in : out STD_LOGIC;
    p_0_in61_in : out STD_LOGIC;
    p_0_in60_in : out STD_LOGIC;
    p_0_in59_in : out STD_LOGIC;
    p_0_in58_in : out STD_LOGIC;
    p_0_in57_in : out STD_LOGIC;
    p_0_in56_in : out STD_LOGIC;
    p_0_in55_in : out STD_LOGIC;
    p_0_in54_in : out STD_LOGIC;
    p_0_in53_in : out STD_LOGIC;
    p_0_in52_in : out STD_LOGIC;
    p_0_in51_in : out STD_LOGIC;
    p_0_in50_in : out STD_LOGIC;
    p_0_in49_in : out STD_LOGIC;
    p_0_in48_in : out STD_LOGIC;
    p_0_in47_in : out STD_LOGIC;
    p_0_in46_in : out STD_LOGIC;
    p_0_in45_in : out STD_LOGIC;
    p_0_in44_in : out STD_LOGIC;
    p_0_in43_in : out STD_LOGIC;
    p_0_in42_in : out STD_LOGIC;
    p_0_in41_in : out STD_LOGIC;
    p_0_in40_in : out STD_LOGIC;
    p_0_in39_in : out STD_LOGIC;
    p_0_in38_in : out STD_LOGIC;
    p_0_in37_in : out STD_LOGIC;
    p_0_in36_in : out STD_LOGIC;
    p_0_in35_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : out STD_LOGIC;
    p_0_in33_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\ : out STD_LOGIC;
    p_0_in31_in : out STD_LOGIC;
    p_0_in30_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\ : out STD_LOGIC;
    p_0_in28_in : out STD_LOGIC;
    p_0_in27_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\ : out STD_LOGIC;
    p_0_in25_in : out STD_LOGIC;
    p_0_in24_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\ : out STD_LOGIC;
    p_0_in22_in : out STD_LOGIC;
    p_0_in21_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0\ : out STD_LOGIC;
    p_0_in19_in : out STD_LOGIC;
    p_0_in18_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_0\ : out STD_LOGIC;
    p_0_in16_in : out STD_LOGIC;
    p_0_in15_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_0\ : out STD_LOGIC;
    p_0_in13_in : out STD_LOGIC;
    p_0_in12_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_0\ : out STD_LOGIC;
    p_0_in10_in : out STD_LOGIC;
    p_0_in9_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]_0\ : out STD_LOGIC;
    p_0_in7_in : out STD_LOGIC;
    p_0_in6_in : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]_0\ : out STD_LOGIC;
    p_0_in4_in : out STD_LOGIC;
    p_0_in3_in : out STD_LOGIC;
    \mer_int_reg[0]_0\ : out STD_LOGIC;
    p_0_in_0 : out STD_LOGIC;
    p_1_in154_in : out STD_LOGIC;
    p_1_in152_in : out STD_LOGIC;
    p_1_in150_in : out STD_LOGIC;
    p_1_in148_in : out STD_LOGIC;
    p_1_in146_in : out STD_LOGIC;
    p_1_in144_in : out STD_LOGIC;
    p_1_in142_in : out STD_LOGIC;
    p_1_in140_in : out STD_LOGIC;
    p_1_in138_in : out STD_LOGIC;
    p_1_in136_in : out STD_LOGIC;
    p_1_in134_in : out STD_LOGIC;
    p_1_in132_in : out STD_LOGIC;
    p_1_in130_in : out STD_LOGIC;
    p_1_in128_in : out STD_LOGIC;
    p_1_in126_in : out STD_LOGIC;
    p_1_in124_in : out STD_LOGIC;
    p_1_in122_in : out STD_LOGIC;
    p_1_in120_in : out STD_LOGIC;
    p_1_in118_in : out STD_LOGIC;
    p_1_in116_in : out STD_LOGIC;
    p_1_in114_in : out STD_LOGIC;
    p_1_in112_in : out STD_LOGIC;
    p_1_in110_in : out STD_LOGIC;
    p_1_in108_in : out STD_LOGIC;
    p_1_in106_in : out STD_LOGIC;
    p_1_in104_in : out STD_LOGIC;
    p_1_in102_in : out STD_LOGIC;
    p_1_in100_in : out STD_LOGIC;
    p_1_in98_in : out STD_LOGIC;
    p_1_in96_in : out STD_LOGIC;
    p_0_in137_in : out STD_LOGIC;
    p_0_in147_in : out STD_LOGIC;
    p_0_in145_in : out STD_LOGIC;
    p_0_in123_in : out STD_LOGIC;
    p_0_in121_in : out STD_LOGIC;
    p_0_in107_in : out STD_LOGIC;
    p_0_in95_in : out STD_LOGIC;
    p_0_in129_in : out STD_LOGIC;
    p_0_in131_in : out STD_LOGIC;
    p_0_in133_in : out STD_LOGIC;
    p_0_in153_in : out STD_LOGIC;
    p_0_in151_in : out STD_LOGIC;
    p_0_in149_in : out STD_LOGIC;
    p_0_in143_in : out STD_LOGIC;
    p_0_in141_in : out STD_LOGIC;
    p_0_in139_in : out STD_LOGIC;
    p_0_in135_in : out STD_LOGIC;
    p_0_in127_in : out STD_LOGIC;
    p_0_in125_in : out STD_LOGIC;
    p_0_in115_in : out STD_LOGIC;
    p_0_in119_in : out STD_LOGIC;
    p_0_in117_in : out STD_LOGIC;
    p_0_in113_in : out STD_LOGIC;
    p_0_in111_in : out STD_LOGIC;
    p_0_in109_in : out STD_LOGIC;
    p_0_in105_in : out STD_LOGIC;
    p_0_in103_in : out STD_LOGIC;
    p_0_in97_in : out STD_LOGIC;
    p_0_in99_in : out STD_LOGIC;
    p_0_in101_in : out STD_LOGIC;
    \IVR_GEN.ivr_reg[4]_0\ : out STD_LOGIC;
    \IVR_GEN.ivr_reg[0]_0\ : out STD_LOGIC;
    \REG_GEN[31].isr_reg[31]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 29 downto 0 );
    Douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[24].sie_reg[24]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[25].sie_reg[25]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[26].sie_reg[26]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[27].sie_reg[27]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[28].sie_reg[28]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[29].sie_reg[29]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[30].sie_reg[30]_0\ : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[31].sie_reg[31]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[24].cie_reg[24]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[25].cie_reg[25]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[27].cie_reg[27]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[28].cie_reg[28]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]_1\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[30].cie_reg[30]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[31].cie_reg[31]_0\ : in STD_LOGIC;
    \mer_int_reg[0]_1\ : in STD_LOGIC;
    \mer_int_reg[1]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \ram_i[0].Doutb_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]_0\ : in STD_LOGIC;
    \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]_0\ : in STD_LOGIC;
    \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]_0\ : in STD_LOGIC;
    \REG_GEN[20].IAR_FAST_MODE_GEN.iar_reg[20]_0\ : in STD_LOGIC;
    \REG_GEN[21].IAR_FAST_MODE_GEN.iar_reg[21]_0\ : in STD_LOGIC;
    \REG_GEN[22].IAR_FAST_MODE_GEN.iar_reg[22]_0\ : in STD_LOGIC;
    \REG_GEN[23].IAR_FAST_MODE_GEN.iar_reg[23]_0\ : in STD_LOGIC;
    \REG_GEN[24].IAR_FAST_MODE_GEN.iar_reg[24]_0\ : in STD_LOGIC;
    \REG_GEN[25].IAR_FAST_MODE_GEN.iar_reg[25]_0\ : in STD_LOGIC;
    \REG_GEN[26].IAR_FAST_MODE_GEN.iar_reg[26]_0\ : in STD_LOGIC;
    \REG_GEN[27].IAR_FAST_MODE_GEN.iar_reg[27]_0\ : in STD_LOGIC;
    \REG_GEN[28].IAR_FAST_MODE_GEN.iar_reg[28]_0\ : in STD_LOGIC;
    \REG_GEN[29].IAR_FAST_MODE_GEN.iar_reg[29]_0\ : in STD_LOGIC;
    \REG_GEN[30].IAR_FAST_MODE_GEN.iar_reg[30]_0\ : in STD_LOGIC;
    \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]_0\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_18_in : in STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\ : in STD_LOGIC;
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0\ : in STD_LOGIC;
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0\ : in STD_LOGIC;
    p_15_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_axi_intc_0_intc_core : entity is "intc_core";
end bd_deec_axi_intc_0_intc_core;

architecture STRUCTURE of bd_deec_axi_intc_0_intc_core is
  signal \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[0].cie_reg[0]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[11].cie_reg[11]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[14].cie_reg[14]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[17].cie_reg[17]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[20].cie_reg[20]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[23].cie_reg[23]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[26].cie_reg[26]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[29].cie_reg[29]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[2].cie_reg[2]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[5].cie_reg[5]_0\ : STD_LOGIC;
  signal \^cie_gen.cie_bit_gen[8].cie_reg[8]_0\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr[0]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr[11]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr[12]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr[13]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr[14]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr[15]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr[16]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr[3]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr[5]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr[8]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr[9]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[0]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[10]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[11]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[12]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[13]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[14]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[15]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[16]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[17]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[18]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[19]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[1]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[20]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[21]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[22]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[23]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[24]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[25]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[26]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[27]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[28]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[29]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[2]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[30]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[31]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[3]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[4]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[5]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[6]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[7]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[8]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[9]_i_1_n_0\ : STD_LOGIC;
  signal \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_10_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_11_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_4_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_5_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_6_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_7_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_8_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_9_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_4_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_5_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_6_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_7_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_8_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_4_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_5_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_6_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_10_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_4_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_5_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_6_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_7_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_8_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_9_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[4]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[4]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[4]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[5]_i_1_n_0\ : STD_LOGIC;
  signal Irq_i : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_5_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\ : STD_LOGIC;
  signal \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\ : STD_LOGIC;
  signal \REG_GEN[0].ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \REG_GEN[0].isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \^reg_gen[10].imr_fast_mode_gen.imr_reg[10]_0\ : STD_LOGIC;
  signal \REG_GEN[10].ier[10]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].isr[10]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\ : STD_LOGIC;
  signal \REG_GEN[11].ier[11]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].isr[11]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \^reg_gen[12].imr_fast_mode_gen.imr_reg[12]_0\ : STD_LOGIC;
  signal \REG_GEN[12].ier[12]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[12].isr[12]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \^reg_gen[13].imr_fast_mode_gen.imr_reg[13]_0\ : STD_LOGIC;
  signal \REG_GEN[13].ier[13]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[13].isr[13]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \^reg_gen[14].imr_fast_mode_gen.imr_reg[14]_0\ : STD_LOGIC;
  signal \REG_GEN[14].ier[14]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[14].isr[14]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \^reg_gen[15].imr_fast_mode_gen.imr_reg[15]_0\ : STD_LOGIC;
  signal \REG_GEN[15].ier[15]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[15].isr[15]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[16].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \^reg_gen[16].imr_fast_mode_gen.imr_reg[16]_0\ : STD_LOGIC;
  signal \REG_GEN[16].ier[16]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[16].isr[16]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\ : STD_LOGIC;
  signal \^reg_gen[17].imr_fast_mode_gen.imr_reg[17]_0\ : STD_LOGIC;
  signal \REG_GEN[17].ier[17]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[17].isr[17]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_gen[18].imr_fast_mode_gen.imr_reg[18]_0\ : STD_LOGIC;
  signal \REG_GEN[18].ier[18]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[18].isr[18]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_3_n_0\ : STD_LOGIC;
  signal \^reg_gen[19].imr_fast_mode_gen.imr_reg[19]_0\ : STD_LOGIC;
  signal \REG_GEN[19].ier[19]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[19].isr[19]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_5_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\ : STD_LOGIC;
  signal \REG_GEN[1].ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[20].ier[20]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[20].isr[20]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[21].ier[21]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[21].isr[21]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[22].ier[22]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[22].isr[22]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[23].ier[23]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[23].isr[23]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[24].ier[24]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[24].isr[24]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[25].ier[25]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[25].isr[25]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[26].ier[26]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[26].isr[26]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[27].ier[27]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[27].isr[27]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[28].ier[28]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[28].isr[28]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[29].ier[29]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[29].isr[29]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[2].ier[2]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].isr[2]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[30].ier[30]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[30].isr[30]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_gen[31].imr_fast_mode_gen.imr_reg[31]_0\ : STD_LOGIC;
  signal \REG_GEN[31].ier[31]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[31].isr[31]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[3].ier[3]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].isr[3]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[4].ier[4]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].isr[4]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[5].ier[5]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].isr[5]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[6].ier[6]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].isr[6]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[7].ier[7]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].isr[7]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \REG_GEN[8].ier[8]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].isr[8]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg0\ : STD_LOGIC;
  signal \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\ : STD_LOGIC;
  signal \REG_GEN[9].ier[9]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].isr[9]_i_1_n_0\ : STD_LOGIC;
  signal \^sie_gen.sie_bit_gen[0].sie_reg[0]_0\ : STD_LOGIC;
  signal ack_b01 : STD_LOGIC;
  signal ack_or : STD_LOGIC;
  signal ack_or_i : STD_LOGIC;
  signal ack_or_i_2_n_0 : STD_LOGIC;
  signal ack_or_i_3_n_0 : STD_LOGIC;
  signal ack_or_i_4_n_0 : STD_LOGIC;
  signal ack_or_i_5_n_0 : STD_LOGIC;
  signal ack_or_i_6_n_0 : STD_LOGIC;
  signal ack_or_i_7_n_0 : STD_LOGIC;
  signal ack_or_i_8_n_0 : STD_LOGIC;
  signal ack_or_i_9_n_0 : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \current_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_ack : STD_LOGIC;
  signal first_ack_active : STD_LOGIC;
  signal idle_and_irq : STD_LOGIC;
  signal idle_and_irq_d1 : STD_LOGIC;
  signal in_idle : STD_LOGIC;
  signal intr_d1 : STD_LOGIC;
  signal intr_ff : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute async_reg : string;
  attribute async_reg of intr_ff : signal is "true";
  signal ipr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal irq_gen : STD_LOGIC;
  signal irq_gen_i : STD_LOGIC;
  signal irq_gen_i_2_n_0 : STD_LOGIC;
  signal irq_gen_i_3_n_0 : STD_LOGIC;
  signal irq_gen_i_4_n_0 : STD_LOGIC;
  signal irq_gen_i_5_n_0 : STD_LOGIC;
  signal irq_gen_i_6_n_0 : STD_LOGIC;
  signal irq_gen_i_7_n_0 : STD_LOGIC;
  signal ivar_index_axi_clk : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ivar_index_sample_en : STD_LOGIC;
  signal ivar_index_sample_en_i : STD_LOGIC;
  signal ivr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^mer_int_reg[0]_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal \^p_0_in101_in\ : STD_LOGIC;
  signal \^p_0_in103_in\ : STD_LOGIC;
  signal \^p_0_in105_in\ : STD_LOGIC;
  signal \^p_0_in107_in\ : STD_LOGIC;
  signal \^p_0_in109_in\ : STD_LOGIC;
  signal \^p_0_in10_in\ : STD_LOGIC;
  signal \^p_0_in111_in\ : STD_LOGIC;
  signal \^p_0_in113_in\ : STD_LOGIC;
  signal \^p_0_in115_in\ : STD_LOGIC;
  signal \^p_0_in117_in\ : STD_LOGIC;
  signal \^p_0_in119_in\ : STD_LOGIC;
  signal \^p_0_in11_in\ : STD_LOGIC;
  signal \^p_0_in121_in\ : STD_LOGIC;
  signal \^p_0_in123_in\ : STD_LOGIC;
  signal \^p_0_in125_in\ : STD_LOGIC;
  signal \^p_0_in127_in\ : STD_LOGIC;
  signal \^p_0_in129_in\ : STD_LOGIC;
  signal \^p_0_in12_in\ : STD_LOGIC;
  signal \^p_0_in131_in\ : STD_LOGIC;
  signal \^p_0_in133_in\ : STD_LOGIC;
  signal \^p_0_in135_in\ : STD_LOGIC;
  signal \^p_0_in137_in\ : STD_LOGIC;
  signal \^p_0_in139_in\ : STD_LOGIC;
  signal \^p_0_in13_in\ : STD_LOGIC;
  signal \^p_0_in141_in\ : STD_LOGIC;
  signal \^p_0_in143_in\ : STD_LOGIC;
  signal \^p_0_in145_in\ : STD_LOGIC;
  signal \^p_0_in147_in\ : STD_LOGIC;
  signal \^p_0_in149_in\ : STD_LOGIC;
  signal \^p_0_in14_in\ : STD_LOGIC;
  signal \^p_0_in151_in\ : STD_LOGIC;
  signal \^p_0_in153_in\ : STD_LOGIC;
  signal \^p_0_in15_in\ : STD_LOGIC;
  signal \^p_0_in16_in\ : STD_LOGIC;
  signal \^p_0_in17_in\ : STD_LOGIC;
  signal \^p_0_in18_in\ : STD_LOGIC;
  signal \^p_0_in19_in\ : STD_LOGIC;
  signal \^p_0_in20_in\ : STD_LOGIC;
  signal \^p_0_in21_in\ : STD_LOGIC;
  signal \^p_0_in22_in\ : STD_LOGIC;
  signal \^p_0_in23_in\ : STD_LOGIC;
  signal \^p_0_in24_in\ : STD_LOGIC;
  signal \^p_0_in25_in\ : STD_LOGIC;
  signal \^p_0_in26_in\ : STD_LOGIC;
  signal \^p_0_in27_in\ : STD_LOGIC;
  signal \^p_0_in28_in\ : STD_LOGIC;
  signal \^p_0_in29_in\ : STD_LOGIC;
  signal \^p_0_in2_in\ : STD_LOGIC;
  signal \^p_0_in30_in\ : STD_LOGIC;
  signal \^p_0_in31_in\ : STD_LOGIC;
  signal \^p_0_in32_in\ : STD_LOGIC;
  signal \^p_0_in33_in\ : STD_LOGIC;
  signal \^p_0_in35_in\ : STD_LOGIC;
  signal \^p_0_in36_in\ : STD_LOGIC;
  signal \^p_0_in37_in\ : STD_LOGIC;
  signal \^p_0_in38_in\ : STD_LOGIC;
  signal \^p_0_in39_in\ : STD_LOGIC;
  signal \^p_0_in3_in\ : STD_LOGIC;
  signal \^p_0_in40_in\ : STD_LOGIC;
  signal \^p_0_in41_in\ : STD_LOGIC;
  signal \^p_0_in42_in\ : STD_LOGIC;
  signal \^p_0_in43_in\ : STD_LOGIC;
  signal \^p_0_in44_in\ : STD_LOGIC;
  signal \^p_0_in45_in\ : STD_LOGIC;
  signal \^p_0_in46_in\ : STD_LOGIC;
  signal \^p_0_in47_in\ : STD_LOGIC;
  signal \^p_0_in48_in\ : STD_LOGIC;
  signal \^p_0_in49_in\ : STD_LOGIC;
  signal \^p_0_in4_in\ : STD_LOGIC;
  signal \^p_0_in50_in\ : STD_LOGIC;
  signal \^p_0_in51_in\ : STD_LOGIC;
  signal \^p_0_in52_in\ : STD_LOGIC;
  signal \^p_0_in53_in\ : STD_LOGIC;
  signal \^p_0_in54_in\ : STD_LOGIC;
  signal \^p_0_in55_in\ : STD_LOGIC;
  signal \^p_0_in56_in\ : STD_LOGIC;
  signal \^p_0_in57_in\ : STD_LOGIC;
  signal \^p_0_in58_in\ : STD_LOGIC;
  signal \^p_0_in59_in\ : STD_LOGIC;
  signal \^p_0_in5_in\ : STD_LOGIC;
  signal \^p_0_in60_in\ : STD_LOGIC;
  signal \^p_0_in61_in\ : STD_LOGIC;
  signal \^p_0_in62_in\ : STD_LOGIC;
  signal \^p_0_in63_in\ : STD_LOGIC;
  signal \^p_0_in64_in\ : STD_LOGIC;
  signal \^p_0_in65_in\ : STD_LOGIC;
  signal \^p_0_in68_in\ : STD_LOGIC;
  signal \^p_0_in6_in\ : STD_LOGIC;
  signal \^p_0_in71_in\ : STD_LOGIC;
  signal \^p_0_in74_in\ : STD_LOGIC;
  signal \^p_0_in77_in\ : STD_LOGIC;
  signal \^p_0_in7_in\ : STD_LOGIC;
  signal \^p_0_in80_in\ : STD_LOGIC;
  signal \^p_0_in83_in\ : STD_LOGIC;
  signal \^p_0_in86_in\ : STD_LOGIC;
  signal \^p_0_in89_in\ : STD_LOGIC;
  signal \^p_0_in8_in\ : STD_LOGIC;
  signal p_0_in94_in : STD_LOGIC;
  signal \^p_0_in95_in\ : STD_LOGIC;
  signal \^p_0_in97_in\ : STD_LOGIC;
  signal \^p_0_in99_in\ : STD_LOGIC;
  signal \^p_0_in9_in\ : STD_LOGIC;
  signal \^p_0_in_0\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in_0 : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in_1 : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^p_1_in100_in\ : STD_LOGIC;
  signal \^p_1_in102_in\ : STD_LOGIC;
  signal \^p_1_in104_in\ : STD_LOGIC;
  signal \^p_1_in106_in\ : STD_LOGIC;
  signal \^p_1_in108_in\ : STD_LOGIC;
  signal \^p_1_in110_in\ : STD_LOGIC;
  signal \^p_1_in112_in\ : STD_LOGIC;
  signal \^p_1_in114_in\ : STD_LOGIC;
  signal \^p_1_in116_in\ : STD_LOGIC;
  signal \^p_1_in118_in\ : STD_LOGIC;
  signal \^p_1_in120_in\ : STD_LOGIC;
  signal \^p_1_in122_in\ : STD_LOGIC;
  signal \^p_1_in124_in\ : STD_LOGIC;
  signal \^p_1_in126_in\ : STD_LOGIC;
  signal \^p_1_in128_in\ : STD_LOGIC;
  signal \^p_1_in130_in\ : STD_LOGIC;
  signal \^p_1_in132_in\ : STD_LOGIC;
  signal \^p_1_in134_in\ : STD_LOGIC;
  signal \^p_1_in136_in\ : STD_LOGIC;
  signal \^p_1_in138_in\ : STD_LOGIC;
  signal \^p_1_in140_in\ : STD_LOGIC;
  signal \^p_1_in142_in\ : STD_LOGIC;
  signal \^p_1_in144_in\ : STD_LOGIC;
  signal \^p_1_in146_in\ : STD_LOGIC;
  signal \^p_1_in148_in\ : STD_LOGIC;
  signal \^p_1_in150_in\ : STD_LOGIC;
  signal \^p_1_in152_in\ : STD_LOGIC;
  signal \^p_1_in154_in\ : STD_LOGIC;
  signal \^p_1_in96_in\ : STD_LOGIC;
  signal \^p_1_in98_in\ : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_30_in : STD_LOGIC;
  signal p_31_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal second_ack : STD_LOGIC;
  signal second_ack0 : STD_LOGIC;
  signal second_ack_sync_d1 : STD_LOGIC;
  signal second_ack_sync_d2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1\ : label is "soft_lutpair31";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[0]\ : label is "gen_level_irq:01,wait_ack:10,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]\ : label is "gen_level_irq:01,wait_ack:10,idle:00";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[11]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[12]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[18]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[19]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[22]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[28]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[9]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[0]_i_11\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[3]_i_10\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[3]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[3]_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[3]_i_7\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[3]_i_8\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[3]_i_9\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[4]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_5\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_4\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_4\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_5\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of irq_gen_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of irq_gen_i_4 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of irq_gen_i_5 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of irq_gen_i_7 : label is "soft_lutpair40";
begin
  \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ <= \^cie_gen.cie_bit_gen[0].cie_reg[0]_0\;
  \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\ <= \^cie_gen.cie_bit_gen[11].cie_reg[11]_0\;
  \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0\ <= \^cie_gen.cie_bit_gen[14].cie_reg[14]_0\;
  \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_0\ <= \^cie_gen.cie_bit_gen[17].cie_reg[17]_0\;
  \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_0\ <= \^cie_gen.cie_bit_gen[20].cie_reg[20]_0\;
  \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_0\ <= \^cie_gen.cie_bit_gen[23].cie_reg[23]_0\;
  \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]_0\ <= \^cie_gen.cie_bit_gen[26].cie_reg[26]_0\;
  \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]_0\ <= \^cie_gen.cie_bit_gen[29].cie_reg[29]_0\;
  \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\ <= \^cie_gen.cie_bit_gen[2].cie_reg[2]_0\;
  \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\ <= \^cie_gen.cie_bit_gen[5].cie_reg[5]_0\;
  \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\ <= \^cie_gen.cie_bit_gen[8].cie_reg[8]_0\;
  D(4 downto 0) <= \^d\(4 downto 0);
  \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ <= \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\;
  \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0\ <= \^reg_gen[10].imr_fast_mode_gen.imr_reg[10]_0\;
  \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\ <= \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\;
  \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0\ <= \^reg_gen[12].imr_fast_mode_gen.imr_reg[12]_0\;
  \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0\ <= \^reg_gen[13].imr_fast_mode_gen.imr_reg[13]_0\;
  \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0\ <= \^reg_gen[14].imr_fast_mode_gen.imr_reg[14]_0\;
  \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\ <= \^reg_gen[15].imr_fast_mode_gen.imr_reg[15]_0\;
  \REG_GEN[16].IMR_FAST_MODE_GEN.imr_reg[16]_0\ <= \^reg_gen[16].imr_fast_mode_gen.imr_reg[16]_0\;
  \REG_GEN[17].IMR_FAST_MODE_GEN.imr_reg[17]_0\ <= \^reg_gen[17].imr_fast_mode_gen.imr_reg[17]_0\;
  \REG_GEN[18].IMR_FAST_MODE_GEN.imr_reg[18]_0\ <= \^reg_gen[18].imr_fast_mode_gen.imr_reg[18]_0\;
  \REG_GEN[19].IMR_FAST_MODE_GEN.imr_reg[19]_0\ <= \^reg_gen[19].imr_fast_mode_gen.imr_reg[19]_0\;
  \REG_GEN[31].IMR_FAST_MODE_GEN.imr_reg[31]_0\ <= \^reg_gen[31].imr_fast_mode_gen.imr_reg[31]_0\;
  \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\ <= \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\;
  \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ <= \^sie_gen.sie_bit_gen[0].sie_reg[0]_0\;
  \mer_int_reg[0]_0\ <= \^mer_int_reg[0]_0\;
  p_0_in <= \^p_0_in\;
  p_0_in101_in <= \^p_0_in101_in\;
  p_0_in103_in <= \^p_0_in103_in\;
  p_0_in105_in <= \^p_0_in105_in\;
  p_0_in107_in <= \^p_0_in107_in\;
  p_0_in109_in <= \^p_0_in109_in\;
  p_0_in10_in <= \^p_0_in10_in\;
  p_0_in111_in <= \^p_0_in111_in\;
  p_0_in113_in <= \^p_0_in113_in\;
  p_0_in115_in <= \^p_0_in115_in\;
  p_0_in117_in <= \^p_0_in117_in\;
  p_0_in119_in <= \^p_0_in119_in\;
  p_0_in11_in <= \^p_0_in11_in\;
  p_0_in121_in <= \^p_0_in121_in\;
  p_0_in123_in <= \^p_0_in123_in\;
  p_0_in125_in <= \^p_0_in125_in\;
  p_0_in127_in <= \^p_0_in127_in\;
  p_0_in129_in <= \^p_0_in129_in\;
  p_0_in12_in <= \^p_0_in12_in\;
  p_0_in131_in <= \^p_0_in131_in\;
  p_0_in133_in <= \^p_0_in133_in\;
  p_0_in135_in <= \^p_0_in135_in\;
  p_0_in137_in <= \^p_0_in137_in\;
  p_0_in139_in <= \^p_0_in139_in\;
  p_0_in13_in <= \^p_0_in13_in\;
  p_0_in141_in <= \^p_0_in141_in\;
  p_0_in143_in <= \^p_0_in143_in\;
  p_0_in145_in <= \^p_0_in145_in\;
  p_0_in147_in <= \^p_0_in147_in\;
  p_0_in149_in <= \^p_0_in149_in\;
  p_0_in14_in <= \^p_0_in14_in\;
  p_0_in151_in <= \^p_0_in151_in\;
  p_0_in153_in <= \^p_0_in153_in\;
  p_0_in15_in <= \^p_0_in15_in\;
  p_0_in16_in <= \^p_0_in16_in\;
  p_0_in17_in <= \^p_0_in17_in\;
  p_0_in18_in <= \^p_0_in18_in\;
  p_0_in19_in <= \^p_0_in19_in\;
  p_0_in20_in <= \^p_0_in20_in\;
  p_0_in21_in <= \^p_0_in21_in\;
  p_0_in22_in <= \^p_0_in22_in\;
  p_0_in23_in <= \^p_0_in23_in\;
  p_0_in24_in <= \^p_0_in24_in\;
  p_0_in25_in <= \^p_0_in25_in\;
  p_0_in26_in <= \^p_0_in26_in\;
  p_0_in27_in <= \^p_0_in27_in\;
  p_0_in28_in <= \^p_0_in28_in\;
  p_0_in29_in <= \^p_0_in29_in\;
  p_0_in2_in <= \^p_0_in2_in\;
  p_0_in30_in <= \^p_0_in30_in\;
  p_0_in31_in <= \^p_0_in31_in\;
  p_0_in32_in <= \^p_0_in32_in\;
  p_0_in33_in <= \^p_0_in33_in\;
  p_0_in35_in <= \^p_0_in35_in\;
  p_0_in36_in <= \^p_0_in36_in\;
  p_0_in37_in <= \^p_0_in37_in\;
  p_0_in38_in <= \^p_0_in38_in\;
  p_0_in39_in <= \^p_0_in39_in\;
  p_0_in3_in <= \^p_0_in3_in\;
  p_0_in40_in <= \^p_0_in40_in\;
  p_0_in41_in <= \^p_0_in41_in\;
  p_0_in42_in <= \^p_0_in42_in\;
  p_0_in43_in <= \^p_0_in43_in\;
  p_0_in44_in <= \^p_0_in44_in\;
  p_0_in45_in <= \^p_0_in45_in\;
  p_0_in46_in <= \^p_0_in46_in\;
  p_0_in47_in <= \^p_0_in47_in\;
  p_0_in48_in <= \^p_0_in48_in\;
  p_0_in49_in <= \^p_0_in49_in\;
  p_0_in4_in <= \^p_0_in4_in\;
  p_0_in50_in <= \^p_0_in50_in\;
  p_0_in51_in <= \^p_0_in51_in\;
  p_0_in52_in <= \^p_0_in52_in\;
  p_0_in53_in <= \^p_0_in53_in\;
  p_0_in54_in <= \^p_0_in54_in\;
  p_0_in55_in <= \^p_0_in55_in\;
  p_0_in56_in <= \^p_0_in56_in\;
  p_0_in57_in <= \^p_0_in57_in\;
  p_0_in58_in <= \^p_0_in58_in\;
  p_0_in59_in <= \^p_0_in59_in\;
  p_0_in5_in <= \^p_0_in5_in\;
  p_0_in60_in <= \^p_0_in60_in\;
  p_0_in61_in <= \^p_0_in61_in\;
  p_0_in62_in <= \^p_0_in62_in\;
  p_0_in63_in <= \^p_0_in63_in\;
  p_0_in64_in <= \^p_0_in64_in\;
  p_0_in65_in <= \^p_0_in65_in\;
  p_0_in68_in <= \^p_0_in68_in\;
  p_0_in6_in <= \^p_0_in6_in\;
  p_0_in71_in <= \^p_0_in71_in\;
  p_0_in74_in <= \^p_0_in74_in\;
  p_0_in77_in <= \^p_0_in77_in\;
  p_0_in7_in <= \^p_0_in7_in\;
  p_0_in80_in <= \^p_0_in80_in\;
  p_0_in83_in <= \^p_0_in83_in\;
  p_0_in86_in <= \^p_0_in86_in\;
  p_0_in89_in <= \^p_0_in89_in\;
  p_0_in8_in <= \^p_0_in8_in\;
  p_0_in95_in <= \^p_0_in95_in\;
  p_0_in97_in <= \^p_0_in97_in\;
  p_0_in99_in <= \^p_0_in99_in\;
  p_0_in9_in <= \^p_0_in9_in\;
  p_0_in_0 <= \^p_0_in_0\;
  p_1_in100_in <= \^p_1_in100_in\;
  p_1_in102_in <= \^p_1_in102_in\;
  p_1_in104_in <= \^p_1_in104_in\;
  p_1_in106_in <= \^p_1_in106_in\;
  p_1_in108_in <= \^p_1_in108_in\;
  p_1_in110_in <= \^p_1_in110_in\;
  p_1_in112_in <= \^p_1_in112_in\;
  p_1_in114_in <= \^p_1_in114_in\;
  p_1_in116_in <= \^p_1_in116_in\;
  p_1_in118_in <= \^p_1_in118_in\;
  p_1_in120_in <= \^p_1_in120_in\;
  p_1_in122_in <= \^p_1_in122_in\;
  p_1_in124_in <= \^p_1_in124_in\;
  p_1_in126_in <= \^p_1_in126_in\;
  p_1_in128_in <= \^p_1_in128_in\;
  p_1_in130_in <= \^p_1_in130_in\;
  p_1_in132_in <= \^p_1_in132_in\;
  p_1_in134_in <= \^p_1_in134_in\;
  p_1_in136_in <= \^p_1_in136_in\;
  p_1_in138_in <= \^p_1_in138_in\;
  p_1_in140_in <= \^p_1_in140_in\;
  p_1_in142_in <= \^p_1_in142_in\;
  p_1_in144_in <= \^p_1_in144_in\;
  p_1_in146_in <= \^p_1_in146_in\;
  p_1_in148_in <= \^p_1_in148_in\;
  p_1_in150_in <= \^p_1_in150_in\;
  p_1_in152_in <= \^p_1_in152_in\;
  p_1_in154_in <= \^p_1_in154_in\;
  p_1_in96_in <= \^p_1_in96_in\;
  p_1_in98_in <= \^p_1_in98_in\;
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => processor_ack(0),
      I1 => processor_ack(1),
      I2 => first_ack_active,
      O => \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\,
      Q => first_ack_active,
      R => \^p_0_in\
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => processor_ack(0),
      I1 => processor_ack(1),
      O => ack_b01
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ack_b01,
      Q => first_ack,
      R => \^p_0_in\
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => first_ack_active,
      I1 => processor_ack(1),
      O => second_ack0
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => second_ack0,
      Q => second_ack,
      R => \^p_0_in\
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => second_ack,
      Q => second_ack_sync_d1,
      R => \^p_0_in\
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => second_ack_sync_d1,
      Q => second_ack_sync_d2,
      R => \^p_0_in\
    );
\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1\,
      Q => \^cie_gen.cie_bit_gen[0].cie_reg[0]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\,
      Q => \^p_0_in24_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_1\,
      Q => \^cie_gen.cie_bit_gen[11].cie_reg[11]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\,
      Q => \^p_0_in22_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0\,
      Q => \^p_0_in21_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_1\,
      Q => \^cie_gen.cie_bit_gen[14].cie_reg[14]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\,
      Q => \^p_0_in19_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]_0\,
      Q => \^p_0_in18_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_1\,
      Q => \^cie_gen.cie_bit_gen[17].cie_reg[17]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]_0\,
      Q => \^p_0_in16_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]_0\,
      Q => \^p_0_in15_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\,
      Q => \^p_0_in33_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_1\,
      Q => \^cie_gen.cie_bit_gen[20].cie_reg[20]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]_0\,
      Q => \^p_0_in13_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]_0\,
      Q => \^p_0_in12_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_1\,
      Q => \^cie_gen.cie_bit_gen[23].cie_reg[23]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[24].cie_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[24].cie_reg[24]_0\,
      Q => \^p_0_in10_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[25].cie_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[25].cie_reg[25]_0\,
      Q => \^p_0_in9_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]_1\,
      Q => \^cie_gen.cie_bit_gen[26].cie_reg[26]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[27].cie_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[27].cie_reg[27]_0\,
      Q => \^p_0_in7_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[28].cie_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[28].cie_reg[28]_0\,
      Q => \^p_0_in6_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]_1\,
      Q => \^cie_gen.cie_bit_gen[29].cie_reg[29]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_1\,
      Q => \^cie_gen.cie_bit_gen[2].cie_reg[2]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[30].cie_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[30].cie_reg[30]_0\,
      Q => \^p_0_in4_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[31].cie_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[31].cie_reg[31]_0\,
      Q => \^p_0_in3_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\,
      Q => \^p_0_in31_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\,
      Q => \^p_0_in30_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_1\,
      Q => \^cie_gen.cie_bit_gen[5].cie_reg[5]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\,
      Q => \^p_0_in28_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\,
      Q => \^p_0_in27_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_1\,
      Q => \^cie_gen.cie_bit_gen[8].cie_reg[8]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\,
      Q => \^p_0_in25_in\,
      R => '0'
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000300AA00CF00AA"
    )
        port map (
      I0 => ivar_index_sample_en,
      I1 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\,
      I2 => ack_or,
      I3 => current_state(1),
      I4 => current_state(0),
      I5 => first_ack,
      O => \current_state__0\(0)
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800F80"
    )
        port map (
      I0 => first_ack,
      I1 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => second_ack_sync_d2,
      O => \current_state__0\(1)
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \^p_0_in26_in\,
      I1 => \^p_0_in32_in\,
      I2 => ivar_index_axi_clk(1),
      I3 => ivar_index_axi_clk(0),
      I4 => \^p_0_in23_in\,
      I5 => \^p_0_in29_in\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_10_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^reg_gen[10].imr_fast_mode_gen.imr_reg[10]_0\,
      I1 => \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\,
      I2 => \^p_0_in68_in\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(0),
      I5 => \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_11_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFACF0AC0FAC00A"
    )
        port map (
      I0 => \^reg_gen[12].imr_fast_mode_gen.imr_reg[12]_0\,
      I1 => \^reg_gen[15].imr_fast_mode_gen.imr_reg[15]_0\,
      I2 => ivar_index_axi_clk(0),
      I3 => ivar_index_axi_clk(1),
      I4 => \^reg_gen[13].imr_fast_mode_gen.imr_reg[13]_0\,
      I5 => \^reg_gen[14].imr_fast_mode_gen.imr_reg[14]_0\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_12_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCAF0CA0FCA00C"
    )
        port map (
      I0 => \^p_0_in83_in\,
      I1 => \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\,
      I2 => ivar_index_axi_clk(1),
      I3 => ivar_index_axi_clk(0),
      I4 => \^p_0_in86_in\,
      I5 => \^p_0_in89_in\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_13_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACCFFF0AACC00"
    )
        port map (
      I0 => \^p_0_in77_in\,
      I1 => \^p_0_in74_in\,
      I2 => \^p_0_in71_in\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(0),
      I5 => \^p_0_in80_in\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_14_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_3_n_0\,
      I1 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_4_n_0\,
      I2 => ivar_index_axi_clk(4),
      I3 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0\,
      I4 => ivar_index_axi_clk(3),
      I5 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_6_n_0\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^p_0_in14_in\,
      I1 => \^p_0_in11_in\,
      I2 => ivar_index_axi_clk(1),
      I3 => \^p_0_in17_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => \^p_0_in20_in\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACFFAC0FACF0AC00"
    )
        port map (
      I0 => \^reg_gen[31].imr_fast_mode_gen.imr_reg[31]_0\,
      I1 => \^p_0_in5_in\,
      I2 => ivar_index_axi_clk(1),
      I3 => ivar_index_axi_clk(0),
      I4 => \^p_0_in2_in\,
      I5 => \^p_0_in8_in\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACFFAC00ACF0AC0"
    )
        port map (
      I0 => \^reg_gen[17].imr_fast_mode_gen.imr_reg[17]_0\,
      I1 => \^reg_gen[18].imr_fast_mode_gen.imr_reg[18]_0\,
      I2 => ivar_index_axi_clk(1),
      I3 => ivar_index_axi_clk(0),
      I4 => \^reg_gen[16].imr_fast_mode_gen.imr_reg[16]_0\,
      I5 => \^reg_gen[19].imr_fast_mode_gen.imr_reg[19]_0\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \current_state__0\(0),
      Q => current_state(0),
      R => \^p_0_in\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \current_state__0\(1),
      Q => current_state(1),
      R => \^p_0_in\
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0\,
      I1 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_3_n_0\,
      S => ivar_index_axi_clk(2)
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0\,
      I1 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_10_n_0\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_4_n_0\,
      S => ivar_index_axi_clk(2)
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_11_n_0\,
      I1 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_12_n_0\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0\,
      S => ivar_index_axi_clk(2)
    );
\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_13_n_0\,
      I1 => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_14_n_0\,
      O => \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_6_n_0\,
      S => ivar_index_axi_clk(2)
    );
\INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(0),
      I1 => \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr[0]_i_1_n_0\
    );
\INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr[0]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(10),
      I1 => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1_n_0\
    );
\INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr[10]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(11),
      I1 => \INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr[11]_i_1_n_0\
    );
\INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr[11]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(12),
      I1 => \INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr[12]_i_1_n_0\
    );
\INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr[12]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(13),
      I1 => \INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr[13]_i_1_n_0\
    );
\INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr[13]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(14),
      I1 => \INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr[14]_i_1_n_0\
    );
\INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr[14]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(15),
      Q => intr_ff(0),
      R => '0'
    );
\INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_ff(0),
      Q => intr_ff(1),
      R => '0'
    );
\INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr_ff(1),
      I1 => \INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr[15]_i_1_n_0\
    );
\INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr[15]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(16),
      I1 => \INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr[16]_i_1_n_0\
    );
\INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr[16]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[16].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(1),
      I1 => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1_n_0\
    );
\INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr[1]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(2),
      I1 => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1_n_0\
    );
\INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr[2]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(3),
      I1 => \INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr[3]_i_1_n_0\
    );
\INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr[3]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(4),
      I1 => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1_n_0\
    );
\INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr[4]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(5),
      I1 => \INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr[5]_i_1_n_0\
    );
\INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr[5]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => intr_d1,
      I1 => intr(6),
      I2 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(6),
      Q => intr_d1,
      R => \^p_0_in\
    );
\INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(7),
      I1 => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1_n_0\
    );
\INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr[7]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => intr(8),
      I1 => \INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr[8]_i_1_n_0\
    );
\INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr[8]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I1 => intr(9),
      I2 => \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg\,
      O => \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr[9]_i_1_n_0\
    );
\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr[9]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg\,
      R => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg0\
    );
\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(9),
      Q => \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^p_0_in\
    );
\IPR_GEN.ipr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \REG_GEN[0].ier_reg_n_0_[0]\,
      I1 => \REG_GEN[0].isr_reg_n_0_[0]\,
      O => \IPR_GEN.ipr[0]_i_1_n_0\
    );
\IPR_GEN.ipr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in135_in\,
      I1 => \^p_1_in136_in\,
      O => \IPR_GEN.ipr[10]_i_1_n_0\
    );
\IPR_GEN.ipr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in133_in\,
      I1 => \^p_1_in134_in\,
      O => \IPR_GEN.ipr[11]_i_1_n_0\
    );
\IPR_GEN.ipr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in131_in\,
      I1 => \^p_1_in132_in\,
      O => \IPR_GEN.ipr[12]_i_1_n_0\
    );
\IPR_GEN.ipr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in129_in\,
      I1 => \^p_1_in130_in\,
      O => \IPR_GEN.ipr[13]_i_1_n_0\
    );
\IPR_GEN.ipr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in127_in\,
      I1 => \^p_1_in128_in\,
      O => \IPR_GEN.ipr[14]_i_1_n_0\
    );
\IPR_GEN.ipr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in125_in\,
      I1 => \^p_1_in126_in\,
      O => \IPR_GEN.ipr[15]_i_1_n_0\
    );
\IPR_GEN.ipr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in123_in\,
      I1 => \^p_1_in124_in\,
      O => \IPR_GEN.ipr[16]_i_1_n_0\
    );
\IPR_GEN.ipr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in121_in\,
      I1 => \^p_1_in122_in\,
      O => \IPR_GEN.ipr[17]_i_1_n_0\
    );
\IPR_GEN.ipr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in119_in\,
      I1 => \^p_1_in120_in\,
      O => \IPR_GEN.ipr[18]_i_1_n_0\
    );
\IPR_GEN.ipr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in117_in\,
      I1 => \^p_1_in118_in\,
      O => \IPR_GEN.ipr[19]_i_1_n_0\
    );
\IPR_GEN.ipr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in153_in\,
      I1 => \^p_1_in154_in\,
      O => \IPR_GEN.ipr[1]_i_1_n_0\
    );
\IPR_GEN.ipr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in115_in\,
      I1 => \^p_1_in116_in\,
      O => \IPR_GEN.ipr[20]_i_1_n_0\
    );
\IPR_GEN.ipr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in113_in\,
      I1 => \^p_1_in114_in\,
      O => \IPR_GEN.ipr[21]_i_1_n_0\
    );
\IPR_GEN.ipr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in111_in\,
      I1 => \^p_1_in112_in\,
      O => \IPR_GEN.ipr[22]_i_1_n_0\
    );
\IPR_GEN.ipr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in109_in\,
      I1 => \^p_1_in110_in\,
      O => \IPR_GEN.ipr[23]_i_1_n_0\
    );
\IPR_GEN.ipr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in107_in\,
      I1 => \^p_1_in108_in\,
      O => \IPR_GEN.ipr[24]_i_1_n_0\
    );
\IPR_GEN.ipr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in105_in\,
      I1 => \^p_1_in106_in\,
      O => \IPR_GEN.ipr[25]_i_1_n_0\
    );
\IPR_GEN.ipr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in103_in\,
      I1 => \^p_1_in104_in\,
      O => \IPR_GEN.ipr[26]_i_1_n_0\
    );
\IPR_GEN.ipr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in101_in\,
      I1 => \^p_1_in102_in\,
      O => \IPR_GEN.ipr[27]_i_1_n_0\
    );
\IPR_GEN.ipr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in99_in\,
      I1 => \^p_1_in100_in\,
      O => \IPR_GEN.ipr[28]_i_1_n_0\
    );
\IPR_GEN.ipr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in97_in\,
      I1 => \^p_1_in98_in\,
      O => \IPR_GEN.ipr[29]_i_1_n_0\
    );
\IPR_GEN.ipr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in151_in\,
      I1 => \^p_1_in152_in\,
      O => \IPR_GEN.ipr[2]_i_1_n_0\
    );
\IPR_GEN.ipr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in95_in\,
      I1 => \^p_1_in96_in\,
      O => \IPR_GEN.ipr[30]_i_1_n_0\
    );
\IPR_GEN.ipr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in94_in,
      I1 => p_1_in,
      O => \IPR_GEN.ipr[31]_i_1_n_0\
    );
\IPR_GEN.ipr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in149_in\,
      I1 => \^p_1_in150_in\,
      O => \IPR_GEN.ipr[3]_i_1_n_0\
    );
\IPR_GEN.ipr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in147_in\,
      I1 => \^p_1_in148_in\,
      O => \IPR_GEN.ipr[4]_i_1_n_0\
    );
\IPR_GEN.ipr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in145_in\,
      I1 => \^p_1_in146_in\,
      O => \IPR_GEN.ipr[5]_i_1_n_0\
    );
\IPR_GEN.ipr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in143_in\,
      I1 => \^p_1_in144_in\,
      O => \IPR_GEN.ipr[6]_i_1_n_0\
    );
\IPR_GEN.ipr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in141_in\,
      I1 => \^p_1_in142_in\,
      O => \IPR_GEN.ipr[7]_i_1_n_0\
    );
\IPR_GEN.ipr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in139_in\,
      I1 => \^p_1_in140_in\,
      O => \IPR_GEN.ipr[8]_i_1_n_0\
    );
\IPR_GEN.ipr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in137_in\,
      I1 => \^p_1_in138_in\,
      O => \IPR_GEN.ipr[9]_i_1_n_0\
    );
\IPR_GEN.ipr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[0]_i_1_n_0\,
      Q => ipr(0),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[10]_i_1_n_0\,
      Q => Q(9),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[11]_i_1_n_0\,
      Q => Q(10),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[12]_i_1_n_0\,
      Q => Q(11),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[13]_i_1_n_0\,
      Q => Q(12),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[14]_i_1_n_0\,
      Q => Q(13),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[15]_i_1_n_0\,
      Q => Q(14),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[16]_i_1_n_0\,
      Q => Q(15),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[17]_i_1_n_0\,
      Q => Q(16),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[18]_i_1_n_0\,
      Q => Q(17),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[19]_i_1_n_0\,
      Q => Q(18),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[1]_i_1_n_0\,
      Q => Q(0),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[20]_i_1_n_0\,
      Q => Q(19),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[21]_i_1_n_0\,
      Q => Q(20),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[22]_i_1_n_0\,
      Q => Q(21),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[23]_i_1_n_0\,
      Q => Q(22),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[24]_i_1_n_0\,
      Q => Q(23),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[25]_i_1_n_0\,
      Q => Q(24),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[26]_i_1_n_0\,
      Q => Q(25),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[27]_i_1_n_0\,
      Q => Q(26),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[28]_i_1_n_0\,
      Q => Q(27),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[29]_i_1_n_0\,
      Q => Q(28),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[2]_i_1_n_0\,
      Q => Q(1),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[30]_i_1_n_0\,
      Q => Q(29),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[31]_i_1_n_0\,
      Q => ipr(31),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[3]_i_1_n_0\,
      Q => Q(2),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[4]_i_1_n_0\,
      Q => Q(3),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[5]_i_1_n_0\,
      Q => Q(4),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[6]_i_1_n_0\,
      Q => Q(5),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[7]_i_1_n_0\,
      Q => Q(6),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[8]_i_1_n_0\,
      Q => Q(7),
      R => \^p_0_in\
    );
\IPR_GEN.ipr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[9]_i_1_n_0\,
      Q => Q(8),
      R => \^p_0_in\
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.Irq_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^p_0_in\
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.Irq_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => Irq_i
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.Irq_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Irq_i,
      Q => irq,
      R => \^p_0_in\
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => in_idle
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in_idle,
      Q => \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0\,
      R => \^p_0_in\
    );
\IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I\: entity work.bd_deec_axi_intc_0_shared_ram_ivar
     port map (
      Douta(31 downto 0) => Douta(31 downto 0),
      Q(4 downto 0) => ivar_index_axi_clk(4 downto 0),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      \ram_i[0].Doutb_reg[0]_0\(4 downto 0) => \ram_i[0].Doutb_reg[0]\(4 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0\,
      I1 => \^mer_int_reg[0]_0\,
      I2 => irq_gen,
      O => idle_and_irq
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => idle_and_irq,
      Q => idle_and_irq_d1,
      R => \^p_0_in\
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => ivr(0),
      Q => ivar_index_axi_clk(0),
      R => \^p_0_in\
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^d\(0),
      Q => ivar_index_axi_clk(1),
      R => \^p_0_in\
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^d\(1),
      Q => ivar_index_axi_clk(2),
      R => \^p_0_in\
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^d\(2),
      Q => ivar_index_axi_clk(3),
      R => \^p_0_in\
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^d\(3),
      Q => ivar_index_axi_clk(4),
      R => \^p_0_in\
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^d\(4),
      Q => ivar_index_axi_clk(5),
      R => \^p_0_in\
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => irq_gen,
      I1 => \^mer_int_reg[0]_0\,
      I2 => \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0\,
      I3 => idle_and_irq_d1,
      O => ivar_index_sample_en_i
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ivar_index_sample_en_i,
      Q => ivar_index_sample_en,
      R => \^p_0_in\
    );
\IVR_GEN.ivr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEFF"
    )
        port map (
      I0 => \IVR_GEN.ivr[0]_i_2_n_0\,
      I1 => \IVR_GEN.ivr[0]_i_3_n_0\,
      I2 => \IVR_GEN.ivr[0]_i_4_n_0\,
      I3 => \IPR_GEN.ipr[30]_i_1_n_0\,
      I4 => irq_gen_i_2_n_0,
      I5 => irq_gen_i_3_n_0,
      O => \IVR_GEN.ivr[0]_i_1_n_0\
    );
\IVR_GEN.ivr[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000100030000"
    )
        port map (
      I0 => \IPR_GEN.ipr[6]_i_1_n_0\,
      I1 => \IPR_GEN.ipr[4]_i_1_n_0\,
      I2 => \IVR_GEN.ivr[3]_i_6_n_0\,
      I3 => \IVR_GEN.ivr[3]_i_7_n_0\,
      I4 => \IPR_GEN.ipr[5]_i_1_n_0\,
      I5 => \IPR_GEN.ipr[7]_i_1_n_0\,
      O => \IVR_GEN.ivr[0]_i_10_n_0\
    );
\IVR_GEN.ivr[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \^p_1_in120_in\,
      I1 => \^p_0_in119_in\,
      I2 => \^p_1_in122_in\,
      I3 => \^p_0_in121_in\,
      O => \IVR_GEN.ivr[0]_i_11_n_0\
    );
\IVR_GEN.ivr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFD00FFFFFFFF"
    )
        port map (
      I0 => \IVR_GEN.ivr[0]_i_5_n_0\,
      I1 => \IVR_GEN.ivr[0]_i_6_n_0\,
      I2 => \IVR_GEN.ivr[0]_i_7_n_0\,
      I3 => \IVR_GEN.ivr[2]_i_4_n_0\,
      I4 => \IVR_GEN.ivr[1]_i_6_n_0\,
      I5 => s_axi_aresetn,
      O => \IVR_GEN.ivr[0]_i_2_n_0\
    );
\IVR_GEN.ivr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => irq_gen_i_4_n_0,
      I1 => irq_gen_i_5_n_0,
      I2 => irq_gen_i_6_n_0,
      I3 => \IPR_GEN.ipr[21]_i_1_n_0\,
      I4 => \IPR_GEN.ipr[24]_i_1_n_0\,
      I5 => \IVR_GEN.ivr[0]_i_8_n_0\,
      O => \IVR_GEN.ivr[0]_i_3_n_0\
    );
\IVR_GEN.ivr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000FF00F200"
    )
        port map (
      I0 => \IPR_GEN.ipr[25]_i_1_n_0\,
      I1 => \IPR_GEN.ipr[24]_i_1_n_0\,
      I2 => \IPR_GEN.ipr[21]_i_1_n_0\,
      I3 => irq_gen_i_6_n_0,
      I4 => \IPR_GEN.ipr[23]_i_1_n_0\,
      I5 => \IPR_GEN.ipr[22]_i_1_n_0\,
      O => \IVR_GEN.ivr[0]_i_4_n_0\
    );
\IVR_GEN.ivr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010101BB01BBBB"
    )
        port map (
      I0 => \IVR_GEN.ivr[1]_i_7_n_0\,
      I1 => \IPR_GEN.ipr[9]_i_1_n_0\,
      I2 => \IPR_GEN.ipr[10]_i_1_n_0\,
      I3 => \IPR_GEN.ipr[0]_i_1_n_0\,
      I4 => \IVR_GEN.ivr[0]_i_9_n_0\,
      I5 => \IVR_GEN.ivr[0]_i_10_n_0\,
      O => \IVR_GEN.ivr[0]_i_5_n_0\
    );
\IVR_GEN.ivr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F0F0F000F04"
    )
        port map (
      I0 => \IPR_GEN.ipr[14]_i_1_n_0\,
      I1 => \IPR_GEN.ipr[15]_i_1_n_0\,
      I2 => \IVR_GEN.ivr[3]_i_3_n_0\,
      I3 => \IPR_GEN.ipr[11]_i_1_n_0\,
      I4 => \IPR_GEN.ipr[12]_i_1_n_0\,
      I5 => \IPR_GEN.ipr[13]_i_1_n_0\,
      O => \IVR_GEN.ivr[0]_i_6_n_0\
    );
\IVR_GEN.ivr[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \IPR_GEN.ipr[11]_i_1_n_0\,
      I1 => \IVR_GEN.ivr[3]_i_3_n_0\,
      I2 => irq_gen_i_7_n_0,
      I3 => \IVR_GEN.ivr[4]_i_3_n_0\,
      I4 => \IPR_GEN.ipr[16]_i_1_n_0\,
      I5 => \IVR_GEN.ivr[0]_i_11_n_0\,
      O => \IVR_GEN.ivr[0]_i_7_n_0\
    );
\IVR_GEN.ivr[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F777F777F777"
    )
        port map (
      I0 => \^p_0_in97_in\,
      I1 => \^p_1_in98_in\,
      I2 => \^p_0_in99_in\,
      I3 => \^p_1_in100_in\,
      I4 => \^p_1_in102_in\,
      I5 => \^p_0_in101_in\,
      O => \IVR_GEN.ivr[0]_i_8_n_0\
    );
\IVR_GEN.ivr[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF888888888888"
    )
        port map (
      I0 => \^p_1_in154_in\,
      I1 => \^p_0_in153_in\,
      I2 => \^p_0_in151_in\,
      I3 => \^p_1_in152_in\,
      I4 => \^p_0_in149_in\,
      I5 => \^p_1_in150_in\,
      O => \IVR_GEN.ivr[0]_i_9_n_0\
    );
\IVR_GEN.ivr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAEFFAEFFBFFF"
    )
        port map (
      I0 => \IVR_GEN.ivr[1]_i_2_n_0\,
      I1 => irq_gen_i_3_n_0,
      I2 => \IVR_GEN.ivr[1]_i_3_n_0\,
      I3 => s_axi_aresetn,
      I4 => \IPR_GEN.ipr[28]_i_1_n_0\,
      I5 => \IPR_GEN.ipr[29]_i_1_n_0\,
      O => \IVR_GEN.ivr[1]_i_1_n_0\
    );
\IVR_GEN.ivr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAFFFF02AA0000"
    )
        port map (
      I0 => \IVR_GEN.ivr[1]_i_4_n_0\,
      I1 => \IVR_GEN.ivr[4]_i_3_n_0\,
      I2 => \IVR_GEN.ivr[1]_i_5_n_0\,
      I3 => \IVR_GEN.ivr[2]_i_5_n_0\,
      I4 => \IVR_GEN.ivr[1]_i_6_n_0\,
      I5 => \IVR_GEN.ivr[2]_i_4_n_0\,
      O => \IVR_GEN.ivr[1]_i_2_n_0\
    );
\IVR_GEN.ivr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF800FFFF"
    )
        port map (
      I0 => \^p_1_in108_in\,
      I1 => \^p_0_in107_in\,
      I2 => \IPR_GEN.ipr[25]_i_1_n_0\,
      I3 => irq_gen_i_5_n_0,
      I4 => irq_gen_i_6_n_0,
      I5 => \IPR_GEN.ipr[21]_i_1_n_0\,
      O => \IVR_GEN.ivr[1]_i_3_n_0\
    );
\IVR_GEN.ivr[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15FF1515"
    )
        port map (
      I0 => \IVR_GEN.ivr[1]_i_7_n_0\,
      I1 => \^p_0_in137_in\,
      I2 => \^p_1_in138_in\,
      I3 => \IVR_GEN.ivr[3]_i_4_n_0\,
      I4 => \IVR_GEN.ivr[1]_i_8_n_0\,
      O => \IVR_GEN.ivr[1]_i_4_n_0\
    );
\IVR_GEN.ivr[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^p_0_in129_in\,
      I1 => \^p_1_in130_in\,
      I2 => \^p_0_in131_in\,
      I3 => \^p_1_in132_in\,
      I4 => \IVR_GEN.ivr[3]_i_3_n_0\,
      I5 => \IPR_GEN.ipr[11]_i_1_n_0\,
      O => \IVR_GEN.ivr[1]_i_5_n_0\
    );
\IVR_GEN.ivr[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \IPR_GEN.ipr[17]_i_1_n_0\,
      I1 => \IPR_GEN.ipr[11]_i_1_n_0\,
      I2 => \IVR_GEN.ivr[3]_i_3_n_0\,
      I3 => irq_gen_i_7_n_0,
      I4 => \IVR_GEN.ivr[4]_i_3_n_0\,
      I5 => \IPR_GEN.ipr[16]_i_1_n_0\,
      O => \IVR_GEN.ivr[1]_i_6_n_0\
    );
\IVR_GEN.ivr[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \IVR_GEN.ivr[3]_i_9_n_0\,
      I1 => \IPR_GEN.ipr[5]_i_1_n_0\,
      I2 => \IPR_GEN.ipr[6]_i_1_n_0\,
      I3 => \IVR_GEN.ivr[3]_i_7_n_0\,
      I4 => \IVR_GEN.ivr[3]_i_6_n_0\,
      I5 => \IPR_GEN.ipr[4]_i_1_n_0\,
      O => \IVR_GEN.ivr[1]_i_7_n_0\
    );
\IVR_GEN.ivr[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444455545554555"
    )
        port map (
      I0 => \IVR_GEN.ivr[3]_i_7_n_0\,
      I1 => \IVR_GEN.ivr[3]_i_6_n_0\,
      I2 => \^p_1_in148_in\,
      I3 => \^p_0_in147_in\,
      I4 => \^p_1_in146_in\,
      I5 => \^p_0_in145_in\,
      O => \IVR_GEN.ivr[1]_i_8_n_0\
    );
\IVR_GEN.ivr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF777F"
    )
        port map (
      I0 => irq_gen_i_3_n_0,
      I1 => s_axi_aresetn,
      I2 => \IVR_GEN.ivr[2]_i_2_n_0\,
      I3 => \IVR_GEN.ivr[3]_i_2_n_0\,
      I4 => \IVR_GEN.ivr[2]_i_3_n_0\,
      O => \IVR_GEN.ivr[2]_i_1_n_0\
    );
\IVR_GEN.ivr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \IVR_GEN.ivr[2]_i_4_n_0\,
      I1 => \^p_1_in124_in\,
      I2 => \^p_0_in123_in\,
      I3 => \IVR_GEN.ivr[4]_i_2_n_0\,
      I4 => \^p_0_in121_in\,
      I5 => \^p_1_in122_in\,
      O => \IVR_GEN.ivr[2]_i_2_n_0\
    );
\IVR_GEN.ivr[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888F"
    )
        port map (
      I0 => \IVR_GEN.ivr[4]_i_2_n_0\,
      I1 => \IVR_GEN.ivr[2]_i_5_n_0\,
      I2 => \IVR_GEN.ivr[3]_i_4_n_0\,
      I3 => \IVR_GEN.ivr[2]_i_6_n_0\,
      O => \IVR_GEN.ivr[2]_i_3_n_0\
    );
\IVR_GEN.ivr[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in120_in\,
      I1 => \^p_0_in119_in\,
      I2 => \^p_1_in118_in\,
      I3 => \^p_0_in117_in\,
      O => \IVR_GEN.ivr[2]_i_4_n_0\
    );
\IVR_GEN.ivr[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^p_1_in134_in\,
      I1 => \^p_0_in133_in\,
      I2 => \IVR_GEN.ivr[3]_i_3_n_0\,
      O => \IVR_GEN.ivr[2]_i_5_n_0\
    );
\IVR_GEN.ivr[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \REG_GEN[0].ier_reg_n_0_[0]\,
      I1 => \REG_GEN[0].isr_reg_n_0_[0]\,
      I2 => \^p_0_in153_in\,
      I3 => \^p_1_in154_in\,
      I4 => \IVR_GEN.ivr[3]_i_6_n_0\,
      O => \IVR_GEN.ivr[2]_i_6_n_0\
    );
\IVR_GEN.ivr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDDDFD"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \IVR_GEN.ivr[3]_i_2_n_0\,
      I2 => \IVR_GEN.ivr[4]_i_2_n_0\,
      I3 => \IVR_GEN.ivr[3]_i_3_n_0\,
      I4 => \IVR_GEN.ivr[3]_i_4_n_0\,
      O => \IVR_GEN.ivr[3]_i_1_n_0\
    );
\IVR_GEN.ivr[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in138_in\,
      I1 => \^p_0_in137_in\,
      I2 => \^p_1_in136_in\,
      I3 => \^p_0_in135_in\,
      O => \IVR_GEN.ivr[3]_i_10_n_0\
    );
\IVR_GEN.ivr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011100000000"
    )
        port map (
      I0 => \IPR_GEN.ipr[21]_i_1_n_0\,
      I1 => \IVR_GEN.ivr[4]_i_2_n_0\,
      I2 => \^p_0_in123_in\,
      I3 => \^p_1_in124_in\,
      I4 => \IVR_GEN.ivr[3]_i_5_n_0\,
      I5 => irq_gen_i_5_n_0,
      O => \IVR_GEN.ivr[3]_i_2_n_0\
    );
\IVR_GEN.ivr[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \IPR_GEN.ipr[4]_i_1_n_0\,
      I1 => \IVR_GEN.ivr[3]_i_6_n_0\,
      I2 => \IVR_GEN.ivr[3]_i_7_n_0\,
      I3 => \IVR_GEN.ivr[3]_i_8_n_0\,
      I4 => \IVR_GEN.ivr[3]_i_9_n_0\,
      I5 => \IVR_GEN.ivr[3]_i_10_n_0\,
      O => \IVR_GEN.ivr[3]_i_3_n_0\
    );
\IVR_GEN.ivr[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \IPR_GEN.ipr[7]_i_1_n_0\,
      I1 => \IPR_GEN.ipr[5]_i_1_n_0\,
      I2 => \IVR_GEN.ivr[3]_i_7_n_0\,
      I3 => \IVR_GEN.ivr[3]_i_6_n_0\,
      I4 => \IPR_GEN.ipr[4]_i_1_n_0\,
      I5 => \IPR_GEN.ipr[6]_i_1_n_0\,
      O => \IVR_GEN.ivr[3]_i_4_n_0\
    );
\IVR_GEN.ivr[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IVR_GEN.ivr[2]_i_4_n_0\,
      I1 => \^p_0_in115_in\,
      I2 => \^p_1_in116_in\,
      I3 => \^p_0_in121_in\,
      I4 => \^p_1_in122_in\,
      O => \IVR_GEN.ivr[3]_i_5_n_0\
    );
\IVR_GEN.ivr[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in152_in\,
      I1 => \^p_0_in151_in\,
      I2 => \^p_1_in150_in\,
      I3 => \^p_0_in149_in\,
      O => \IVR_GEN.ivr[3]_i_6_n_0\
    );
\IVR_GEN.ivr[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in154_in\,
      I1 => \^p_0_in153_in\,
      I2 => \REG_GEN[0].isr_reg_n_0_[0]\,
      I3 => \REG_GEN[0].ier_reg_n_0_[0]\,
      O => \IVR_GEN.ivr[3]_i_7_n_0\
    );
\IVR_GEN.ivr[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in146_in\,
      I1 => \^p_0_in145_in\,
      I2 => \^p_1_in144_in\,
      I3 => \^p_0_in143_in\,
      O => \IVR_GEN.ivr[3]_i_8_n_0\
    );
\IVR_GEN.ivr[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in142_in\,
      I1 => \^p_0_in141_in\,
      I2 => \^p_1_in140_in\,
      I3 => \^p_0_in139_in\,
      O => \IVR_GEN.ivr[3]_i_9_n_0\
    );
\IVR_GEN.ivr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \IVR_GEN.ivr[4]_i_2_n_0\,
      O => \IVR_GEN.ivr[4]_i_1_n_0\
    );
\IVR_GEN.ivr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFFFFFFFF"
    )
        port map (
      I0 => \IPR_GEN.ipr[11]_i_1_n_0\,
      I1 => \IVR_GEN.ivr[3]_i_3_n_0\,
      I2 => \^p_1_in132_in\,
      I3 => \^p_0_in131_in\,
      I4 => \IPR_GEN.ipr[13]_i_1_n_0\,
      I5 => \IVR_GEN.ivr[4]_i_3_n_0\,
      O => \IVR_GEN.ivr[4]_i_2_n_0\
    );
\IVR_GEN.ivr[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^p_1_in128_in\,
      I1 => \^p_0_in127_in\,
      I2 => \^p_1_in126_in\,
      I3 => \^p_0_in125_in\,
      O => \IVR_GEN.ivr[4]_i_3_n_0\
    );
\IVR_GEN.ivr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110111"
    )
        port map (
      I0 => irq_gen_i_3_n_0,
      I1 => irq_gen_i_2_n_0,
      I2 => \^p_0_in95_in\,
      I3 => \^p_1_in96_in\,
      I4 => p_1_in,
      I5 => p_0_in94_in,
      O => \IVR_GEN.ivr[5]_i_1_n_0\
    );
\IVR_GEN.ivr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[0]_i_1_n_0\,
      Q => ivr(0),
      R => '0'
    );
\IVR_GEN.ivr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[1]_i_1_n_0\,
      Q => \^d\(0),
      R => '0'
    );
\IVR_GEN.ivr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[2]_i_1_n_0\,
      Q => \^d\(1),
      R => '0'
    );
\IVR_GEN.ivr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[3]_i_1_n_0\,
      Q => \^d\(2),
      R => '0'
    );
\IVR_GEN.ivr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[4]_i_1_n_0\,
      Q => \^d\(3),
      R => '0'
    );
\IVR_GEN.ivr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[5]_i_1_n_0\,
      Q => \^d\(4),
      S => \^p_0_in\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      I1 => s_axi_aresetn,
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\,
      I2 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0\,
      I3 => second_ack,
      I4 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_5_n_0\,
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(0),
      I2 => \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\,
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ivar_index_axi_clk(3),
      I1 => ivar_index_axi_clk(2),
      I2 => ivar_index_axi_clk(4),
      I3 => ivar_index_axi_clk(5),
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_5_n_0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\,
      Q => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      R => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(0),
      Q => \^reg_gen[0].imr_fast_mode_gen.imr_reg[0]_0\,
      R => \^p_0_in\
    );
\REG_GEN[0].ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \REG_GEN[0].ier_reg_n_0_[0]\,
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]_0\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(0),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[0].cie_reg[0]_0\,
      O => \REG_GEN[0].ier[0]_i_1_n_0\
    );
\REG_GEN[0].ier_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].ier[0]_i_1_n_0\,
      Q => \REG_GEN[0].ier_reg_n_0_[0]\,
      R => '0'
    );
\REG_GEN[0].isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(0),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \REG_GEN[0].isr_reg_n_0_[0]\,
      O => \REG_GEN[0].isr[0]_i_1_n_0\
    );
\REG_GEN[0].isr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].isr[0]_i_1_n_0\,
      Q => \REG_GEN[0].isr_reg_n_0_[0]\,
      R => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_10_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(10),
      I3 => second_ack,
      I4 => \^reg_gen[10].imr_fast_mode_gen.imr_reg[10]_0\,
      I5 => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3_n_0\,
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_4_n_0\,
      I1 => ivar_index_axi_clk(5),
      I2 => ivar_index_axi_clk(4),
      I3 => ivar_index_axi_clk(3),
      I4 => ivar_index_axi_clk(1),
      I5 => \^reg_gen[10].imr_fast_mode_gen.imr_reg[10]_0\,
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3_n_0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => second_ack,
      I1 => ivar_index_axi_clk(2),
      I2 => ivar_index_axi_clk(0),
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_4_n_0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0\,
      Q => p_10_in,
      R => \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(10),
      Q => \^reg_gen[10].imr_fast_mode_gen.imr_reg[10]_0\,
      R => \^p_0_in\
    );
\REG_GEN[10].ier[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in135_in\,
      I1 => \^p_0_in56_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(10),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in24_in\,
      O => \REG_GEN[10].ier[10]_i_1_n_0\
    );
\REG_GEN[10].ier_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[10].ier[10]_i_1_n_0\,
      Q => \^p_0_in135_in\,
      R => '0'
    );
\REG_GEN[10].isr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[10].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(10),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in136_in\,
      O => \REG_GEN[10].isr[10]_i_1_n_0\
    );
\REG_GEN[10].isr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[10].isr[10]_i_1_n_0\,
      Q => \^p_1_in136_in\,
      R => \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_11_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FD202020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(11),
      I3 => second_ack,
      I4 => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3_n_0\,
      I5 => \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\,
      O => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0\,
      I1 => \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\,
      I2 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I3 => ivar_index_axi_clk(3),
      I4 => ivar_index_axi_clk(2),
      I5 => second_ack,
      O => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3_n_0\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0\,
      Q => p_11_in,
      R => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(11),
      Q => \^reg_gen[11].imr_fast_mode_gen.imr_reg[11]_0\,
      R => \^p_0_in\
    );
\REG_GEN[11].ier[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in133_in\,
      I1 => \^p_0_in55_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(11),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[11].cie_reg[11]_0\,
      O => \REG_GEN[11].ier[11]_i_1_n_0\
    );
\REG_GEN[11].ier_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[11].ier[11]_i_1_n_0\,
      Q => \^p_0_in133_in\,
      R => '0'
    );
\REG_GEN[11].isr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[11].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(11),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in134_in\,
      O => \REG_GEN[11].isr[11]_i_1_n_0\
    );
\REG_GEN[11].isr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[11].isr[11]_i_1_n_0\,
      Q => \^p_1_in134_in\,
      R => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_12_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(12),
      I3 => second_ack,
      I4 => \^reg_gen[12].imr_fast_mode_gen.imr_reg[12]_0\,
      I5 => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_3_n_0\,
      O => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0\
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I2 => \^reg_gen[12].imr_fast_mode_gen.imr_reg[12]_0\,
      I3 => ivar_index_axi_clk(0),
      I4 => second_ack,
      I5 => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_4_n_0\,
      O => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_3_n_0\
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => ivar_index_axi_clk(3),
      O => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_4_n_0\
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0\,
      Q => p_12_in,
      R => \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(12),
      Q => \^reg_gen[12].imr_fast_mode_gen.imr_reg[12]_0\,
      R => \^p_0_in\
    );
\REG_GEN[12].ier[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in131_in\,
      I1 => \^p_0_in54_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(12),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in22_in\,
      O => \REG_GEN[12].ier[12]_i_1_n_0\
    );
\REG_GEN[12].ier_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[12].ier[12]_i_1_n_0\,
      Q => \^p_0_in131_in\,
      R => '0'
    );
\REG_GEN[12].isr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[12].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(12),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in132_in\,
      O => \REG_GEN[12].isr[12]_i_1_n_0\
    );
\REG_GEN[12].isr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[12].isr[12]_i_1_n_0\,
      Q => \^p_1_in132_in\,
      R => \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_13_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(13),
      I3 => second_ack,
      I4 => \^reg_gen[13].imr_fast_mode_gen.imr_reg[13]_0\,
      I5 => \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_3_n_0\,
      O => \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0\
    );
\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_5_n_0\,
      I1 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I2 => second_ack,
      I3 => \^reg_gen[13].imr_fast_mode_gen.imr_reg[13]_0\,
      I4 => ivar_index_axi_clk(2),
      I5 => ivar_index_axi_clk(3),
      O => \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_3_n_0\
    );
\REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0\,
      Q => p_13_in,
      R => \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(13),
      Q => \^reg_gen[13].imr_fast_mode_gen.imr_reg[13]_0\,
      R => \^p_0_in\
    );
\REG_GEN[13].ier[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in129_in\,
      I1 => \^p_0_in53_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(13),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in21_in\,
      O => \REG_GEN[13].ier[13]_i_1_n_0\
    );
\REG_GEN[13].ier_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[13].ier[13]_i_1_n_0\,
      Q => \^p_0_in129_in\,
      R => '0'
    );
\REG_GEN[13].isr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[13].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(13),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in130_in\,
      O => \REG_GEN[13].isr[13]_i_1_n_0\
    );
\REG_GEN[13].isr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[13].isr[13]_i_1_n_0\,
      Q => \^p_1_in130_in\,
      R => \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_14_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(14),
      I3 => second_ack,
      I4 => \^reg_gen[14].imr_fast_mode_gen.imr_reg[14]_0\,
      I5 => \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_3_n_0\,
      O => \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0\
    );
\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I1 => second_ack,
      I2 => ivar_index_axi_clk(3),
      I3 => ivar_index_axi_clk(2),
      I4 => \^reg_gen[14].imr_fast_mode_gen.imr_reg[14]_0\,
      I5 => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_4_n_0\,
      O => \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_3_n_0\
    );
\REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0\,
      Q => p_14_in,
      R => \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(14),
      Q => \^reg_gen[14].imr_fast_mode_gen.imr_reg[14]_0\,
      R => \^p_0_in\
    );
\REG_GEN[14].ier[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in127_in\,
      I1 => \^p_0_in52_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(14),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[14].cie_reg[14]_0\,
      O => \REG_GEN[14].ier[14]_i_1_n_0\
    );
\REG_GEN[14].ier_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[14].ier[14]_i_1_n_0\,
      Q => \^p_0_in127_in\,
      R => '0'
    );
\REG_GEN[14].isr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[14].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(14),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in128_in\,
      O => \REG_GEN[14].isr[14]_i_1_n_0\
    );
\REG_GEN[14].isr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[14].isr[14]_i_1_n_0\,
      Q => \^p_1_in128_in\,
      R => \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_15_in_0,
      I1 => s_axi_aresetn,
      O => \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FD202020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(15),
      I3 => second_ack,
      I4 => \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_3_n_0\,
      I5 => \^reg_gen[15].imr_fast_mode_gen.imr_reg[15]_0\,
      O => \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0\
    );
\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I1 => second_ack,
      I2 => ivar_index_axi_clk(3),
      I3 => ivar_index_axi_clk(2),
      I4 => \^reg_gen[15].imr_fast_mode_gen.imr_reg[15]_0\,
      I5 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0\,
      O => \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_3_n_0\
    );
\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0\,
      Q => p_15_in_0,
      R => \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(15),
      Q => \^reg_gen[15].imr_fast_mode_gen.imr_reg[15]_0\,
      R => \^p_0_in\
    );
\REG_GEN[15].ier[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in125_in\,
      I1 => \^p_0_in51_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(15),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in19_in\,
      O => \REG_GEN[15].ier[15]_i_1_n_0\
    );
\REG_GEN[15].ier_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[15].ier[15]_i_1_n_0\,
      Q => \^p_0_in125_in\,
      R => '0'
    );
\REG_GEN[15].isr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[15].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(15),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in126_in\,
      O => \REG_GEN[15].isr[15]_i_1_n_0\
    );
\REG_GEN[15].isr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[15].isr[15]_i_1_n_0\,
      Q => \^p_1_in126_in\,
      R => \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_16_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[16].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(16),
      I3 => second_ack,
      I4 => \^reg_gen[16].imr_fast_mode_gen.imr_reg[16]_0\,
      I5 => \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_3_n_0\,
      O => \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_2_n_0\
    );
\REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_4_n_0\,
      I1 => ivar_index_axi_clk(2),
      I2 => ivar_index_axi_clk(3),
      I3 => ivar_index_axi_clk(1),
      I4 => \^reg_gen[16].imr_fast_mode_gen.imr_reg[16]_0\,
      I5 => second_ack,
      O => \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_3_n_0\
    );
\REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ivar_index_axi_clk(4),
      I1 => ivar_index_axi_clk(5),
      I2 => ivar_index_axi_clk(0),
      O => \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_4_n_0\
    );
\REG_GEN[16].IAR_FAST_MODE_GEN.iar_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[16].IAR_FAST_MODE_GEN.iar[16]_i_2_n_0\,
      Q => p_16_in,
      R => \REG_GEN[16].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[16].IMR_FAST_MODE_GEN.imr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(16),
      Q => \^reg_gen[16].imr_fast_mode_gen.imr_reg[16]_0\,
      R => \^p_0_in\
    );
\REG_GEN[16].ier[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in123_in\,
      I1 => \^p_0_in50_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(16),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in18_in\,
      O => \REG_GEN[16].ier[16]_i_1_n_0\
    );
\REG_GEN[16].ier_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[16].ier[16]_i_1_n_0\,
      Q => \^p_0_in123_in\,
      R => '0'
    );
\REG_GEN[16].isr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[16].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(16),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in124_in\,
      O => \REG_GEN[16].isr[16]_i_1_n_0\
    );
\REG_GEN[16].isr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[16].isr[16]_i_1_n_0\,
      Q => \^p_1_in124_in\,
      R => \REG_GEN[16].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_2_n_0\,
      I1 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(17),
      I4 => s_axi_aresetn,
      I5 => p_17_in,
      O => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_1_n_0\
    );
\REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I1 => \^reg_gen[17].imr_fast_mode_gen.imr_reg[17]_0\,
      I2 => ivar_index_axi_clk(3),
      I3 => ivar_index_axi_clk(2),
      I4 => ivar_index_axi_clk(1),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_2_n_0\
    );
\REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ivar_index_axi_clk(5),
      I1 => ivar_index_axi_clk(4),
      I2 => second_ack,
      O => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\
    );
\REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_1_n_0\,
      Q => p_17_in,
      R => '0'
    );
\REG_GEN[17].IMR_FAST_MODE_GEN.imr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(17),
      Q => \^reg_gen[17].imr_fast_mode_gen.imr_reg[17]_0\,
      R => \^p_0_in\
    );
\REG_GEN[17].ier[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in121_in\,
      I1 => \^p_0_in49_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(17),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[17].cie_reg[17]_0\,
      O => \REG_GEN[17].ier[17]_i_1_n_0\
    );
\REG_GEN[17].ier_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[17].ier[17]_i_1_n_0\,
      Q => \^p_0_in121_in\,
      R => '0'
    );
\REG_GEN[17].isr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in122_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(17),
      I4 => s_axi_aresetn,
      I5 => p_17_in,
      O => \REG_GEN[17].isr[17]_i_1_n_0\
    );
\REG_GEN[17].isr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[17].isr[17]_i_1_n_0\,
      Q => \^p_1_in122_in\,
      R => '0'
    );
\REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_2_n_0\,
      I1 => \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(18),
      I4 => s_axi_aresetn,
      I5 => p_18_in_1,
      O => \REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_1_n_0\
    );
\REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I2 => ivar_index_axi_clk(3),
      I3 => \^reg_gen[18].imr_fast_mode_gen.imr_reg[18]_0\,
      I4 => ivar_index_axi_clk(0),
      I5 => ivar_index_axi_clk(1),
      O => \REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_2_n_0\
    );
\REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[18].IAR_FAST_MODE_GEN.iar[18]_i_1_n_0\,
      Q => p_18_in_1,
      R => '0'
    );
\REG_GEN[18].IMR_FAST_MODE_GEN.imr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(18),
      Q => \^reg_gen[18].imr_fast_mode_gen.imr_reg[18]_0\,
      R => \^p_0_in\
    );
\REG_GEN[18].ier[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in119_in\,
      I1 => \^p_0_in48_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(18),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in16_in\,
      O => \REG_GEN[18].ier[18]_i_1_n_0\
    );
\REG_GEN[18].ier_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[18].ier[18]_i_1_n_0\,
      Q => \^p_0_in119_in\,
      R => '0'
    );
\REG_GEN[18].isr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in120_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(18),
      I4 => s_axi_aresetn,
      I5 => p_18_in_1,
      O => \REG_GEN[18].isr[18]_i_1_n_0\
    );
\REG_GEN[18].isr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[18].isr[18]_i_1_n_0\,
      Q => \^p_1_in120_in\,
      R => '0'
    );
\REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]_0\,
      I1 => \REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(19),
      I4 => s_axi_aresetn,
      I5 => p_19_in,
      O => \REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_1_n_0\
    );
\REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I2 => ivar_index_axi_clk(3),
      I3 => \^reg_gen[19].imr_fast_mode_gen.imr_reg[19]_0\,
      I4 => ivar_index_axi_clk(0),
      I5 => ivar_index_axi_clk(1),
      O => \REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_3_n_0\
    );
\REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[19].IAR_FAST_MODE_GEN.iar[19]_i_1_n_0\,
      Q => p_19_in,
      R => '0'
    );
\REG_GEN[19].IMR_FAST_MODE_GEN.imr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(19),
      Q => \^reg_gen[19].imr_fast_mode_gen.imr_reg[19]_0\,
      R => \^p_0_in\
    );
\REG_GEN[19].ier[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in117_in\,
      I1 => \^p_0_in47_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(19),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in15_in\,
      O => \REG_GEN[19].ier[19]_i_1_n_0\
    );
\REG_GEN[19].ier_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[19].ier[19]_i_1_n_0\,
      Q => \^p_0_in117_in\,
      R => '0'
    );
\REG_GEN[19].isr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in118_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(19),
      I4 => s_axi_aresetn,
      I5 => p_19_in,
      O => \REG_GEN[19].isr[19]_i_1_n_0\
    );
\REG_GEN[19].isr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[19].isr[19]_i_1_n_0\,
      Q => \^p_1_in118_in\,
      R => '0'
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      I1 => s_axi_aresetn,
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(1),
      I3 => second_ack,
      I4 => \^p_0_in89_in\,
      I5 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0\,
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I1 => ivar_index_axi_clk(2),
      I2 => ivar_index_axi_clk(3),
      I3 => second_ack,
      I4 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_5_n_0\,
      I5 => \^p_0_in89_in\,
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ivar_index_axi_clk(5),
      I1 => ivar_index_axi_clk(4),
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(0),
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_5_n_0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0\,
      Q => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      R => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(1),
      Q => \^p_0_in89_in\,
      R => \^p_0_in\
    );
\REG_GEN[1].ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in153_in\,
      I1 => \^p_0_in65_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(1),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in33_in\,
      O => \REG_GEN[1].ier[1]_i_1_n_0\
    );
\REG_GEN[1].ier_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].ier[1]_i_1_n_0\,
      Q => \^p_0_in153_in\,
      R => '0'
    );
\REG_GEN[1].isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[1].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(1),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in154_in\,
      O => \REG_GEN[1].isr[1]_i_1_n_0\
    );
\REG_GEN[1].isr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].isr[1]_i_1_n_0\,
      Q => \^p_1_in154_in\,
      R => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_2_n_0\,
      I1 => \REG_GEN[20].IAR_FAST_MODE_GEN.iar_reg[20]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(20),
      I4 => s_axi_aresetn,
      I5 => p_20_in,
      O => \REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_1_n_0\
    );
\REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => ivar_index_axi_clk(3),
      I2 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I3 => \^p_0_in32_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => ivar_index_axi_clk(1),
      O => \REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_2_n_0\
    );
\REG_GEN[20].IAR_FAST_MODE_GEN.iar_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[20].IAR_FAST_MODE_GEN.iar[20]_i_1_n_0\,
      Q => p_20_in,
      R => '0'
    );
\REG_GEN[20].IMR_FAST_MODE_GEN.imr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(20),
      Q => \^p_0_in32_in\,
      R => \^p_0_in\
    );
\REG_GEN[20].ier[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in115_in\,
      I1 => \^p_0_in46_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(20),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[20].cie_reg[20]_0\,
      O => \REG_GEN[20].ier[20]_i_1_n_0\
    );
\REG_GEN[20].ier_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[20].ier[20]_i_1_n_0\,
      Q => \^p_0_in115_in\,
      R => '0'
    );
\REG_GEN[20].isr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in116_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(20),
      I4 => s_axi_aresetn,
      I5 => p_20_in,
      O => \REG_GEN[20].isr[20]_i_1_n_0\
    );
\REG_GEN[20].isr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[20].isr[20]_i_1_n_0\,
      Q => \^p_1_in116_in\,
      R => '0'
    );
\REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_2_n_0\,
      I1 => \REG_GEN[21].IAR_FAST_MODE_GEN.iar_reg[21]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(21),
      I4 => s_axi_aresetn,
      I5 => p_21_in,
      O => \REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_1_n_0\
    );
\REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => ivar_index_axi_clk(3),
      I2 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I3 => \^p_0_in29_in\,
      I4 => ivar_index_axi_clk(1),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_2_n_0\
    );
\REG_GEN[21].IAR_FAST_MODE_GEN.iar_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[21].IAR_FAST_MODE_GEN.iar[21]_i_1_n_0\,
      Q => p_21_in,
      R => '0'
    );
\REG_GEN[21].IMR_FAST_MODE_GEN.imr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(21),
      Q => \^p_0_in29_in\,
      R => \^p_0_in\
    );
\REG_GEN[21].ier[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in113_in\,
      I1 => \^p_0_in45_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(21),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in13_in\,
      O => \REG_GEN[21].ier[21]_i_1_n_0\
    );
\REG_GEN[21].ier_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[21].ier[21]_i_1_n_0\,
      Q => \^p_0_in113_in\,
      R => '0'
    );
\REG_GEN[21].isr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in114_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(21),
      I4 => s_axi_aresetn,
      I5 => p_21_in,
      O => \REG_GEN[21].isr[21]_i_1_n_0\
    );
\REG_GEN[21].isr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[21].isr[21]_i_1_n_0\,
      Q => \^p_1_in114_in\,
      R => '0'
    );
\REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[22].IAR_FAST_MODE_GEN.iar_reg[22]_0\,
      I1 => \REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(22),
      I4 => s_axi_aresetn,
      I5 => p_22_in,
      O => \REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_1_n_0\
    );
\REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => ivar_index_axi_clk(3),
      I2 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I3 => \^p_0_in26_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => ivar_index_axi_clk(1),
      O => \REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_3_n_0\
    );
\REG_GEN[22].IAR_FAST_MODE_GEN.iar_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[22].IAR_FAST_MODE_GEN.iar[22]_i_1_n_0\,
      Q => p_22_in,
      R => '0'
    );
\REG_GEN[22].IMR_FAST_MODE_GEN.imr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(22),
      Q => \^p_0_in26_in\,
      R => \^p_0_in\
    );
\REG_GEN[22].ier[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in111_in\,
      I1 => \^p_0_in44_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(22),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in12_in\,
      O => \REG_GEN[22].ier[22]_i_1_n_0\
    );
\REG_GEN[22].ier_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[22].ier[22]_i_1_n_0\,
      Q => \^p_0_in111_in\,
      R => '0'
    );
\REG_GEN[22].isr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in112_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(22),
      I4 => s_axi_aresetn,
      I5 => p_22_in,
      O => \REG_GEN[22].isr[22]_i_1_n_0\
    );
\REG_GEN[22].isr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[22].isr[22]_i_1_n_0\,
      Q => \^p_1_in112_in\,
      R => '0'
    );
\REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[23].IAR_FAST_MODE_GEN.iar_reg[23]_0\,
      I1 => \REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(23),
      I4 => s_axi_aresetn,
      I5 => p_23_in,
      O => \REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_1_n_0\
    );
\REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => ivar_index_axi_clk(3),
      I2 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I3 => \^p_0_in23_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => ivar_index_axi_clk(1),
      O => \REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_3_n_0\
    );
\REG_GEN[23].IAR_FAST_MODE_GEN.iar_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[23].IAR_FAST_MODE_GEN.iar[23]_i_1_n_0\,
      Q => p_23_in,
      R => '0'
    );
\REG_GEN[23].IMR_FAST_MODE_GEN.imr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(23),
      Q => \^p_0_in23_in\,
      R => \^p_0_in\
    );
\REG_GEN[23].ier[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in109_in\,
      I1 => \^p_0_in43_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(23),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[23].cie_reg[23]_0\,
      O => \REG_GEN[23].ier[23]_i_1_n_0\
    );
\REG_GEN[23].ier_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[23].ier[23]_i_1_n_0\,
      Q => \^p_0_in109_in\,
      R => '0'
    );
\REG_GEN[23].isr[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in110_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(23),
      I4 => s_axi_aresetn,
      I5 => p_23_in,
      O => \REG_GEN[23].isr[23]_i_1_n_0\
    );
\REG_GEN[23].isr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[23].isr[23]_i_1_n_0\,
      Q => \^p_1_in110_in\,
      R => '0'
    );
\REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_2_n_0\,
      I1 => \REG_GEN[24].IAR_FAST_MODE_GEN.iar_reg[24]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(24),
      I4 => s_axi_aresetn,
      I5 => p_24_in,
      O => \REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_1_n_0\
    );
\REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I1 => ivar_index_axi_clk(1),
      I2 => ivar_index_axi_clk(0),
      I3 => \^p_0_in20_in\,
      I4 => ivar_index_axi_clk(2),
      I5 => ivar_index_axi_clk(3),
      O => \REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_2_n_0\
    );
\REG_GEN[24].IAR_FAST_MODE_GEN.iar_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[24].IAR_FAST_MODE_GEN.iar[24]_i_1_n_0\,
      Q => p_24_in,
      R => '0'
    );
\REG_GEN[24].IMR_FAST_MODE_GEN.imr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(24),
      Q => \^p_0_in20_in\,
      R => \^p_0_in\
    );
\REG_GEN[24].ier[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in107_in\,
      I1 => \^p_0_in42_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(24),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in10_in\,
      O => \REG_GEN[24].ier[24]_i_1_n_0\
    );
\REG_GEN[24].ier_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[24].ier[24]_i_1_n_0\,
      Q => \^p_0_in107_in\,
      R => '0'
    );
\REG_GEN[24].isr[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in108_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(24),
      I4 => s_axi_aresetn,
      I5 => p_24_in,
      O => \REG_GEN[24].isr[24]_i_1_n_0\
    );
\REG_GEN[24].isr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[24].isr[24]_i_1_n_0\,
      Q => \^p_1_in108_in\,
      R => '0'
    );
\REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_2_n_0\,
      I1 => \REG_GEN[25].IAR_FAST_MODE_GEN.iar_reg[25]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(25),
      I4 => s_axi_aresetn,
      I5 => p_25_in,
      O => \REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_1_n_0\
    );
\REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => ivar_index_axi_clk(1),
      I3 => \^p_0_in17_in\,
      I4 => ivar_index_axi_clk(2),
      I5 => ivar_index_axi_clk(3),
      O => \REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_2_n_0\
    );
\REG_GEN[25].IAR_FAST_MODE_GEN.iar_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[25].IAR_FAST_MODE_GEN.iar[25]_i_1_n_0\,
      Q => p_25_in,
      R => '0'
    );
\REG_GEN[25].IMR_FAST_MODE_GEN.imr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(25),
      Q => \^p_0_in17_in\,
      R => \^p_0_in\
    );
\REG_GEN[25].ier[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in105_in\,
      I1 => \^p_0_in41_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(25),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in9_in\,
      O => \REG_GEN[25].ier[25]_i_1_n_0\
    );
\REG_GEN[25].ier_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[25].ier[25]_i_1_n_0\,
      Q => \^p_0_in105_in\,
      R => '0'
    );
\REG_GEN[25].isr[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in106_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(25),
      I4 => s_axi_aresetn,
      I5 => p_25_in,
      O => \REG_GEN[25].isr[25]_i_1_n_0\
    );
\REG_GEN[25].isr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[25].isr[25]_i_1_n_0\,
      Q => \^p_1_in106_in\,
      R => '0'
    );
\REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA400000"
    )
        port map (
      I0 => \REG_GEN[26].IAR_FAST_MODE_GEN.iar_reg[26]_0\,
      I1 => \REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_3_n_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(26),
      I4 => s_axi_aresetn,
      I5 => p_26_in,
      O => \REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_1_n_0\
    );
\REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I2 => ivar_index_axi_clk(1),
      I3 => ivar_index_axi_clk(3),
      I4 => \^p_0_in14_in\,
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_3_n_0\
    );
\REG_GEN[26].IAR_FAST_MODE_GEN.iar_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[26].IAR_FAST_MODE_GEN.iar[26]_i_1_n_0\,
      Q => p_26_in,
      R => '0'
    );
\REG_GEN[26].IMR_FAST_MODE_GEN.imr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(26),
      Q => \^p_0_in14_in\,
      R => \^p_0_in\
    );
\REG_GEN[26].ier[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in103_in\,
      I1 => \^p_0_in40_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(26),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[26].cie_reg[26]_0\,
      O => \REG_GEN[26].ier[26]_i_1_n_0\
    );
\REG_GEN[26].ier_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[26].ier[26]_i_1_n_0\,
      Q => \^p_0_in103_in\,
      R => '0'
    );
\REG_GEN[26].isr[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in104_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(26),
      I4 => s_axi_aresetn,
      I5 => p_26_in,
      O => \REG_GEN[26].isr[26]_i_1_n_0\
    );
\REG_GEN[26].isr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[26].isr[26]_i_1_n_0\,
      Q => \^p_1_in104_in\,
      R => '0'
    );
\REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_2_n_0\,
      I1 => \REG_GEN[27].IAR_FAST_MODE_GEN.iar_reg[27]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(27),
      I4 => s_axi_aresetn,
      I5 => p_27_in,
      O => \REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_1_n_0\
    );
\REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(2),
      I1 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I2 => ivar_index_axi_clk(1),
      I3 => ivar_index_axi_clk(3),
      I4 => ivar_index_axi_clk(0),
      I5 => \^p_0_in11_in\,
      O => \REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_2_n_0\
    );
\REG_GEN[27].IAR_FAST_MODE_GEN.iar_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[27].IAR_FAST_MODE_GEN.iar[27]_i_1_n_0\,
      Q => p_27_in,
      R => '0'
    );
\REG_GEN[27].IMR_FAST_MODE_GEN.imr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(27),
      Q => \^p_0_in11_in\,
      R => \^p_0_in\
    );
\REG_GEN[27].ier[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in101_in\,
      I1 => \^p_0_in39_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(27),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in7_in\,
      O => \REG_GEN[27].ier[27]_i_1_n_0\
    );
\REG_GEN[27].ier_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[27].ier[27]_i_1_n_0\,
      Q => \^p_0_in101_in\,
      R => '0'
    );
\REG_GEN[27].isr[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in102_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(27),
      I4 => s_axi_aresetn,
      I5 => p_27_in,
      O => \REG_GEN[27].isr[27]_i_1_n_0\
    );
\REG_GEN[27].isr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[27].isr[27]_i_1_n_0\,
      Q => \^p_1_in102_in\,
      R => '0'
    );
\REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_2_n_0\,
      I1 => \REG_GEN[28].IAR_FAST_MODE_GEN.iar_reg[28]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(28),
      I4 => s_axi_aresetn,
      I5 => p_28_in,
      O => \REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_1_n_0\
    );
\REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I1 => ivar_index_axi_clk(1),
      I2 => ivar_index_axi_clk(0),
      I3 => \^p_0_in8_in\,
      I4 => ivar_index_axi_clk(2),
      I5 => ivar_index_axi_clk(3),
      O => \REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_2_n_0\
    );
\REG_GEN[28].IAR_FAST_MODE_GEN.iar_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[28].IAR_FAST_MODE_GEN.iar[28]_i_1_n_0\,
      Q => p_28_in,
      R => '0'
    );
\REG_GEN[28].IMR_FAST_MODE_GEN.imr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(28),
      Q => \^p_0_in8_in\,
      R => \^p_0_in\
    );
\REG_GEN[28].ier[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in99_in\,
      I1 => \^p_0_in38_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(28),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in6_in\,
      O => \REG_GEN[28].ier[28]_i_1_n_0\
    );
\REG_GEN[28].ier_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[28].ier[28]_i_1_n_0\,
      Q => \^p_0_in99_in\,
      R => '0'
    );
\REG_GEN[28].isr[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in100_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(28),
      I4 => s_axi_aresetn,
      I5 => p_28_in,
      O => \REG_GEN[28].isr[28]_i_1_n_0\
    );
\REG_GEN[28].isr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[28].isr[28]_i_1_n_0\,
      Q => \^p_1_in100_in\,
      R => '0'
    );
\REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_2_n_0\,
      I1 => \REG_GEN[29].IAR_FAST_MODE_GEN.iar_reg[29]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(29),
      I4 => s_axi_aresetn,
      I5 => p_29_in,
      O => \REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_1_n_0\
    );
\REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => ivar_index_axi_clk(1),
      I3 => \^p_0_in5_in\,
      I4 => ivar_index_axi_clk(2),
      I5 => ivar_index_axi_clk(3),
      O => \REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_2_n_0\
    );
\REG_GEN[29].IAR_FAST_MODE_GEN.iar_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[29].IAR_FAST_MODE_GEN.iar[29]_i_1_n_0\,
      Q => p_29_in,
      R => '0'
    );
\REG_GEN[29].IMR_FAST_MODE_GEN.imr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(29),
      Q => \^p_0_in5_in\,
      R => \^p_0_in\
    );
\REG_GEN[29].ier[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in97_in\,
      I1 => \^p_0_in37_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(29),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[29].cie_reg[29]_0\,
      O => \REG_GEN[29].ier[29]_i_1_n_0\
    );
\REG_GEN[29].ier_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[29].ier[29]_i_1_n_0\,
      Q => \^p_0_in97_in\,
      R => '0'
    );
\REG_GEN[29].isr[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in98_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(29),
      I4 => s_axi_aresetn,
      I5 => p_29_in,
      O => \REG_GEN[29].isr[29]_i_1_n_0\
    );
\REG_GEN[29].isr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[29].isr[29]_i_1_n_0\,
      Q => \^p_1_in98_in\,
      R => '0'
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0\,
      I2 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\,
      I3 => second_ack,
      I4 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_5_n_0\,
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in86_in\,
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0\,
      Q => p_2_in,
      R => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(2),
      Q => \^p_0_in86_in\,
      R => \^p_0_in\
    );
\REG_GEN[2].ier[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in151_in\,
      I1 => \^p_0_in64_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(2),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[2].cie_reg[2]_0\,
      O => \REG_GEN[2].ier[2]_i_1_n_0\
    );
\REG_GEN[2].ier_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[2].ier[2]_i_1_n_0\,
      Q => \^p_0_in151_in\,
      R => '0'
    );
\REG_GEN[2].isr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[2].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(2),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in152_in\,
      O => \REG_GEN[2].isr[2]_i_1_n_0\
    );
\REG_GEN[2].isr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[2].isr[2]_i_1_n_0\,
      Q => \^p_1_in152_in\,
      R => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_2_n_0\,
      I1 => \REG_GEN[30].IAR_FAST_MODE_GEN.iar_reg[30]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(30),
      I4 => s_axi_aresetn,
      I5 => p_30_in,
      O => \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_1_n_0\
    );
\REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_4_n_0\,
      I1 => \^p_0_in2_in\,
      I2 => ivar_index_axi_clk(1),
      I3 => ivar_index_axi_clk(4),
      I4 => ivar_index_axi_clk(5),
      I5 => ivar_index_axi_clk(0),
      O => \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_2_n_0\
    );
\REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => second_ack,
      I1 => ivar_index_axi_clk(3),
      I2 => ivar_index_axi_clk(2),
      O => \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_4_n_0\
    );
\REG_GEN[30].IAR_FAST_MODE_GEN.iar_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[30].IAR_FAST_MODE_GEN.iar[30]_i_1_n_0\,
      Q => p_30_in,
      R => '0'
    );
\REG_GEN[30].IMR_FAST_MODE_GEN.imr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(30),
      Q => \^p_0_in2_in\,
      R => \^p_0_in\
    );
\REG_GEN[30].ier[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in95_in\,
      I1 => \^p_0_in36_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(30),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in4_in\,
      O => \REG_GEN[30].ier[30]_i_1_n_0\
    );
\REG_GEN[30].ier_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[30].ier[30]_i_1_n_0\,
      Q => \^p_0_in95_in\,
      R => '0'
    );
\REG_GEN[30].isr[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => \^p_1_in96_in\,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(30),
      I4 => s_axi_aresetn,
      I5 => p_30_in,
      O => \REG_GEN[30].isr[30]_i_1_n_0\
    );
\REG_GEN[30].isr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[30].isr[30]_i_1_n_0\,
      Q => \^p_1_in96_in\,
      R => '0'
    );
\REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_2_n_0\,
      I1 => \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]_0\,
      I2 => second_ack,
      I3 => s_axi_wdata(31),
      I4 => s_axi_aresetn,
      I5 => p_31_in,
      O => \REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_1_n_0\
    );
\REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar[17]_i_4_n_0\,
      I1 => ivar_index_axi_clk(1),
      I2 => ivar_index_axi_clk(0),
      I3 => \^reg_gen[31].imr_fast_mode_gen.imr_reg[31]_0\,
      I4 => ivar_index_axi_clk(2),
      I5 => ivar_index_axi_clk(3),
      O => \REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_2_n_0\
    );
\REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[31].IAR_FAST_MODE_GEN.iar[31]_i_1_n_0\,
      Q => p_31_in,
      R => '0'
    );
\REG_GEN[31].IMR_FAST_MODE_GEN.imr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(31),
      Q => \^reg_gen[31].imr_fast_mode_gen.imr_reg[31]_0\,
      R => \^p_0_in\
    );
\REG_GEN[31].ier[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => p_0_in94_in,
      I1 => \^p_0_in35_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(31),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in3_in\,
      O => \REG_GEN[31].ier[31]_i_1_n_0\
    );
\REG_GEN[31].ier_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[31].ier[31]_i_1_n_0\,
      Q => p_0_in94_in,
      R => '0'
    );
\REG_GEN[31].isr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => s_axi_wdata(31),
      I4 => s_axi_aresetn,
      I5 => p_31_in,
      O => \REG_GEN[31].isr[31]_i_1_n_0\
    );
\REG_GEN[31].isr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[31].isr[31]_i_1_n_0\,
      Q => p_1_in,
      R => '0'
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_3_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0\,
      I2 => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_4_n_0\,
      I3 => second_ack,
      I4 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_5_n_0\,
      O => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in83_in\,
      O => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_4_n_0\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\,
      Q => p_3_in,
      R => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(3),
      Q => \^p_0_in83_in\,
      R => \^p_0_in\
    );
\REG_GEN[3].ier[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in149_in\,
      I1 => \^p_0_in63_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(3),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in31_in\,
      O => \REG_GEN[3].ier[3]_i_1_n_0\
    );
\REG_GEN[3].ier_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[3].ier[3]_i_1_n_0\,
      Q => \^p_0_in149_in\,
      R => '0'
    );
\REG_GEN[3].isr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[3].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(3),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in150_in\,
      O => \REG_GEN[3].isr[3]_i_1_n_0\
    );
\REG_GEN[3].isr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[3].isr[3]_i_1_n_0\,
      Q => \^p_1_in150_in\,
      R => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_4_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(4),
      I3 => second_ack,
      I4 => \^p_0_in80_in\,
      I5 => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0\,
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => second_ack,
      I1 => ivar_index_axi_clk(2),
      I2 => ivar_index_axi_clk(3),
      I3 => \^p_0_in80_in\,
      I4 => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_4_n_0\,
      I5 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ivar_index_axi_clk(0),
      I1 => ivar_index_axi_clk(1),
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_4_n_0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0\,
      Q => p_4_in,
      R => \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(4),
      Q => \^p_0_in80_in\,
      R => \^p_0_in\
    );
\REG_GEN[4].ier[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in147_in\,
      I1 => \^p_0_in62_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(4),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in30_in\,
      O => \REG_GEN[4].ier[4]_i_1_n_0\
    );
\REG_GEN[4].ier_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[4].ier[4]_i_1_n_0\,
      Q => \^p_0_in147_in\,
      R => '0'
    );
\REG_GEN[4].isr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[4].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(4),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in148_in\,
      O => \REG_GEN[4].isr[4]_i_1_n_0\
    );
\REG_GEN[4].isr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[4].isr[4]_i_1_n_0\,
      Q => \^p_1_in148_in\,
      R => \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_5_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(5),
      I3 => second_ack,
      I4 => \^p_0_in77_in\,
      I5 => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0\,
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_5_n_0\,
      I1 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I2 => ivar_index_axi_clk(3),
      I3 => ivar_index_axi_clk(2),
      I4 => second_ack,
      I5 => \^p_0_in77_in\,
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0\,
      Q => p_5_in,
      R => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(5),
      Q => \^p_0_in77_in\,
      R => \^p_0_in\
    );
\REG_GEN[5].ier[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in145_in\,
      I1 => \^p_0_in61_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(5),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[5].cie_reg[5]_0\,
      O => \REG_GEN[5].ier[5]_i_1_n_0\
    );
\REG_GEN[5].ier_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[5].ier[5]_i_1_n_0\,
      Q => \^p_0_in145_in\,
      R => '0'
    );
\REG_GEN[5].isr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[5].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(5),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in146_in\,
      O => \REG_GEN[5].isr[5]_i_1_n_0\
    );
\REG_GEN[5].isr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[5].isr[5]_i_1_n_0\,
      Q => \^p_1_in146_in\,
      R => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_6_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(6),
      I3 => first_ack,
      I4 => \^p_0_in74_in\,
      I5 => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0\,
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_4_n_0\,
      I1 => \^p_0_in74_in\,
      I2 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I3 => first_ack,
      I4 => ivar_index_axi_clk(3),
      I5 => ivar_index_axi_clk(2),
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ivar_index_axi_clk(0),
      I1 => ivar_index_axi_clk(1),
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_4_n_0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0\,
      Q => p_6_in,
      R => \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(6),
      Q => \^p_0_in74_in\,
      R => \^p_0_in\
    );
\REG_GEN[6].ier[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in143_in\,
      I1 => \^p_0_in60_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(6),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in28_in\,
      O => \REG_GEN[6].ier[6]_i_1_n_0\
    );
\REG_GEN[6].ier_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[6].ier[6]_i_1_n_0\,
      Q => \^p_0_in143_in\,
      R => '0'
    );
\REG_GEN[6].isr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(6),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in144_in\,
      O => \REG_GEN[6].isr[6]_i_1_n_0\
    );
\REG_GEN[6].isr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[6].isr[6]_i_1_n_0\,
      Q => \^p_1_in144_in\,
      R => \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_7_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(7),
      I3 => second_ack,
      I4 => \^p_0_in71_in\,
      I5 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3_n_0\,
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => second_ack,
      I1 => ivar_index_axi_clk(2),
      I2 => ivar_index_axi_clk(3),
      I3 => \^p_0_in71_in\,
      I4 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0\,
      I5 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3_n_0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ivar_index_axi_clk(0),
      I1 => ivar_index_axi_clk(1),
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0\,
      Q => p_7_in,
      R => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(7),
      Q => \^p_0_in71_in\,
      R => \^p_0_in\
    );
\REG_GEN[7].ier[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in141_in\,
      I1 => \^p_0_in59_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(7),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in27_in\,
      O => \REG_GEN[7].ier[7]_i_1_n_0\
    );
\REG_GEN[7].ier_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[7].ier[7]_i_1_n_0\,
      Q => \^p_0_in141_in\,
      R => '0'
    );
\REG_GEN[7].isr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[7].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(7),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in142_in\,
      O => \REG_GEN[7].isr[7]_i_1_n_0\
    );
\REG_GEN[7].isr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[7].isr[7]_i_1_n_0\,
      Q => \^p_1_in142_in\,
      R => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_8_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000002020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(8),
      I3 => second_ack,
      I4 => \^p_0_in68_in\,
      I5 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3_n_0\,
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => ivar_index_axi_clk(0),
      I1 => ivar_index_axi_clk(2),
      I2 => second_ack,
      I3 => \^p_0_in68_in\,
      I4 => ivar_index_axi_clk(3),
      I5 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3_n_0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ivar_index_axi_clk(4),
      I1 => ivar_index_axi_clk(5),
      I2 => ivar_index_axi_clk(1),
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0\,
      Q => p_8_in,
      R => \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(8),
      Q => \^p_0_in68_in\,
      R => \^p_0_in\
    );
\REG_GEN[8].ier[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in139_in\,
      I1 => \^p_0_in58_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(8),
      I4 => s_axi_aresetn,
      I5 => \^cie_gen.cie_bit_gen[8].cie_reg[8]_0\,
      O => \REG_GEN[8].ier[8]_i_1_n_0\
    );
\REG_GEN[8].ier_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[8].ier[8]_i_1_n_0\,
      Q => \^p_0_in139_in\,
      R => '0'
    );
\REG_GEN[8].isr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[8].LVL_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(8),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in140_in\,
      O => \REG_GEN[8].isr[8]_i_1_n_0\
    );
\REG_GEN[8].isr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[8].isr[8]_i_1_n_0\,
      Q => \^p_1_in140_in\,
      R => \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_9_in,
      I1 => s_axi_aresetn,
      O => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FD202020"
    )
        port map (
      I0 => p_15_in,
      I1 => Bus_RNW_reg,
      I2 => s_axi_wdata(9),
      I3 => first_ack,
      I4 => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3_n_0\,
      I5 => \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\,
      O => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_5_n_0\,
      I1 => \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\,
      I2 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_4_n_0\,
      I3 => ivar_index_axi_clk(3),
      I4 => ivar_index_axi_clk(2),
      I5 => first_ack,
      O => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3_n_0\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0\,
      Q => p_9_in,
      R => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg0\
    );
\REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(9),
      Q => \^reg_gen[9].imr_fast_mode_gen.imr_reg[9]_0\,
      R => \^p_0_in\
    );
\REG_GEN[9].ier[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \^p_0_in137_in\,
      I1 => \^p_0_in57_in\,
      I2 => bus2ip_wrce(2),
      I3 => s_axi_wdata(9),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in25_in\,
      O => \REG_GEN[9].ier[9]_i_1_n_0\
    );
\REG_GEN[9].ier_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[9].ier[9]_i_1_n_0\,
      Q => \^p_0_in137_in\,
      R => '0'
    );
\REG_GEN[9].isr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(9),
      I2 => \^p_0_in_0\,
      I3 => Bus_RNW_reg,
      I4 => p_18_in,
      I5 => \^p_1_in138_in\,
      O => \REG_GEN[9].isr[9]_i_1_n_0\
    );
\REG_GEN[9].isr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[9].isr[9]_i_1_n_0\,
      Q => \^p_1_in138_in\,
      R => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg0\
    );
\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\,
      Q => \^sie_gen.sie_bit_gen[0].sie_reg[0]_0\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0\,
      Q => \^p_0_in56_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0\,
      Q => \^p_0_in55_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]_0\,
      Q => \^p_0_in54_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]_0\,
      Q => \^p_0_in53_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]_0\,
      Q => \^p_0_in52_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]_0\,
      Q => \^p_0_in51_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]_0\,
      Q => \^p_0_in50_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]_0\,
      Q => \^p_0_in49_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]_0\,
      Q => \^p_0_in48_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]_0\,
      Q => \^p_0_in47_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0\,
      Q => \^p_0_in65_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]_0\,
      Q => \^p_0_in46_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]_0\,
      Q => \^p_0_in45_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]_0\,
      Q => \^p_0_in44_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]_0\,
      Q => \^p_0_in43_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[24].sie_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[24].sie_reg[24]_0\,
      Q => \^p_0_in42_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[25].sie_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[25].sie_reg[25]_0\,
      Q => \^p_0_in41_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[26].sie_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[26].sie_reg[26]_0\,
      Q => \^p_0_in40_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[27].sie_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[27].sie_reg[27]_0\,
      Q => \^p_0_in39_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[28].sie_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[28].sie_reg[28]_0\,
      Q => \^p_0_in38_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[29].sie_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[29].sie_reg[29]_0\,
      Q => \^p_0_in37_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0\,
      Q => \^p_0_in64_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[30].sie_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[30].sie_reg[30]_0\,
      Q => \^p_0_in36_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[31].sie_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[31].sie_reg[31]_0\,
      Q => \^p_0_in35_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0\,
      Q => \^p_0_in63_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0\,
      Q => \^p_0_in62_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0\,
      Q => \^p_0_in61_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0\,
      Q => \^p_0_in60_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0\,
      Q => \^p_0_in59_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0\,
      Q => \^p_0_in58_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0\,
      Q => \^p_0_in57_in\,
      R => '0'
    );
ack_or_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ack_or_i_2_n_0,
      I1 => ack_or_i_3_n_0,
      I2 => ack_or_i_4_n_0,
      I3 => ack_or_i_5_n_0,
      O => ack_or_i
    );
ack_or_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_9_in,
      I1 => p_12_in,
      I2 => p_10_in,
      I3 => p_11_in,
      I4 => ack_or_i_6_n_0,
      O => ack_or_i_2_n_0
    );
ack_or_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      I1 => p_4_in,
      I2 => p_2_in,
      I3 => p_3_in,
      I4 => ack_or_i_7_n_0,
      O => ack_or_i_3_n_0
    );
ack_or_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_17_in,
      I1 => p_20_in,
      I2 => p_18_in_1,
      I3 => p_19_in,
      I4 => ack_or_i_8_n_0,
      O => ack_or_i_4_n_0
    );
ack_or_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_25_in,
      I1 => p_28_in,
      I2 => p_26_in,
      I3 => p_27_in,
      I4 => ack_or_i_9_n_0,
      O => ack_or_i_5_n_0
    );
ack_or_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_14_in,
      I1 => p_13_in,
      I2 => p_16_in,
      I3 => p_15_in_0,
      O => ack_or_i_6_n_0
    );
ack_or_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_6_in,
      I1 => p_5_in,
      I2 => p_8_in,
      I3 => p_7_in,
      O => ack_or_i_7_n_0
    );
ack_or_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_22_in,
      I1 => p_21_in,
      I2 => p_24_in,
      I3 => p_23_in,
      O => ack_or_i_8_n_0
    );
ack_or_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_31_in,
      I1 => p_30_in,
      I2 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      I3 => p_29_in,
      O => ack_or_i_9_n_0
    );
ack_or_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ack_or_i,
      Q => ack_or,
      R => \^p_0_in\
    );
irq_gen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => p_0_in94_in,
      I1 => p_1_in,
      I2 => \^p_1_in96_in\,
      I3 => \^p_0_in95_in\,
      I4 => irq_gen_i_2_n_0,
      I5 => irq_gen_i_3_n_0,
      O => irq_gen_i
    );
irq_gen_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in100_in\,
      I1 => \^p_0_in99_in\,
      I2 => \^p_1_in98_in\,
      I3 => \^p_0_in97_in\,
      O => irq_gen_i_2_n_0
    );
irq_gen_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \IPR_GEN.ipr[27]_i_1_n_0\,
      I1 => irq_gen_i_4_n_0,
      I2 => irq_gen_i_5_n_0,
      I3 => irq_gen_i_6_n_0,
      I4 => \IPR_GEN.ipr[21]_i_1_n_0\,
      I5 => \IPR_GEN.ipr[24]_i_1_n_0\,
      O => irq_gen_i_3_n_0
    );
irq_gen_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in106_in\,
      I1 => \^p_0_in105_in\,
      I2 => \^p_1_in104_in\,
      I3 => \^p_0_in103_in\,
      O => irq_gen_i_4_n_0
    );
irq_gen_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^p_1_in112_in\,
      I1 => \^p_0_in111_in\,
      I2 => \^p_1_in110_in\,
      I3 => \^p_0_in109_in\,
      O => irq_gen_i_5_n_0
    );
irq_gen_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \IPR_GEN.ipr[11]_i_1_n_0\,
      I1 => \IVR_GEN.ivr[3]_i_3_n_0\,
      I2 => irq_gen_i_7_n_0,
      I3 => \IVR_GEN.ivr[4]_i_3_n_0\,
      I4 => \IPR_GEN.ipr[16]_i_1_n_0\,
      I5 => \IVR_GEN.ivr[3]_i_5_n_0\,
      O => irq_gen_i_6_n_0
    );
irq_gen_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in132_in\,
      I1 => \^p_0_in131_in\,
      I2 => \^p_1_in130_in\,
      I3 => \^p_0_in129_in\,
      O => irq_gen_i_7_n_0
    );
irq_gen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_gen_i,
      Q => irq_gen,
      R => \^p_0_in\
    );
\mer_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mer_int_reg[0]_1\,
      Q => \^mer_int_reg[0]_0\,
      R => \^p_0_in\
    );
\mer_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mer_int_reg[1]_0\,
      Q => \^p_0_in_0\,
      R => \^p_0_in\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F7FFF7F"
    )
        port map (
      I0 => ivr(0),
      I1 => \ram_i[0].Doutb_reg[0]\(2),
      I2 => \ram_i[0].Doutb_reg[0]\(1),
      I3 => \ram_i[0].Doutb_reg[0]\(0),
      I4 => \^mer_int_reg[0]_0\,
      I5 => \s_axi_rdata_i[0]_i_4_n_0\,
      O => \IVR_GEN.ivr_reg[0]_0\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \REG_GEN[0].isr_reg_n_0_[0]\,
      I1 => \ram_i[0].Doutb_reg[0]\(0),
      I2 => ipr(0),
      I3 => \ram_i[0].Doutb_reg[0]\(1),
      I4 => \REG_GEN[0].ier_reg_n_0_[0]\,
      I5 => \ram_i[0].Doutb_reg[0]\(2),
      O => \s_axi_rdata_i[0]_i_4_n_0\
    );
\s_axi_rdata_i[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^d\(1),
      I2 => \ram_i[0].Doutb_reg[0]\(3),
      I3 => \^d\(2),
      I4 => ivr(0),
      I5 => \^d\(0),
      O => \IVR_GEN.ivr_reg[4]_0\
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => p_1_in,
      I1 => \ram_i[0].Doutb_reg[0]\(0),
      I2 => ipr(31),
      I3 => \ram_i[0].Doutb_reg[0]\(1),
      I4 => p_0_in94_in,
      I5 => \s_axi_rdata_i_reg[31]\,
      O => \REG_GEN[31].isr_reg[31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_axi_intc_0_slave_attachment is
  port (
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn_0 : out STD_LOGIC;
    s_axi_aresetn_1 : out STD_LOGIC;
    s_axi_aresetn_2 : out STD_LOGIC;
    s_axi_aresetn_3 : out STD_LOGIC;
    s_axi_aresetn_4 : out STD_LOGIC;
    s_axi_aresetn_5 : out STD_LOGIC;
    s_axi_aresetn_6 : out STD_LOGIC;
    s_axi_aresetn_7 : out STD_LOGIC;
    s_axi_aresetn_8 : out STD_LOGIC;
    s_axi_aresetn_9 : out STD_LOGIC;
    s_axi_aresetn_10 : out STD_LOGIC;
    s_axi_aresetn_11 : out STD_LOGIC;
    s_axi_aresetn_12 : out STD_LOGIC;
    s_axi_aresetn_13 : out STD_LOGIC;
    s_axi_aresetn_14 : out STD_LOGIC;
    s_axi_aresetn_15 : out STD_LOGIC;
    s_axi_aresetn_16 : out STD_LOGIC;
    s_axi_aresetn_17 : out STD_LOGIC;
    s_axi_aresetn_18 : out STD_LOGIC;
    s_axi_aresetn_19 : out STD_LOGIC;
    s_axi_aresetn_20 : out STD_LOGIC;
    s_axi_aresetn_21 : out STD_LOGIC;
    s_axi_aresetn_22 : out STD_LOGIC;
    s_axi_aresetn_23 : out STD_LOGIC;
    s_axi_aresetn_24 : out STD_LOGIC;
    s_axi_aresetn_25 : out STD_LOGIC;
    s_axi_aresetn_26 : out STD_LOGIC;
    s_axi_aresetn_27 : out STD_LOGIC;
    s_axi_aresetn_28 : out STD_LOGIC;
    s_axi_aresetn_29 : out STD_LOGIC;
    s_axi_aresetn_30 : out STD_LOGIC;
    s_axi_aresetn_31 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    Bus_RNW_reg_reg_8 : out STD_LOGIC;
    Bus_RNW_reg_reg_9 : out STD_LOGIC;
    Bus_RNW_reg_reg_10 : out STD_LOGIC;
    Bus_RNW_reg_reg_11 : out STD_LOGIC;
    Bus_RNW_reg_reg_12 : out STD_LOGIC;
    Bus_RNW_reg_reg_13 : out STD_LOGIC;
    Bus_RNW_reg_reg_14 : out STD_LOGIC;
    Bus_RNW_reg_reg_15 : out STD_LOGIC;
    Bus_RNW_reg_reg_16 : out STD_LOGIC;
    Bus_RNW_reg_reg_17 : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \bus2ip_addr_i_reg[4]_0\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_18 : out STD_LOGIC;
    Bus_RNW_reg_reg_19 : out STD_LOGIC;
    Bus_RNW_reg_reg_20 : out STD_LOGIC;
    Bus_RNW_reg_reg_21 : out STD_LOGIC;
    Bus_RNW_reg_reg_22 : out STD_LOGIC;
    Bus_RNW_reg_reg_23 : out STD_LOGIC;
    Bus_RNW_reg_reg_24 : out STD_LOGIC;
    Bus_RNW_reg_reg_25 : out STD_LOGIC;
    Bus_RNW_reg_reg_26 : out STD_LOGIC;
    Bus_RNW_reg_reg_27 : out STD_LOGIC;
    Bus_RNW_reg_reg_28 : out STD_LOGIC;
    Bus_RNW_reg_reg_29 : out STD_LOGIC;
    Bus_RNW_reg_reg_30 : out STD_LOGIC;
    Bus_RNW_reg_reg_31 : out STD_LOGIC;
    Bus_RNW_reg_reg_32 : out STD_LOGIC;
    Bus_RNW_reg_reg_33 : out STD_LOGIC;
    Bus_RNW_reg_reg_34 : out STD_LOGIC;
    Bus_RNW_reg_reg_35 : out STD_LOGIC;
    Bus_RNW_reg_reg_36 : out STD_LOGIC;
    Bus_RNW_reg_reg_37 : out STD_LOGIC;
    Bus_RNW_reg_reg_38 : out STD_LOGIC;
    Bus_RNW_reg_reg_39 : out STD_LOGIC;
    Bus_RNW_reg_reg_40 : out STD_LOGIC;
    Bus_RNW_reg_reg_41 : out STD_LOGIC;
    Bus_RNW_reg_reg_42 : out STD_LOGIC;
    Bus_RNW_reg_reg_43 : out STD_LOGIC;
    Bus_RNW_reg_reg_44 : out STD_LOGIC;
    Bus_RNW_reg_reg_45 : out STD_LOGIC;
    Bus_RNW_reg_reg_46 : out STD_LOGIC;
    Bus_RNW_reg_reg_47 : out STD_LOGIC;
    Bus_RNW_reg_reg_48 : out STD_LOGIC;
    Bus_RNW_reg_reg_49 : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    Or128_vec2stdlogic : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p_0_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : in STD_LOGIC;
    p_0_in65_in : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in63_in : in STD_LOGIC;
    p_0_in62_in : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    p_0_in60_in : in STD_LOGIC;
    p_0_in59_in : in STD_LOGIC;
    p_0_in58_in : in STD_LOGIC;
    p_0_in57_in : in STD_LOGIC;
    p_0_in56_in : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    p_0_in53_in : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    p_0_in51_in : in STD_LOGIC;
    p_0_in50_in : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    p_0_in48_in : in STD_LOGIC;
    p_0_in47_in : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    p_0_in45_in : in STD_LOGIC;
    p_0_in44_in : in STD_LOGIC;
    p_0_in43_in : in STD_LOGIC;
    p_0_in42_in : in STD_LOGIC;
    p_0_in41_in : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    p_0_in39_in : in STD_LOGIC;
    p_0_in38_in : in STD_LOGIC;
    p_0_in37_in : in STD_LOGIC;
    p_0_in36_in : in STD_LOGIC;
    p_0_in35_in : in STD_LOGIC;
    \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\ : in STD_LOGIC;
    p_0_in2_in : in STD_LOGIC;
    p_0_in5_in : in STD_LOGIC;
    p_0_in8_in : in STD_LOGIC;
    p_0_in11_in : in STD_LOGIC;
    p_0_in14_in : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    p_0_in20_in : in STD_LOGIC;
    p_0_in23_in : in STD_LOGIC;
    p_0_in26_in : in STD_LOGIC;
    p_0_in29_in : in STD_LOGIC;
    p_0_in32_in : in STD_LOGIC;
    \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\ : in STD_LOGIC;
    \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\ : in STD_LOGIC;
    \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\ : in STD_LOGIC;
    p_0_in83_in : in STD_LOGIC;
    p_0_in86_in : in STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC;
    p_0_in74_in : in STD_LOGIC;
    p_0_in71_in : in STD_LOGIC;
    p_0_in68_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[16]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i[6]_i_3_0\ : in STD_LOGIC;
    p_0_in77_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    p_0_in89_in : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC;
    p_0_in80_in : in STD_LOGIC;
    p_1_in152_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[30]_0\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    p_0_in151_in : in STD_LOGIC;
    p_1_in150_in : in STD_LOGIC;
    p_0_in149_in : in STD_LOGIC;
    p_1_in148_in : in STD_LOGIC;
    p_0_in147_in : in STD_LOGIC;
    p_1_in146_in : in STD_LOGIC;
    p_0_in145_in : in STD_LOGIC;
    p_1_in144_in : in STD_LOGIC;
    p_0_in143_in : in STD_LOGIC;
    p_1_in142_in : in STD_LOGIC;
    p_0_in141_in : in STD_LOGIC;
    p_1_in140_in : in STD_LOGIC;
    p_0_in139_in : in STD_LOGIC;
    p_1_in138_in : in STD_LOGIC;
    p_0_in137_in : in STD_LOGIC;
    p_1_in136_in : in STD_LOGIC;
    p_0_in135_in : in STD_LOGIC;
    p_1_in134_in : in STD_LOGIC;
    p_0_in133_in : in STD_LOGIC;
    p_1_in132_in : in STD_LOGIC;
    p_0_in131_in : in STD_LOGIC;
    p_1_in130_in : in STD_LOGIC;
    p_0_in129_in : in STD_LOGIC;
    p_1_in128_in : in STD_LOGIC;
    p_0_in127_in : in STD_LOGIC;
    p_1_in126_in : in STD_LOGIC;
    p_0_in125_in : in STD_LOGIC;
    p_1_in124_in : in STD_LOGIC;
    p_0_in123_in : in STD_LOGIC;
    p_1_in122_in : in STD_LOGIC;
    p_0_in121_in : in STD_LOGIC;
    p_1_in120_in : in STD_LOGIC;
    p_0_in119_in : in STD_LOGIC;
    p_1_in118_in : in STD_LOGIC;
    p_0_in117_in : in STD_LOGIC;
    p_1_in116_in : in STD_LOGIC;
    p_0_in115_in : in STD_LOGIC;
    p_1_in114_in : in STD_LOGIC;
    p_0_in113_in : in STD_LOGIC;
    p_1_in112_in : in STD_LOGIC;
    p_0_in111_in : in STD_LOGIC;
    p_1_in110_in : in STD_LOGIC;
    p_0_in109_in : in STD_LOGIC;
    p_1_in108_in : in STD_LOGIC;
    p_0_in107_in : in STD_LOGIC;
    p_1_in106_in : in STD_LOGIC;
    p_0_in105_in : in STD_LOGIC;
    p_1_in104_in : in STD_LOGIC;
    p_0_in103_in : in STD_LOGIC;
    p_1_in102_in : in STD_LOGIC;
    p_0_in101_in : in STD_LOGIC;
    p_1_in100_in : in STD_LOGIC;
    p_0_in99_in : in STD_LOGIC;
    p_1_in98_in : in STD_LOGIC;
    p_0_in97_in : in STD_LOGIC;
    p_1_in96_in : in STD_LOGIC;
    p_0_in95_in : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mer_int_reg[0]\ : in STD_LOGIC;
    p_0_in33_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ : in STD_LOGIC;
    p_0_in31_in : in STD_LOGIC;
    p_0_in30_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ : in STD_LOGIC;
    p_0_in28_in : in STD_LOGIC;
    p_0_in27_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ : in STD_LOGIC;
    p_0_in25_in : in STD_LOGIC;
    p_0_in24_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ : in STD_LOGIC;
    p_0_in22_in : in STD_LOGIC;
    p_0_in21_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ : in STD_LOGIC;
    p_0_in19_in : in STD_LOGIC;
    p_0_in18_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\ : in STD_LOGIC;
    p_0_in16_in : in STD_LOGIC;
    p_0_in15_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\ : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    p_0_in12_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\ : in STD_LOGIC;
    p_0_in10_in : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\ : in STD_LOGIC;
    p_0_in7_in : in STD_LOGIC;
    p_0_in6_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\ : in STD_LOGIC;
    p_0_in4_in : in STD_LOGIC;
    p_0_in3_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : in STD_LOGIC;
    p_1_in154_in : in STD_LOGIC;
    p_0_in153_in : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_axi_intc_0_slave_attachment : entity is "slave_attachment";
end bd_deec_axi_intc_0_slave_attachment;

architecture STRUCTURE of bd_deec_axi_intc_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 8 downto 7 );
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[4]_0\ : STD_LOGIC;
  signal \^bus2ip_addr_i_reg[6]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal ip2bus_error : STD_LOGIC;
  signal \^ip2bus_rdack_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_reg\ : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[21]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[22]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[25]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[26]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[27]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[28]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[29]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_3_n_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of is_read_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of is_write_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair22";
begin
  \bus2ip_addr_i_reg[4]_0\ <= \^bus2ip_addr_i_reg[4]_0\;
  \bus2ip_addr_i_reg[6]_0\(4 downto 0) <= \^bus2ip_addr_i_reg[6]_0\(4 downto 0);
  ip2bus_rdack_reg <= \^ip2bus_rdack_reg\;
  ip2bus_wrack_reg <= \^ip2bus_wrack_reg\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F444F444F44"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => s_axi_wvalid,
      I5 => s_axi_awvalid,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => \^ip2bus_rdack_reg\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => \^ip2bus_wrack_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^ip2bus_wrack_reg\,
      I1 => s_axi_bresp_i,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      I4 => s_axi_rresp_i,
      I5 => \^ip2bus_rdack_reg\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^s_axi_rvalid_i_reg_0\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_bready,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
I_DECODER: entity work.bd_deec_axi_intc_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_10 => Bus_RNW_reg_reg_9,
      Bus_RNW_reg_reg_11 => Bus_RNW_reg_reg_10,
      Bus_RNW_reg_reg_12 => Bus_RNW_reg_reg_11,
      Bus_RNW_reg_reg_13 => Bus_RNW_reg_reg_12,
      Bus_RNW_reg_reg_14 => Bus_RNW_reg_reg_13,
      Bus_RNW_reg_reg_15 => Bus_RNW_reg_reg_14,
      Bus_RNW_reg_reg_16 => Bus_RNW_reg_reg_15,
      Bus_RNW_reg_reg_17 => Bus_RNW_reg_reg_16,
      Bus_RNW_reg_reg_18 => Bus_RNW_reg_reg_17,
      Bus_RNW_reg_reg_19 => Bus_RNW_reg_reg_18,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_20 => Bus_RNW_reg_reg_19,
      Bus_RNW_reg_reg_21 => Bus_RNW_reg_reg_20,
      Bus_RNW_reg_reg_22 => Bus_RNW_reg_reg_21,
      Bus_RNW_reg_reg_23 => Bus_RNW_reg_reg_22,
      Bus_RNW_reg_reg_24 => Bus_RNW_reg_reg_23,
      Bus_RNW_reg_reg_25 => Bus_RNW_reg_reg_24,
      Bus_RNW_reg_reg_26 => Bus_RNW_reg_reg_25,
      Bus_RNW_reg_reg_27 => Bus_RNW_reg_reg_26,
      Bus_RNW_reg_reg_28 => Bus_RNW_reg_reg_27,
      Bus_RNW_reg_reg_29 => Bus_RNW_reg_reg_28,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_30 => Bus_RNW_reg_reg_29,
      Bus_RNW_reg_reg_31 => Bus_RNW_reg_reg_30,
      Bus_RNW_reg_reg_32 => Bus_RNW_reg_reg_31,
      Bus_RNW_reg_reg_33 => Bus_RNW_reg_reg_32,
      Bus_RNW_reg_reg_34 => Bus_RNW_reg_reg_33,
      Bus_RNW_reg_reg_35 => Bus_RNW_reg_reg_34,
      Bus_RNW_reg_reg_36 => Bus_RNW_reg_reg_35,
      Bus_RNW_reg_reg_37 => Bus_RNW_reg_reg_36,
      Bus_RNW_reg_reg_38 => Bus_RNW_reg_reg_37,
      Bus_RNW_reg_reg_39 => Bus_RNW_reg_reg_38,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_40 => Bus_RNW_reg_reg_39,
      Bus_RNW_reg_reg_41 => Bus_RNW_reg_reg_40,
      Bus_RNW_reg_reg_42 => Bus_RNW_reg_reg_41,
      Bus_RNW_reg_reg_43 => Bus_RNW_reg_reg_42,
      Bus_RNW_reg_reg_44 => Bus_RNW_reg_reg_43,
      Bus_RNW_reg_reg_45 => Bus_RNW_reg_reg_44,
      Bus_RNW_reg_reg_46 => Bus_RNW_reg_reg_45,
      Bus_RNW_reg_reg_47 => Bus_RNW_reg_reg_46,
      Bus_RNW_reg_reg_48 => Bus_RNW_reg_reg_47,
      Bus_RNW_reg_reg_49 => Bus_RNW_reg_reg_48,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_4,
      Bus_RNW_reg_reg_50 => Bus_RNW_reg_reg_49,
      Bus_RNW_reg_reg_51 => bus2ip_rnw_i_reg_n_0,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_5,
      Bus_RNW_reg_reg_7 => Bus_RNW_reg_reg_6,
      Bus_RNW_reg_reg_8 => Bus_RNW_reg_reg_7,
      Bus_RNW_reg_reg_9 => Bus_RNW_reg_reg_8,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ => \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\,
      \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\ => \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\,
      \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\ => \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\,
      \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\ => \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\,
      \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\ => \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\,
      \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\ => \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\,
      D(31 downto 0) => read_data(31 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(6 downto 5) => bus2ip_addr(8 downto 7),
      \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0\(4 downto 0) => \^bus2ip_addr_i_reg[6]_0\(4 downto 0),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      Or128_vec2stdlogic => Or128_vec2stdlogic,
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q => start2,
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\ => \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\,
      \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\ => \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\,
      \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\ => \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\,
      \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\ => \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_rdack_reg => \^ip2bus_rdack_reg\,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      ip2bus_wrack_reg => \^ip2bus_wrack_reg\,
      \mer_int_reg[0]\ => \mer_int_reg[0]\,
      p_0_in10_in => p_0_in10_in,
      p_0_in11_in => p_0_in11_in,
      p_0_in12_in => p_0_in12_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in15_in => p_0_in15_in,
      p_0_in16_in => p_0_in16_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in18_in => p_0_in18_in,
      p_0_in19_in => p_0_in19_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in21_in => p_0_in21_in,
      p_0_in22_in => p_0_in22_in,
      p_0_in23_in => p_0_in23_in,
      p_0_in24_in => p_0_in24_in,
      p_0_in25_in => p_0_in25_in,
      p_0_in26_in => p_0_in26_in,
      p_0_in27_in => p_0_in27_in,
      p_0_in28_in => p_0_in28_in,
      p_0_in29_in => p_0_in29_in,
      p_0_in2_in => p_0_in2_in,
      p_0_in30_in => p_0_in30_in,
      p_0_in31_in => p_0_in31_in,
      p_0_in32_in => p_0_in32_in,
      p_0_in33_in => p_0_in33_in,
      p_0_in35_in => p_0_in35_in,
      p_0_in36_in => p_0_in36_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in38_in => p_0_in38_in,
      p_0_in39_in => p_0_in39_in,
      p_0_in3_in => p_0_in3_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in41_in => p_0_in41_in,
      p_0_in42_in => p_0_in42_in,
      p_0_in43_in => p_0_in43_in,
      p_0_in44_in => p_0_in44_in,
      p_0_in45_in => p_0_in45_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in47_in => p_0_in47_in,
      p_0_in48_in => p_0_in48_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in4_in => p_0_in4_in,
      p_0_in50_in => p_0_in50_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in53_in => p_0_in53_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in56_in => p_0_in56_in,
      p_0_in57_in => p_0_in57_in,
      p_0_in58_in => p_0_in58_in,
      p_0_in59_in => p_0_in59_in,
      p_0_in5_in => p_0_in5_in,
      p_0_in60_in => p_0_in60_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in62_in => p_0_in62_in,
      p_0_in63_in => p_0_in63_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in65_in => p_0_in65_in,
      p_0_in6_in => p_0_in6_in,
      p_0_in7_in => p_0_in7_in,
      p_0_in83_in => p_0_in83_in,
      p_0_in86_in => p_0_in86_in,
      p_0_in8_in => p_0_in8_in,
      p_0_in9_in => p_0_in9_in,
      p_0_in_0 => p_0_in_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => s_axi_aresetn_0,
      s_axi_aresetn_1 => s_axi_aresetn_1,
      s_axi_aresetn_10 => s_axi_aresetn_10,
      s_axi_aresetn_11 => s_axi_aresetn_11,
      s_axi_aresetn_12 => s_axi_aresetn_12,
      s_axi_aresetn_13 => s_axi_aresetn_13,
      s_axi_aresetn_14 => s_axi_aresetn_14,
      s_axi_aresetn_15 => s_axi_aresetn_15,
      s_axi_aresetn_16 => s_axi_aresetn_16,
      s_axi_aresetn_17 => s_axi_aresetn_17,
      s_axi_aresetn_18 => s_axi_aresetn_18,
      s_axi_aresetn_19 => s_axi_aresetn_19,
      s_axi_aresetn_2 => s_axi_aresetn_2,
      s_axi_aresetn_20 => s_axi_aresetn_20,
      s_axi_aresetn_21 => s_axi_aresetn_21,
      s_axi_aresetn_22 => s_axi_aresetn_22,
      s_axi_aresetn_23 => s_axi_aresetn_23,
      s_axi_aresetn_24 => s_axi_aresetn_24,
      s_axi_aresetn_25 => s_axi_aresetn_25,
      s_axi_aresetn_26 => s_axi_aresetn_26,
      s_axi_aresetn_27 => s_axi_aresetn_27,
      s_axi_aresetn_28 => s_axi_aresetn_28,
      s_axi_aresetn_29 => s_axi_aresetn_29,
      s_axi_aresetn_3 => s_axi_aresetn_3,
      s_axi_aresetn_30 => s_axi_aresetn_30,
      s_axi_aresetn_31 => s_axi_aresetn_31,
      s_axi_aresetn_4 => s_axi_aresetn_4,
      s_axi_aresetn_5 => s_axi_aresetn_5,
      s_axi_aresetn_6 => s_axi_aresetn_6,
      s_axi_aresetn_7 => s_axi_aresetn_7,
      s_axi_aresetn_8 => s_axi_aresetn_8,
      s_axi_aresetn_9 => s_axi_aresetn_9,
      s_axi_arready => is_read_reg_n_0,
      s_axi_awready(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3 downto 0),
      s_axi_awready_0 => is_write_reg_n_0,
      \s_axi_rdata_i_reg[0]\ => \s_axi_rdata_i[0]_i_2_n_0\,
      \s_axi_rdata_i_reg[10]\ => \s_axi_rdata_i[10]_i_2_n_0\,
      \s_axi_rdata_i_reg[10]_0\ => \s_axi_rdata_i[10]_i_3_n_0\,
      \s_axi_rdata_i_reg[11]\ => \s_axi_rdata_i[11]_i_2_n_0\,
      \s_axi_rdata_i_reg[11]_0\ => \s_axi_rdata_i[11]_i_3_n_0\,
      \s_axi_rdata_i_reg[12]\ => \s_axi_rdata_i[12]_i_2_n_0\,
      \s_axi_rdata_i_reg[12]_0\ => \s_axi_rdata_i[12]_i_3_n_0\,
      \s_axi_rdata_i_reg[13]\ => \s_axi_rdata_i[13]_i_2_n_0\,
      \s_axi_rdata_i_reg[13]_0\ => \s_axi_rdata_i[13]_i_3_n_0\,
      \s_axi_rdata_i_reg[14]\ => \s_axi_rdata_i[14]_i_2_n_0\,
      \s_axi_rdata_i_reg[14]_0\ => \s_axi_rdata_i[14]_i_3_n_0\,
      \s_axi_rdata_i_reg[15]\ => \s_axi_rdata_i[15]_i_2_n_0\,
      \s_axi_rdata_i_reg[15]_0\ => \s_axi_rdata_i[15]_i_3_n_0\,
      \s_axi_rdata_i_reg[16]\ => \s_axi_rdata_i[16]_i_2_n_0\,
      \s_axi_rdata_i_reg[16]_0\ => \s_axi_rdata_i[16]_i_3_n_0\,
      \s_axi_rdata_i_reg[17]\ => \s_axi_rdata_i[17]_i_2_n_0\,
      \s_axi_rdata_i_reg[17]_0\ => \s_axi_rdata_i[17]_i_3_n_0\,
      \s_axi_rdata_i_reg[18]\ => \s_axi_rdata_i[18]_i_2_n_0\,
      \s_axi_rdata_i_reg[18]_0\ => \s_axi_rdata_i[18]_i_3_n_0\,
      \s_axi_rdata_i_reg[19]\ => \s_axi_rdata_i[19]_i_2_n_0\,
      \s_axi_rdata_i_reg[19]_0\ => \s_axi_rdata_i[19]_i_3_n_0\,
      \s_axi_rdata_i_reg[1]\ => \s_axi_rdata_i[1]_i_2_n_0\,
      \s_axi_rdata_i_reg[20]\ => \s_axi_rdata_i[20]_i_2_n_0\,
      \s_axi_rdata_i_reg[20]_0\ => \s_axi_rdata_i[20]_i_3_n_0\,
      \s_axi_rdata_i_reg[21]\ => \s_axi_rdata_i[21]_i_2_n_0\,
      \s_axi_rdata_i_reg[21]_0\ => \s_axi_rdata_i[21]_i_3_n_0\,
      \s_axi_rdata_i_reg[22]\ => \s_axi_rdata_i[22]_i_2_n_0\,
      \s_axi_rdata_i_reg[22]_0\ => \s_axi_rdata_i[22]_i_3_n_0\,
      \s_axi_rdata_i_reg[23]\ => \s_axi_rdata_i[23]_i_2_n_0\,
      \s_axi_rdata_i_reg[23]_0\ => \s_axi_rdata_i[23]_i_3_n_0\,
      \s_axi_rdata_i_reg[24]\ => \s_axi_rdata_i[24]_i_2_n_0\,
      \s_axi_rdata_i_reg[24]_0\ => \s_axi_rdata_i[24]_i_3_n_0\,
      \s_axi_rdata_i_reg[25]\ => \s_axi_rdata_i[25]_i_2_n_0\,
      \s_axi_rdata_i_reg[25]_0\ => \s_axi_rdata_i[25]_i_3_n_0\,
      \s_axi_rdata_i_reg[26]\ => \s_axi_rdata_i[26]_i_2_n_0\,
      \s_axi_rdata_i_reg[26]_0\ => \s_axi_rdata_i[26]_i_3_n_0\,
      \s_axi_rdata_i_reg[27]\ => \s_axi_rdata_i[27]_i_2_n_0\,
      \s_axi_rdata_i_reg[27]_0\ => \s_axi_rdata_i[27]_i_3_n_0\,
      \s_axi_rdata_i_reg[28]\ => \s_axi_rdata_i[28]_i_2_n_0\,
      \s_axi_rdata_i_reg[28]_0\ => \s_axi_rdata_i[28]_i_3_n_0\,
      \s_axi_rdata_i_reg[29]\ => \s_axi_rdata_i[29]_i_2_n_0\,
      \s_axi_rdata_i_reg[29]_0\ => \s_axi_rdata_i[29]_i_3_n_0\,
      \s_axi_rdata_i_reg[2]\ => \s_axi_rdata_i[2]_i_2_n_0\,
      \s_axi_rdata_i_reg[2]_0\ => \s_axi_rdata_i[2]_i_3_n_0\,
      \s_axi_rdata_i_reg[30]\ => \s_axi_rdata_i[30]_i_2_n_0\,
      \s_axi_rdata_i_reg[30]_0\ => \s_axi_rdata_i[30]_i_3_n_0\,
      \s_axi_rdata_i_reg[31]\(31 downto 0) => Q(31 downto 0),
      \s_axi_rdata_i_reg[31]_0\ => \s_axi_rdata_i_reg[31]_0\,
      \s_axi_rdata_i_reg[31]_1\ => \s_axi_rdata_i[31]_i_3_n_0\,
      \s_axi_rdata_i_reg[3]\ => \s_axi_rdata_i[3]_i_2_n_0\,
      \s_axi_rdata_i_reg[3]_0\ => \s_axi_rdata_i[3]_i_3_n_0\,
      \s_axi_rdata_i_reg[4]\ => \s_axi_rdata_i[4]_i_2_n_0\,
      \s_axi_rdata_i_reg[4]_0\ => \s_axi_rdata_i[4]_i_3_n_0\,
      \s_axi_rdata_i_reg[5]\ => \s_axi_rdata_i[5]_i_2_n_0\,
      \s_axi_rdata_i_reg[5]_0\ => \s_axi_rdata_i[5]_i_3_n_0\,
      \s_axi_rdata_i_reg[6]\ => \s_axi_rdata_i[6]_i_2_n_0\,
      \s_axi_rdata_i_reg[6]_0\ => \s_axi_rdata_i[6]_i_3_n_0\,
      \s_axi_rdata_i_reg[7]\ => \s_axi_rdata_i[7]_i_2_n_0\,
      \s_axi_rdata_i_reg[7]_0\ => \s_axi_rdata_i[7]_i_3_n_0\,
      \s_axi_rdata_i_reg[8]\ => \s_axi_rdata_i[8]_i_2_n_0\,
      \s_axi_rdata_i_reg[8]_0\ => \s_axi_rdata_i[8]_i_3_n_0\,
      \s_axi_rdata_i_reg[9]\ => \s_axi_rdata_i[9]_i_2_n_0\,
      \s_axi_rdata_i_reg[9]_0\ => \s_axi_rdata_i[9]_i_3_n_0\,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wdata_1_sp_1 => s_axi_wdata_1_sn_1
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => p_1_in(2)
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => p_1_in(3)
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => p_1_in(4)
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(3),
      O => p_1_in(5)
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(4),
      O => p_1_in(6)
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(5),
      O => p_1_in(7)
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020202"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(6),
      O => p_1_in(8)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^bus2ip_addr_i_reg[6]_0\(0),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(3),
      Q => \^bus2ip_addr_i_reg[6]_0\(1),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^bus2ip_addr_i_reg[6]_0\(2),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^bus2ip_addr_i_reg[6]_0\(3),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^bus2ip_addr_i_reg[6]_0\(4),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(7),
      Q => bus2ip_addr(7),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => p_1_in(8),
      Q => bus2ip_addr(8),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i_reg_n_0,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_axi_rvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_bvalid_i_reg_0\,
      I4 => s_axi_bready,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => is_read
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => is_read_i_1_n_0,
      D => is_read,
      Q => is_read_reg_n_0,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => is_read_i_1_n_0,
      D => is_write,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_error,
      I1 => s_axi_bresp_i,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => state(0),
      I2 => state(1),
      I3 => \^ip2bus_wrack_reg\,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF03AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i_reg[0]_0\,
      I1 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in136_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(9),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in135_in,
      O => \s_axi_rdata_i[10]_i_2_n_0\
    );
\s_axi_rdata_i[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[10]_0\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[10]_i_3_n_0\
    );
\s_axi_rdata_i[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in134_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(10),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in133_in,
      O => \s_axi_rdata_i[11]_i_2_n_0\
    );
\s_axi_rdata_i[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[11]_0\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[11]_i_3_n_0\
    );
\s_axi_rdata_i[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in132_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(11),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in131_in,
      O => \s_axi_rdata_i[12]_i_2_n_0\
    );
\s_axi_rdata_i[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[12]_0\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[12]_i_3_n_0\
    );
\s_axi_rdata_i[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in130_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(12),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in129_in,
      O => \s_axi_rdata_i[13]_i_2_n_0\
    );
\s_axi_rdata_i[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[13]_0\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[13]_i_3_n_0\
    );
\s_axi_rdata_i[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in128_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(13),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in127_in,
      O => \s_axi_rdata_i[14]_i_2_n_0\
    );
\s_axi_rdata_i[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[14]_0\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[14]_i_3_n_0\
    );
\s_axi_rdata_i[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in126_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(14),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in125_in,
      O => \s_axi_rdata_i[15]_i_2_n_0\
    );
\s_axi_rdata_i[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[15]_0\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[15]_i_3_n_0\
    );
\s_axi_rdata_i[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in124_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(15),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in123_in,
      O => \s_axi_rdata_i[16]_i_2_n_0\
    );
\s_axi_rdata_i[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[16]_0\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[16]_i_3_n_0\
    );
\s_axi_rdata_i[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in122_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(16),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in121_in,
      O => \s_axi_rdata_i[17]_i_2_n_0\
    );
\s_axi_rdata_i[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[17]_i_3_n_0\
    );
\s_axi_rdata_i[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in120_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(17),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in119_in,
      O => \s_axi_rdata_i[18]_i_2_n_0\
    );
\s_axi_rdata_i[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[18]_i_3_n_0\
    );
\s_axi_rdata_i[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in118_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(18),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in117_in,
      O => \s_axi_rdata_i[19]_i_2_n_0\
    );
\s_axi_rdata_i[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[19]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF03AAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_3_n_0\,
      I1 => p_0_in89_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2AAAAAAA2AAA"
    )
        port map (
      I0 => \s_axi_rdata_i[1]_i_4_n_0\,
      I1 => \^bus2ip_addr_i_reg[6]_0\(2),
      I2 => \^bus2ip_addr_i_reg[6]_0\(1),
      I3 => D(0),
      I4 => \^bus2ip_addr_i_reg[6]_0\(0),
      I5 => p_0_in_0,
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[6]_0\(2),
      I1 => p_1_in154_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(0),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in153_in,
      O => \s_axi_rdata_i[1]_i_4_n_0\
    );
\s_axi_rdata_i[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in116_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(19),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in115_in,
      O => \s_axi_rdata_i[20]_i_2_n_0\
    );
\s_axi_rdata_i[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in32_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[20]_i_3_n_0\
    );
\s_axi_rdata_i[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in114_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(20),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in113_in,
      O => \s_axi_rdata_i[21]_i_2_n_0\
    );
\s_axi_rdata_i[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in29_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[21]_i_3_n_0\
    );
\s_axi_rdata_i[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in112_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(21),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in111_in,
      O => \s_axi_rdata_i[22]_i_2_n_0\
    );
\s_axi_rdata_i[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in26_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[22]_i_3_n_0\
    );
\s_axi_rdata_i[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in110_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(22),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in109_in,
      O => \s_axi_rdata_i[23]_i_2_n_0\
    );
\s_axi_rdata_i[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in23_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[23]_i_3_n_0\
    );
\s_axi_rdata_i[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in108_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(23),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in107_in,
      O => \s_axi_rdata_i[24]_i_2_n_0\
    );
\s_axi_rdata_i[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in20_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[24]_i_3_n_0\
    );
\s_axi_rdata_i[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in106_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(24),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in105_in,
      O => \s_axi_rdata_i[25]_i_2_n_0\
    );
\s_axi_rdata_i[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in17_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[25]_i_3_n_0\
    );
\s_axi_rdata_i[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in104_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(25),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in103_in,
      O => \s_axi_rdata_i[26]_i_2_n_0\
    );
\s_axi_rdata_i[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in14_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[26]_i_3_n_0\
    );
\s_axi_rdata_i[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in102_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(26),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in101_in,
      O => \s_axi_rdata_i[27]_i_2_n_0\
    );
\s_axi_rdata_i[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in11_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[27]_i_3_n_0\
    );
\s_axi_rdata_i[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in100_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(27),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in99_in,
      O => \s_axi_rdata_i[28]_i_2_n_0\
    );
\s_axi_rdata_i[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in8_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[28]_i_3_n_0\
    );
\s_axi_rdata_i[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in98_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(28),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in97_in,
      O => \s_axi_rdata_i[29]_i_2_n_0\
    );
\s_axi_rdata_i[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in5_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[29]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in152_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in151_in,
      O => \s_axi_rdata_i[2]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FC0A000000"
    )
        port map (
      I0 => D(1),
      I1 => p_0_in86_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in96_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(29),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in95_in,
      O => \s_axi_rdata_i[30]_i_2_n_0\
    );
\s_axi_rdata_i[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in2_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[30]_i_3_n_0\
    );
\s_axi_rdata_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000E0000"
    )
        port map (
      I0 => \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\,
      I1 => \^bus2ip_addr_i_reg[6]_0\(0),
      I2 => \^bus2ip_addr_i_reg[6]_0\(1),
      I3 => \^bus2ip_addr_i_reg[6]_0\(2),
      I4 => \^bus2ip_addr_i_reg[6]_0\(3),
      I5 => \s_axi_rdata_i[31]_i_7_n_0\,
      O => \s_axi_rdata_i[31]_i_3_n_0\
    );
\s_axi_rdata_i[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[6]_0\(2),
      I1 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \^bus2ip_addr_i_reg[4]_0\
    );
\s_axi_rdata_i[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[6]_0\(0),
      I1 => D(4),
      I2 => \^bus2ip_addr_i_reg[6]_0\(2),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \s_axi_rdata_i[6]_i_3_0\,
      O => \s_axi_rdata_i[31]_i_7_n_0\
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in150_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(2),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in149_in,
      O => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FC0A000000"
    )
        port map (
      I0 => D(2),
      I1 => p_0_in83_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in148_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(3),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in147_in,
      O => \s_axi_rdata_i[4]_i_2_n_0\
    );
\s_axi_rdata_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FC0A000000"
    )
        port map (
      I0 => D(3),
      I1 => p_0_in80_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[4]_i_3_n_0\
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in146_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(4),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in145_in,
      O => \s_axi_rdata_i[5]_i_2_n_0\
    );
\s_axi_rdata_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000C30080008"
    )
        port map (
      I0 => p_0_in77_in,
      I1 => \^bus2ip_addr_i_reg[6]_0\(3),
      I2 => \^bus2ip_addr_i_reg[6]_0\(1),
      I3 => \^bus2ip_addr_i_reg[6]_0\(2),
      I4 => D(4),
      I5 => \^bus2ip_addr_i_reg[6]_0\(0),
      O => \s_axi_rdata_i[5]_i_3_n_0\
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in144_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(5),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in143_in,
      O => \s_axi_rdata_i[6]_i_2_n_0\
    );
\s_axi_rdata_i[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in74_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[6]_i_3_n_0\
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in142_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(6),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in141_in,
      O => \s_axi_rdata_i[7]_i_2_n_0\
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in71_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[7]_i_3_n_0\
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in140_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(7),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in139_in,
      O => \s_axi_rdata_i[8]_i_2_n_0\
    );
\s_axi_rdata_i[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => p_0_in68_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[8]_i_3_n_0\
    );
\s_axi_rdata_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^bus2ip_addr_i_reg[4]_0\,
      I1 => p_1_in138_in,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \s_axi_rdata_i_reg[30]_0\(8),
      I4 => \^bus2ip_addr_i_reg[6]_0\(1),
      I5 => p_0_in137_in,
      O => \s_axi_rdata_i[9]_i_2_n_0\
    );
\s_axi_rdata_i[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAA"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \s_axi_rdata_i_reg[9]_0\,
      I2 => \^bus2ip_addr_i_reg[6]_0\(0),
      I3 => \^bus2ip_addr_i_reg[6]_0\(1),
      I4 => \^bus2ip_addr_i_reg[6]_0\(2),
      I5 => \^bus2ip_addr_i_reg[6]_0\(3),
      O => \s_axi_rdata_i[9]_i_3_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(10),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(16),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(17),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(18),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(19),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(20),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(21),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(22),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(23),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(24),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(25),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(26),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(27),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(28),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(29),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(30),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(31),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(8),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => read_data(9),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070F0F0F"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => s_axi_wstrb(0),
      I2 => bus2ip_rnw_i_reg_n_0,
      I3 => s_axi_wstrb(1),
      I4 => s_axi_wstrb(2),
      O => ip2bus_error
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => ip2bus_error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => state(1),
      I2 => state(0),
      I3 => \^ip2bus_rdack_reg\,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBF83B38"
    )
        port map (
      I0 => \^ip2bus_wrack_reg\,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_arvalid,
      I4 => \FSM_onehot_state[3]_i_2_n_0\,
      O => p_0_out(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECFEECC22CF22CC"
    )
        port map (
      I0 => \^ip2bus_rdack_reg\,
      I1 => state(1),
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => \state[1]_i_2_n_0\,
      I5 => \FSM_onehot_state[3]_i_2_n_0\,
      O => p_0_out(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(0),
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(1),
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_axi_intc_0_axi_lite_ipif is
  port (
    p_15_in : out STD_LOGIC;
    p_18_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn_0 : out STD_LOGIC;
    s_axi_aresetn_1 : out STD_LOGIC;
    s_axi_aresetn_2 : out STD_LOGIC;
    s_axi_aresetn_3 : out STD_LOGIC;
    s_axi_aresetn_4 : out STD_LOGIC;
    s_axi_aresetn_5 : out STD_LOGIC;
    s_axi_aresetn_6 : out STD_LOGIC;
    s_axi_aresetn_7 : out STD_LOGIC;
    s_axi_aresetn_8 : out STD_LOGIC;
    s_axi_aresetn_9 : out STD_LOGIC;
    s_axi_aresetn_10 : out STD_LOGIC;
    s_axi_aresetn_11 : out STD_LOGIC;
    s_axi_aresetn_12 : out STD_LOGIC;
    s_axi_aresetn_13 : out STD_LOGIC;
    s_axi_aresetn_14 : out STD_LOGIC;
    s_axi_aresetn_15 : out STD_LOGIC;
    s_axi_aresetn_16 : out STD_LOGIC;
    s_axi_aresetn_17 : out STD_LOGIC;
    s_axi_aresetn_18 : out STD_LOGIC;
    s_axi_aresetn_19 : out STD_LOGIC;
    s_axi_aresetn_20 : out STD_LOGIC;
    s_axi_aresetn_21 : out STD_LOGIC;
    s_axi_aresetn_22 : out STD_LOGIC;
    s_axi_aresetn_23 : out STD_LOGIC;
    s_axi_aresetn_24 : out STD_LOGIC;
    s_axi_aresetn_25 : out STD_LOGIC;
    s_axi_aresetn_26 : out STD_LOGIC;
    s_axi_aresetn_27 : out STD_LOGIC;
    s_axi_aresetn_28 : out STD_LOGIC;
    s_axi_aresetn_29 : out STD_LOGIC;
    s_axi_aresetn_30 : out STD_LOGIC;
    s_axi_aresetn_31 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    Bus_RNW_reg_reg_7 : out STD_LOGIC;
    Bus_RNW_reg_reg_8 : out STD_LOGIC;
    Bus_RNW_reg_reg_9 : out STD_LOGIC;
    Bus_RNW_reg_reg_10 : out STD_LOGIC;
    Bus_RNW_reg_reg_11 : out STD_LOGIC;
    Bus_RNW_reg_reg_12 : out STD_LOGIC;
    Bus_RNW_reg_reg_13 : out STD_LOGIC;
    Bus_RNW_reg_reg_14 : out STD_LOGIC;
    Bus_RNW_reg_reg_15 : out STD_LOGIC;
    Bus_RNW_reg_reg_16 : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    \bus2ip_addr_i_reg[6]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \bus2ip_addr_i_reg[4]\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_17 : out STD_LOGIC;
    Bus_RNW_reg_reg_18 : out STD_LOGIC;
    Bus_RNW_reg_reg_19 : out STD_LOGIC;
    Bus_RNW_reg_reg_20 : out STD_LOGIC;
    Bus_RNW_reg_reg_21 : out STD_LOGIC;
    Bus_RNW_reg_reg_22 : out STD_LOGIC;
    Bus_RNW_reg_reg_23 : out STD_LOGIC;
    Bus_RNW_reg_reg_24 : out STD_LOGIC;
    Bus_RNW_reg_reg_25 : out STD_LOGIC;
    Bus_RNW_reg_reg_26 : out STD_LOGIC;
    Bus_RNW_reg_reg_27 : out STD_LOGIC;
    Bus_RNW_reg_reg_28 : out STD_LOGIC;
    Bus_RNW_reg_reg_29 : out STD_LOGIC;
    Bus_RNW_reg_reg_30 : out STD_LOGIC;
    Bus_RNW_reg_reg_31 : out STD_LOGIC;
    Bus_RNW_reg_reg_32 : out STD_LOGIC;
    Bus_RNW_reg_reg_33 : out STD_LOGIC;
    Bus_RNW_reg_reg_34 : out STD_LOGIC;
    Bus_RNW_reg_reg_35 : out STD_LOGIC;
    Bus_RNW_reg_reg_36 : out STD_LOGIC;
    Bus_RNW_reg_reg_37 : out STD_LOGIC;
    Bus_RNW_reg_reg_38 : out STD_LOGIC;
    Bus_RNW_reg_reg_39 : out STD_LOGIC;
    Bus_RNW_reg_reg_40 : out STD_LOGIC;
    Bus_RNW_reg_reg_41 : out STD_LOGIC;
    Bus_RNW_reg_reg_42 : out STD_LOGIC;
    Bus_RNW_reg_reg_43 : out STD_LOGIC;
    Bus_RNW_reg_reg_44 : out STD_LOGIC;
    Bus_RNW_reg_reg_45 : out STD_LOGIC;
    Bus_RNW_reg_reg_46 : out STD_LOGIC;
    Bus_RNW_reg_reg_47 : out STD_LOGIC;
    Bus_RNW_reg_reg_48 : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    Or128_vec2stdlogic : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p_0_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : in STD_LOGIC;
    p_0_in65_in : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in63_in : in STD_LOGIC;
    p_0_in62_in : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    p_0_in60_in : in STD_LOGIC;
    p_0_in59_in : in STD_LOGIC;
    p_0_in58_in : in STD_LOGIC;
    p_0_in57_in : in STD_LOGIC;
    p_0_in56_in : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    p_0_in54_in : in STD_LOGIC;
    p_0_in53_in : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    p_0_in51_in : in STD_LOGIC;
    p_0_in50_in : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    p_0_in48_in : in STD_LOGIC;
    p_0_in47_in : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    p_0_in45_in : in STD_LOGIC;
    p_0_in44_in : in STD_LOGIC;
    p_0_in43_in : in STD_LOGIC;
    p_0_in42_in : in STD_LOGIC;
    p_0_in41_in : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    p_0_in39_in : in STD_LOGIC;
    p_0_in38_in : in STD_LOGIC;
    p_0_in37_in : in STD_LOGIC;
    p_0_in36_in : in STD_LOGIC;
    p_0_in35_in : in STD_LOGIC;
    \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\ : in STD_LOGIC;
    p_0_in2_in : in STD_LOGIC;
    p_0_in5_in : in STD_LOGIC;
    p_0_in8_in : in STD_LOGIC;
    p_0_in11_in : in STD_LOGIC;
    p_0_in14_in : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    p_0_in20_in : in STD_LOGIC;
    p_0_in23_in : in STD_LOGIC;
    p_0_in26_in : in STD_LOGIC;
    p_0_in29_in : in STD_LOGIC;
    p_0_in32_in : in STD_LOGIC;
    \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\ : in STD_LOGIC;
    \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\ : in STD_LOGIC;
    \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\ : in STD_LOGIC;
    p_0_in83_in : in STD_LOGIC;
    p_0_in86_in : in STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC;
    p_0_in74_in : in STD_LOGIC;
    p_0_in71_in : in STD_LOGIC;
    p_0_in68_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[16]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i[6]_i_3\ : in STD_LOGIC;
    p_0_in77_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    p_0_in89_in : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC;
    p_0_in80_in : in STD_LOGIC;
    p_1_in152_in : in STD_LOGIC;
    \s_axi_rdata_i_reg[30]\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    p_0_in151_in : in STD_LOGIC;
    p_1_in150_in : in STD_LOGIC;
    p_0_in149_in : in STD_LOGIC;
    p_1_in148_in : in STD_LOGIC;
    p_0_in147_in : in STD_LOGIC;
    p_1_in146_in : in STD_LOGIC;
    p_0_in145_in : in STD_LOGIC;
    p_1_in144_in : in STD_LOGIC;
    p_0_in143_in : in STD_LOGIC;
    p_1_in142_in : in STD_LOGIC;
    p_0_in141_in : in STD_LOGIC;
    p_1_in140_in : in STD_LOGIC;
    p_0_in139_in : in STD_LOGIC;
    p_1_in138_in : in STD_LOGIC;
    p_0_in137_in : in STD_LOGIC;
    p_1_in136_in : in STD_LOGIC;
    p_0_in135_in : in STD_LOGIC;
    p_1_in134_in : in STD_LOGIC;
    p_0_in133_in : in STD_LOGIC;
    p_1_in132_in : in STD_LOGIC;
    p_0_in131_in : in STD_LOGIC;
    p_1_in130_in : in STD_LOGIC;
    p_0_in129_in : in STD_LOGIC;
    p_1_in128_in : in STD_LOGIC;
    p_0_in127_in : in STD_LOGIC;
    p_1_in126_in : in STD_LOGIC;
    p_0_in125_in : in STD_LOGIC;
    p_1_in124_in : in STD_LOGIC;
    p_0_in123_in : in STD_LOGIC;
    p_1_in122_in : in STD_LOGIC;
    p_0_in121_in : in STD_LOGIC;
    p_1_in120_in : in STD_LOGIC;
    p_0_in119_in : in STD_LOGIC;
    p_1_in118_in : in STD_LOGIC;
    p_0_in117_in : in STD_LOGIC;
    p_1_in116_in : in STD_LOGIC;
    p_0_in115_in : in STD_LOGIC;
    p_1_in114_in : in STD_LOGIC;
    p_0_in113_in : in STD_LOGIC;
    p_1_in112_in : in STD_LOGIC;
    p_0_in111_in : in STD_LOGIC;
    p_1_in110_in : in STD_LOGIC;
    p_0_in109_in : in STD_LOGIC;
    p_1_in108_in : in STD_LOGIC;
    p_0_in107_in : in STD_LOGIC;
    p_1_in106_in : in STD_LOGIC;
    p_0_in105_in : in STD_LOGIC;
    p_1_in104_in : in STD_LOGIC;
    p_0_in103_in : in STD_LOGIC;
    p_1_in102_in : in STD_LOGIC;
    p_0_in101_in : in STD_LOGIC;
    p_1_in100_in : in STD_LOGIC;
    p_0_in99_in : in STD_LOGIC;
    p_1_in98_in : in STD_LOGIC;
    p_0_in97_in : in STD_LOGIC;
    p_1_in96_in : in STD_LOGIC;
    p_0_in95_in : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mer_int_reg[0]\ : in STD_LOGIC;
    p_0_in33_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ : in STD_LOGIC;
    p_0_in31_in : in STD_LOGIC;
    p_0_in30_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ : in STD_LOGIC;
    p_0_in28_in : in STD_LOGIC;
    p_0_in27_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ : in STD_LOGIC;
    p_0_in25_in : in STD_LOGIC;
    p_0_in24_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ : in STD_LOGIC;
    p_0_in22_in : in STD_LOGIC;
    p_0_in21_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ : in STD_LOGIC;
    p_0_in19_in : in STD_LOGIC;
    p_0_in18_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\ : in STD_LOGIC;
    p_0_in16_in : in STD_LOGIC;
    p_0_in15_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\ : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    p_0_in12_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\ : in STD_LOGIC;
    p_0_in10_in : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\ : in STD_LOGIC;
    p_0_in7_in : in STD_LOGIC;
    p_0_in6_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\ : in STD_LOGIC;
    p_0_in4_in : in STD_LOGIC;
    p_0_in3_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : in STD_LOGIC;
    p_1_in154_in : in STD_LOGIC;
    p_0_in153_in : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_axi_intc_0_axi_lite_ipif : entity is "axi_lite_ipif";
end bd_deec_axi_intc_0_axi_lite_ipif;

architecture STRUCTURE of bd_deec_axi_intc_0_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
I_SLAVE_ATTACHMENT: entity work.bd_deec_axi_intc_0_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_10 => Bus_RNW_reg_reg_9,
      Bus_RNW_reg_reg_11 => Bus_RNW_reg_reg_10,
      Bus_RNW_reg_reg_12 => Bus_RNW_reg_reg_11,
      Bus_RNW_reg_reg_13 => Bus_RNW_reg_reg_12,
      Bus_RNW_reg_reg_14 => Bus_RNW_reg_reg_13,
      Bus_RNW_reg_reg_15 => Bus_RNW_reg_reg_14,
      Bus_RNW_reg_reg_16 => Bus_RNW_reg_reg_15,
      Bus_RNW_reg_reg_17 => Bus_RNW_reg_reg_16,
      Bus_RNW_reg_reg_18 => Bus_RNW_reg_reg_17,
      Bus_RNW_reg_reg_19 => Bus_RNW_reg_reg_18,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_20 => Bus_RNW_reg_reg_19,
      Bus_RNW_reg_reg_21 => Bus_RNW_reg_reg_20,
      Bus_RNW_reg_reg_22 => Bus_RNW_reg_reg_21,
      Bus_RNW_reg_reg_23 => Bus_RNW_reg_reg_22,
      Bus_RNW_reg_reg_24 => Bus_RNW_reg_reg_23,
      Bus_RNW_reg_reg_25 => Bus_RNW_reg_reg_24,
      Bus_RNW_reg_reg_26 => Bus_RNW_reg_reg_25,
      Bus_RNW_reg_reg_27 => Bus_RNW_reg_reg_26,
      Bus_RNW_reg_reg_28 => Bus_RNW_reg_reg_27,
      Bus_RNW_reg_reg_29 => Bus_RNW_reg_reg_28,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_30 => Bus_RNW_reg_reg_29,
      Bus_RNW_reg_reg_31 => Bus_RNW_reg_reg_30,
      Bus_RNW_reg_reg_32 => Bus_RNW_reg_reg_31,
      Bus_RNW_reg_reg_33 => Bus_RNW_reg_reg_32,
      Bus_RNW_reg_reg_34 => Bus_RNW_reg_reg_33,
      Bus_RNW_reg_reg_35 => Bus_RNW_reg_reg_34,
      Bus_RNW_reg_reg_36 => Bus_RNW_reg_reg_35,
      Bus_RNW_reg_reg_37 => Bus_RNW_reg_reg_36,
      Bus_RNW_reg_reg_38 => Bus_RNW_reg_reg_37,
      Bus_RNW_reg_reg_39 => Bus_RNW_reg_reg_38,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_40 => Bus_RNW_reg_reg_39,
      Bus_RNW_reg_reg_41 => Bus_RNW_reg_reg_40,
      Bus_RNW_reg_reg_42 => Bus_RNW_reg_reg_41,
      Bus_RNW_reg_reg_43 => Bus_RNW_reg_reg_42,
      Bus_RNW_reg_reg_44 => Bus_RNW_reg_reg_43,
      Bus_RNW_reg_reg_45 => Bus_RNW_reg_reg_44,
      Bus_RNW_reg_reg_46 => Bus_RNW_reg_reg_45,
      Bus_RNW_reg_reg_47 => Bus_RNW_reg_reg_46,
      Bus_RNW_reg_reg_48 => Bus_RNW_reg_reg_47,
      Bus_RNW_reg_reg_49 => Bus_RNW_reg_reg_48,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_4,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_5,
      Bus_RNW_reg_reg_7 => Bus_RNW_reg_reg_6,
      Bus_RNW_reg_reg_8 => Bus_RNW_reg_reg_7,
      Bus_RNW_reg_reg_9 => Bus_RNW_reg_reg_8,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ => \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\,
      \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\ => \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\,
      \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\ => \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\,
      \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\ => \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\,
      \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\ => \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\,
      \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\ => \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\,
      D(4 downto 0) => D(4 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => p_18_in,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => p_15_in,
      Or128_vec2stdlogic => Or128_vec2stdlogic,
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q(31 downto 0) => Q(31 downto 0),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\ => \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\,
      \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\ => \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\,
      \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\ => \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\,
      \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\ => \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      \bus2ip_addr_i_reg[4]_0\ => \bus2ip_addr_i_reg[4]\,
      \bus2ip_addr_i_reg[6]_0\(4 downto 0) => \bus2ip_addr_i_reg[6]\(4 downto 0),
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_rdack_reg => ip2bus_rdack_reg,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      ip2bus_wrack_reg => ip2bus_wrack_reg,
      \mer_int_reg[0]\ => \mer_int_reg[0]\,
      p_0_in => p_0_in,
      p_0_in101_in => p_0_in101_in,
      p_0_in103_in => p_0_in103_in,
      p_0_in105_in => p_0_in105_in,
      p_0_in107_in => p_0_in107_in,
      p_0_in109_in => p_0_in109_in,
      p_0_in10_in => p_0_in10_in,
      p_0_in111_in => p_0_in111_in,
      p_0_in113_in => p_0_in113_in,
      p_0_in115_in => p_0_in115_in,
      p_0_in117_in => p_0_in117_in,
      p_0_in119_in => p_0_in119_in,
      p_0_in11_in => p_0_in11_in,
      p_0_in121_in => p_0_in121_in,
      p_0_in123_in => p_0_in123_in,
      p_0_in125_in => p_0_in125_in,
      p_0_in127_in => p_0_in127_in,
      p_0_in129_in => p_0_in129_in,
      p_0_in12_in => p_0_in12_in,
      p_0_in131_in => p_0_in131_in,
      p_0_in133_in => p_0_in133_in,
      p_0_in135_in => p_0_in135_in,
      p_0_in137_in => p_0_in137_in,
      p_0_in139_in => p_0_in139_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in141_in => p_0_in141_in,
      p_0_in143_in => p_0_in143_in,
      p_0_in145_in => p_0_in145_in,
      p_0_in147_in => p_0_in147_in,
      p_0_in149_in => p_0_in149_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in151_in => p_0_in151_in,
      p_0_in153_in => p_0_in153_in,
      p_0_in15_in => p_0_in15_in,
      p_0_in16_in => p_0_in16_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in18_in => p_0_in18_in,
      p_0_in19_in => p_0_in19_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in21_in => p_0_in21_in,
      p_0_in22_in => p_0_in22_in,
      p_0_in23_in => p_0_in23_in,
      p_0_in24_in => p_0_in24_in,
      p_0_in25_in => p_0_in25_in,
      p_0_in26_in => p_0_in26_in,
      p_0_in27_in => p_0_in27_in,
      p_0_in28_in => p_0_in28_in,
      p_0_in29_in => p_0_in29_in,
      p_0_in2_in => p_0_in2_in,
      p_0_in30_in => p_0_in30_in,
      p_0_in31_in => p_0_in31_in,
      p_0_in32_in => p_0_in32_in,
      p_0_in33_in => p_0_in33_in,
      p_0_in35_in => p_0_in35_in,
      p_0_in36_in => p_0_in36_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in38_in => p_0_in38_in,
      p_0_in39_in => p_0_in39_in,
      p_0_in3_in => p_0_in3_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in41_in => p_0_in41_in,
      p_0_in42_in => p_0_in42_in,
      p_0_in43_in => p_0_in43_in,
      p_0_in44_in => p_0_in44_in,
      p_0_in45_in => p_0_in45_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in47_in => p_0_in47_in,
      p_0_in48_in => p_0_in48_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in4_in => p_0_in4_in,
      p_0_in50_in => p_0_in50_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in53_in => p_0_in53_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in56_in => p_0_in56_in,
      p_0_in57_in => p_0_in57_in,
      p_0_in58_in => p_0_in58_in,
      p_0_in59_in => p_0_in59_in,
      p_0_in5_in => p_0_in5_in,
      p_0_in60_in => p_0_in60_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in62_in => p_0_in62_in,
      p_0_in63_in => p_0_in63_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in65_in => p_0_in65_in,
      p_0_in68_in => p_0_in68_in,
      p_0_in6_in => p_0_in6_in,
      p_0_in71_in => p_0_in71_in,
      p_0_in74_in => p_0_in74_in,
      p_0_in77_in => p_0_in77_in,
      p_0_in7_in => p_0_in7_in,
      p_0_in80_in => p_0_in80_in,
      p_0_in83_in => p_0_in83_in,
      p_0_in86_in => p_0_in86_in,
      p_0_in89_in => p_0_in89_in,
      p_0_in8_in => p_0_in8_in,
      p_0_in95_in => p_0_in95_in,
      p_0_in97_in => p_0_in97_in,
      p_0_in99_in => p_0_in99_in,
      p_0_in9_in => p_0_in9_in,
      p_0_in_0 => p_0_in_0,
      p_1_in100_in => p_1_in100_in,
      p_1_in102_in => p_1_in102_in,
      p_1_in104_in => p_1_in104_in,
      p_1_in106_in => p_1_in106_in,
      p_1_in108_in => p_1_in108_in,
      p_1_in110_in => p_1_in110_in,
      p_1_in112_in => p_1_in112_in,
      p_1_in114_in => p_1_in114_in,
      p_1_in116_in => p_1_in116_in,
      p_1_in118_in => p_1_in118_in,
      p_1_in120_in => p_1_in120_in,
      p_1_in122_in => p_1_in122_in,
      p_1_in124_in => p_1_in124_in,
      p_1_in126_in => p_1_in126_in,
      p_1_in128_in => p_1_in128_in,
      p_1_in130_in => p_1_in130_in,
      p_1_in132_in => p_1_in132_in,
      p_1_in134_in => p_1_in134_in,
      p_1_in136_in => p_1_in136_in,
      p_1_in138_in => p_1_in138_in,
      p_1_in140_in => p_1_in140_in,
      p_1_in142_in => p_1_in142_in,
      p_1_in144_in => p_1_in144_in,
      p_1_in146_in => p_1_in146_in,
      p_1_in148_in => p_1_in148_in,
      p_1_in150_in => p_1_in150_in,
      p_1_in152_in => p_1_in152_in,
      p_1_in154_in => p_1_in154_in,
      p_1_in96_in => p_1_in96_in,
      p_1_in98_in => p_1_in98_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => s_axi_aresetn_0,
      s_axi_aresetn_1 => s_axi_aresetn_1,
      s_axi_aresetn_10 => s_axi_aresetn_10,
      s_axi_aresetn_11 => s_axi_aresetn_11,
      s_axi_aresetn_12 => s_axi_aresetn_12,
      s_axi_aresetn_13 => s_axi_aresetn_13,
      s_axi_aresetn_14 => s_axi_aresetn_14,
      s_axi_aresetn_15 => s_axi_aresetn_15,
      s_axi_aresetn_16 => s_axi_aresetn_16,
      s_axi_aresetn_17 => s_axi_aresetn_17,
      s_axi_aresetn_18 => s_axi_aresetn_18,
      s_axi_aresetn_19 => s_axi_aresetn_19,
      s_axi_aresetn_2 => s_axi_aresetn_2,
      s_axi_aresetn_20 => s_axi_aresetn_20,
      s_axi_aresetn_21 => s_axi_aresetn_21,
      s_axi_aresetn_22 => s_axi_aresetn_22,
      s_axi_aresetn_23 => s_axi_aresetn_23,
      s_axi_aresetn_24 => s_axi_aresetn_24,
      s_axi_aresetn_25 => s_axi_aresetn_25,
      s_axi_aresetn_26 => s_axi_aresetn_26,
      s_axi_aresetn_27 => s_axi_aresetn_27,
      s_axi_aresetn_28 => s_axi_aresetn_28,
      s_axi_aresetn_29 => s_axi_aresetn_29,
      s_axi_aresetn_3 => s_axi_aresetn_3,
      s_axi_aresetn_30 => s_axi_aresetn_30,
      s_axi_aresetn_31 => s_axi_aresetn_31,
      s_axi_aresetn_4 => s_axi_aresetn_4,
      s_axi_aresetn_5 => s_axi_aresetn_5,
      s_axi_aresetn_6 => s_axi_aresetn_6,
      s_axi_aresetn_7 => s_axi_aresetn_7,
      s_axi_aresetn_8 => s_axi_aresetn_8,
      s_axi_aresetn_9 => s_axi_aresetn_9,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i[6]_i_3_0\ => \s_axi_rdata_i[6]_i_3\,
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i_reg[0]\,
      \s_axi_rdata_i_reg[10]_0\ => \s_axi_rdata_i_reg[10]\,
      \s_axi_rdata_i_reg[11]_0\ => \s_axi_rdata_i_reg[11]\,
      \s_axi_rdata_i_reg[12]_0\ => \s_axi_rdata_i_reg[12]\,
      \s_axi_rdata_i_reg[13]_0\ => \s_axi_rdata_i_reg[13]\,
      \s_axi_rdata_i_reg[14]_0\ => \s_axi_rdata_i_reg[14]\,
      \s_axi_rdata_i_reg[15]_0\ => \s_axi_rdata_i_reg[15]\,
      \s_axi_rdata_i_reg[16]_0\ => \s_axi_rdata_i_reg[16]\,
      \s_axi_rdata_i_reg[30]_0\(29 downto 0) => \s_axi_rdata_i_reg[30]\(29 downto 0),
      \s_axi_rdata_i_reg[31]_0\ => \s_axi_rdata_i_reg[31]\,
      \s_axi_rdata_i_reg[9]_0\ => \s_axi_rdata_i_reg[9]\,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wdata_1_sp_1 => s_axi_wdata_1_sn_1,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_axi_intc_0_axi_intc is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_in : in STD_LOGIC;
    interrupt_address_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    processor_ack_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of bd_deec_axi_intc_0_axi_intc : entity is 32;
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of bd_deec_axi_intc_0_axi_intc : entity is 32768;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of bd_deec_axi_intc_0_axi_intc : entity is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of bd_deec_axi_intc_0_axi_intc : entity is 1;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of bd_deec_axi_intc_0_axi_intc : entity is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of bd_deec_axi_intc_0_axi_intc : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of bd_deec_axi_intc_0_axi_intc : entity is "virtexuplus";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of bd_deec_axi_intc_0_axi_intc : entity is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of bd_deec_axi_intc_0_axi_intc : entity is 1;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of bd_deec_axi_intc_0_axi_intc : entity is 0;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of bd_deec_axi_intc_0_axi_intc : entity is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of bd_deec_axi_intc_0_axi_intc : entity is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of bd_deec_axi_intc_0_axi_intc : entity is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of bd_deec_axi_intc_0_axi_intc : entity is "bd_deec_axi_intc_0";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of bd_deec_axi_intc_0_axi_intc : entity is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of bd_deec_axi_intc_0_axi_intc : entity is 1;
  attribute C_IVAR_RESET_VALUE : string;
  attribute C_IVAR_RESET_VALUE of bd_deec_axi_intc_0_axi_intc : entity is "64'b0000000000000000000000000000000011110000000000000000000000010000";
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of bd_deec_axi_intc_0_axi_intc : entity is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of bd_deec_axi_intc_0_axi_intc : entity is 576;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of bd_deec_axi_intc_0_axi_intc : entity is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of bd_deec_axi_intc_0_axi_intc : entity is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of bd_deec_axi_intc_0_axi_intc : entity is 17;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of bd_deec_axi_intc_0_axi_intc : entity is 15;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of bd_deec_axi_intc_0_axi_intc : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of bd_deec_axi_intc_0_axi_intc : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of bd_deec_axi_intc_0_axi_intc : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_axi_intc_0_axi_intc : entity is "axi_intc";
  attribute hdl : string;
  attribute hdl of bd_deec_axi_intc_0_axi_intc : entity is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of bd_deec_axi_intc_0_axi_intc : entity is "TRUE";
  attribute ip_group : string;
  attribute ip_group of bd_deec_axi_intc_0_axi_intc : entity is "LOGICORE";
  attribute iptype : string;
  attribute iptype of bd_deec_axi_intc_0_axi_intc : entity is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of bd_deec_axi_intc_0_axi_intc : entity is "TRUE";
  attribute style : string;
  attribute style of bd_deec_axi_intc_0_axi_intc : entity is "HDL";
end bd_deec_axi_intc_0_axi_intc;

architecture STRUCTURE of bd_deec_axi_intc_0_axi_intc is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_10 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_100 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_101 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_102 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_11 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_14 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_16 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_17 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_18 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_19 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_20 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_21 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_22 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_23 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_24 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_25 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_26 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_27 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_28 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_29 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_30 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_31 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_32 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_33 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_34 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_35 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_36 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_37 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_38 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_42 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_43 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_44 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_45 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_46 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_47 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_48 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_49 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_50 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_51 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_52 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_53 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_54 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_55 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_56 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_57 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_58 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_59 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_68 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_69 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_7 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_70 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_71 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_72 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_73 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_74 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_75 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_76 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_77 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_78 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_79 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_8 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_80 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_81 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_82 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_83 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_84 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_85 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_86 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_87 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_88 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_89 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_90 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_91 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_92 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_93 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_94 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_95 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_96 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_97 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_98 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_99 : STD_LOGIC;
  signal Douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal INTC_CORE_I_n_0 : STD_LOGIC;
  signal INTC_CORE_I_n_10 : STD_LOGIC;
  signal INTC_CORE_I_n_100 : STD_LOGIC;
  signal INTC_CORE_I_n_103 : STD_LOGIC;
  signal INTC_CORE_I_n_11 : STD_LOGIC;
  signal INTC_CORE_I_n_12 : STD_LOGIC;
  signal INTC_CORE_I_n_13 : STD_LOGIC;
  signal INTC_CORE_I_n_14 : STD_LOGIC;
  signal INTC_CORE_I_n_15 : STD_LOGIC;
  signal INTC_CORE_I_n_16 : STD_LOGIC;
  signal INTC_CORE_I_n_165 : STD_LOGIC;
  signal INTC_CORE_I_n_166 : STD_LOGIC;
  signal INTC_CORE_I_n_167 : STD_LOGIC;
  signal INTC_CORE_I_n_17 : STD_LOGIC;
  signal INTC_CORE_I_n_18 : STD_LOGIC;
  signal INTC_CORE_I_n_19 : STD_LOGIC;
  signal INTC_CORE_I_n_20 : STD_LOGIC;
  signal INTC_CORE_I_n_32 : STD_LOGIC;
  signal INTC_CORE_I_n_39 : STD_LOGIC;
  signal INTC_CORE_I_n_71 : STD_LOGIC;
  signal INTC_CORE_I_n_73 : STD_LOGIC;
  signal INTC_CORE_I_n_76 : STD_LOGIC;
  signal INTC_CORE_I_n_79 : STD_LOGIC;
  signal INTC_CORE_I_n_82 : STD_LOGIC;
  signal INTC_CORE_I_n_85 : STD_LOGIC;
  signal INTC_CORE_I_n_88 : STD_LOGIC;
  signal INTC_CORE_I_n_91 : STD_LOGIC;
  signal INTC_CORE_I_n_94 : STD_LOGIC;
  signal INTC_CORE_I_n_97 : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_15_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\ : STD_LOGIC;
  signal Or128_vec2stdlogic : STD_LOGIC;
  signal Or128_vec2stdlogic19_out : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 16 downto 2 );
  signal ip2bus_rdack : STD_LOGIC;
  signal ip2bus_rdack_int_d1 : STD_LOGIC;
  signal ip2bus_rdack_prev2 : STD_LOGIC;
  signal ip2bus_wrack : STD_LOGIC;
  signal ip2bus_wrack_int_d1 : STD_LOGIC;
  signal ip2bus_wrack_prev2 : STD_LOGIC;
  signal ipr : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal ivr : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in101_in : STD_LOGIC;
  signal p_0_in103_in : STD_LOGIC;
  signal p_0_in105_in : STD_LOGIC;
  signal p_0_in107_in : STD_LOGIC;
  signal p_0_in109_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in111_in : STD_LOGIC;
  signal p_0_in113_in : STD_LOGIC;
  signal p_0_in115_in : STD_LOGIC;
  signal p_0_in117_in : STD_LOGIC;
  signal p_0_in119_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in121_in : STD_LOGIC;
  signal p_0_in123_in : STD_LOGIC;
  signal p_0_in125_in : STD_LOGIC;
  signal p_0_in127_in : STD_LOGIC;
  signal p_0_in129_in : STD_LOGIC;
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in131_in : STD_LOGIC;
  signal p_0_in133_in : STD_LOGIC;
  signal p_0_in135_in : STD_LOGIC;
  signal p_0_in137_in : STD_LOGIC;
  signal p_0_in139_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in141_in : STD_LOGIC;
  signal p_0_in143_in : STD_LOGIC;
  signal p_0_in145_in : STD_LOGIC;
  signal p_0_in147_in : STD_LOGIC;
  signal p_0_in149_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in151_in : STD_LOGIC;
  signal p_0_in153_in : STD_LOGIC;
  signal p_0_in15_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in18_in : STD_LOGIC;
  signal p_0_in19_in : STD_LOGIC;
  signal p_0_in20_in : STD_LOGIC;
  signal p_0_in21_in : STD_LOGIC;
  signal p_0_in22_in : STD_LOGIC;
  signal p_0_in23_in : STD_LOGIC;
  signal p_0_in24_in : STD_LOGIC;
  signal p_0_in25_in : STD_LOGIC;
  signal p_0_in26_in : STD_LOGIC;
  signal p_0_in27_in : STD_LOGIC;
  signal p_0_in28_in : STD_LOGIC;
  signal p_0_in29_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in30_in : STD_LOGIC;
  signal p_0_in31_in : STD_LOGIC;
  signal p_0_in32_in : STD_LOGIC;
  signal p_0_in33_in : STD_LOGIC;
  signal p_0_in35_in : STD_LOGIC;
  signal p_0_in36_in : STD_LOGIC;
  signal p_0_in37_in : STD_LOGIC;
  signal p_0_in38_in : STD_LOGIC;
  signal p_0_in39_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in40_in : STD_LOGIC;
  signal p_0_in41_in : STD_LOGIC;
  signal p_0_in42_in : STD_LOGIC;
  signal p_0_in43_in : STD_LOGIC;
  signal p_0_in44_in : STD_LOGIC;
  signal p_0_in45_in : STD_LOGIC;
  signal p_0_in46_in : STD_LOGIC;
  signal p_0_in47_in : STD_LOGIC;
  signal p_0_in48_in : STD_LOGIC;
  signal p_0_in49_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in50_in : STD_LOGIC;
  signal p_0_in51_in : STD_LOGIC;
  signal p_0_in52_in : STD_LOGIC;
  signal p_0_in53_in : STD_LOGIC;
  signal p_0_in54_in : STD_LOGIC;
  signal p_0_in55_in : STD_LOGIC;
  signal p_0_in56_in : STD_LOGIC;
  signal p_0_in57_in : STD_LOGIC;
  signal p_0_in58_in : STD_LOGIC;
  signal p_0_in59_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in60_in : STD_LOGIC;
  signal p_0_in61_in : STD_LOGIC;
  signal p_0_in62_in : STD_LOGIC;
  signal p_0_in63_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in65_in : STD_LOGIC;
  signal p_0_in68_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in71_in : STD_LOGIC;
  signal p_0_in74_in : STD_LOGIC;
  signal p_0_in77_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in80_in : STD_LOGIC;
  signal p_0_in83_in : STD_LOGIC;
  signal p_0_in86_in : STD_LOGIC;
  signal p_0_in89_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_0_in95_in : STD_LOGIC;
  signal p_0_in97_in : STD_LOGIC;
  signal p_0_in99_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in100_in : STD_LOGIC;
  signal p_1_in102_in : STD_LOGIC;
  signal p_1_in104_in : STD_LOGIC;
  signal p_1_in106_in : STD_LOGIC;
  signal p_1_in108_in : STD_LOGIC;
  signal p_1_in110_in : STD_LOGIC;
  signal p_1_in112_in : STD_LOGIC;
  signal p_1_in114_in : STD_LOGIC;
  signal p_1_in116_in : STD_LOGIC;
  signal p_1_in118_in : STD_LOGIC;
  signal p_1_in120_in : STD_LOGIC;
  signal p_1_in122_in : STD_LOGIC;
  signal p_1_in124_in : STD_LOGIC;
  signal p_1_in126_in : STD_LOGIC;
  signal p_1_in128_in : STD_LOGIC;
  signal p_1_in130_in : STD_LOGIC;
  signal p_1_in132_in : STD_LOGIC;
  signal p_1_in134_in : STD_LOGIC;
  signal p_1_in136_in : STD_LOGIC;
  signal p_1_in138_in : STD_LOGIC;
  signal p_1_in140_in : STD_LOGIC;
  signal p_1_in142_in : STD_LOGIC;
  signal p_1_in144_in : STD_LOGIC;
  signal p_1_in146_in : STD_LOGIC;
  signal p_1_in148_in : STD_LOGIC;
  signal p_1_in150_in : STD_LOGIC;
  signal p_1_in152_in : STD_LOGIC;
  signal p_1_in154_in : STD_LOGIC;
  signal p_1_in96_in : STD_LOGIC;
  signal p_1_in98_in : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute sigis : string;
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute sigis of s_axi_aresetn : signal is "Rstn";
  attribute BUFFER_TYPE : string;
  attribute BUFFER_TYPE of intr : signal is "none";
begin
  processor_ack_out(1) <= \<const0>\;
  processor_ack_out(0) <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
AXI_LITE_IPIF_I: entity work.bd_deec_axi_intc_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_42,
      Bus_RNW_reg_reg_0 => AXI_LITE_IPIF_I_n_43,
      Bus_RNW_reg_reg_1 => AXI_LITE_IPIF_I_n_44,
      Bus_RNW_reg_reg_10 => AXI_LITE_IPIF_I_n_53,
      Bus_RNW_reg_reg_11 => AXI_LITE_IPIF_I_n_54,
      Bus_RNW_reg_reg_12 => AXI_LITE_IPIF_I_n_55,
      Bus_RNW_reg_reg_13 => AXI_LITE_IPIF_I_n_56,
      Bus_RNW_reg_reg_14 => AXI_LITE_IPIF_I_n_57,
      Bus_RNW_reg_reg_15 => AXI_LITE_IPIF_I_n_58,
      Bus_RNW_reg_reg_16 => AXI_LITE_IPIF_I_n_59,
      Bus_RNW_reg_reg_17 => AXI_LITE_IPIF_I_n_71,
      Bus_RNW_reg_reg_18 => AXI_LITE_IPIF_I_n_72,
      Bus_RNW_reg_reg_19 => AXI_LITE_IPIF_I_n_73,
      Bus_RNW_reg_reg_2 => AXI_LITE_IPIF_I_n_45,
      Bus_RNW_reg_reg_20 => AXI_LITE_IPIF_I_n_74,
      Bus_RNW_reg_reg_21 => AXI_LITE_IPIF_I_n_75,
      Bus_RNW_reg_reg_22 => AXI_LITE_IPIF_I_n_76,
      Bus_RNW_reg_reg_23 => AXI_LITE_IPIF_I_n_77,
      Bus_RNW_reg_reg_24 => AXI_LITE_IPIF_I_n_78,
      Bus_RNW_reg_reg_25 => AXI_LITE_IPIF_I_n_79,
      Bus_RNW_reg_reg_26 => AXI_LITE_IPIF_I_n_80,
      Bus_RNW_reg_reg_27 => AXI_LITE_IPIF_I_n_81,
      Bus_RNW_reg_reg_28 => AXI_LITE_IPIF_I_n_82,
      Bus_RNW_reg_reg_29 => AXI_LITE_IPIF_I_n_83,
      Bus_RNW_reg_reg_3 => AXI_LITE_IPIF_I_n_46,
      Bus_RNW_reg_reg_30 => AXI_LITE_IPIF_I_n_84,
      Bus_RNW_reg_reg_31 => AXI_LITE_IPIF_I_n_85,
      Bus_RNW_reg_reg_32 => AXI_LITE_IPIF_I_n_86,
      Bus_RNW_reg_reg_33 => AXI_LITE_IPIF_I_n_87,
      Bus_RNW_reg_reg_34 => AXI_LITE_IPIF_I_n_88,
      Bus_RNW_reg_reg_35 => AXI_LITE_IPIF_I_n_89,
      Bus_RNW_reg_reg_36 => AXI_LITE_IPIF_I_n_90,
      Bus_RNW_reg_reg_37 => AXI_LITE_IPIF_I_n_91,
      Bus_RNW_reg_reg_38 => AXI_LITE_IPIF_I_n_92,
      Bus_RNW_reg_reg_39 => AXI_LITE_IPIF_I_n_93,
      Bus_RNW_reg_reg_4 => AXI_LITE_IPIF_I_n_47,
      Bus_RNW_reg_reg_40 => AXI_LITE_IPIF_I_n_94,
      Bus_RNW_reg_reg_41 => AXI_LITE_IPIF_I_n_95,
      Bus_RNW_reg_reg_42 => AXI_LITE_IPIF_I_n_96,
      Bus_RNW_reg_reg_43 => AXI_LITE_IPIF_I_n_97,
      Bus_RNW_reg_reg_44 => AXI_LITE_IPIF_I_n_98,
      Bus_RNW_reg_reg_45 => AXI_LITE_IPIF_I_n_99,
      Bus_RNW_reg_reg_46 => AXI_LITE_IPIF_I_n_100,
      Bus_RNW_reg_reg_47 => AXI_LITE_IPIF_I_n_101,
      Bus_RNW_reg_reg_48 => AXI_LITE_IPIF_I_n_102,
      Bus_RNW_reg_reg_5 => AXI_LITE_IPIF_I_n_48,
      Bus_RNW_reg_reg_6 => AXI_LITE_IPIF_I_n_49,
      Bus_RNW_reg_reg_7 => AXI_LITE_IPIF_I_n_50,
      Bus_RNW_reg_reg_8 => AXI_LITE_IPIF_I_n_51,
      Bus_RNW_reg_reg_9 => AXI_LITE_IPIF_I_n_52,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => INTC_CORE_I_n_71,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ => INTC_CORE_I_n_82,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ => INTC_CORE_I_n_85,
      \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]\ => INTC_CORE_I_n_88,
      \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]\ => INTC_CORE_I_n_91,
      \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]\ => INTC_CORE_I_n_94,
      \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]\ => INTC_CORE_I_n_97,
      \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]\ => INTC_CORE_I_n_100,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ => INTC_CORE_I_n_73,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ => INTC_CORE_I_n_76,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ => INTC_CORE_I_n_79,
      D(4 downto 0) => ivr(5 downto 1),
      Or128_vec2stdlogic => Or128_vec2stdlogic,
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q(31 downto 0) => Douta(31 downto 0),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => INTC_CORE_I_n_0,
      \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]\ => INTC_CORE_I_n_18,
      \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]\ => INTC_CORE_I_n_19,
      \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]\ => INTC_CORE_I_n_20,
      \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]\ => INTC_CORE_I_n_32,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => INTC_CORE_I_n_39,
      \bus2ip_addr_i_reg[4]\ => AXI_LITE_IPIF_I_n_68,
      \bus2ip_addr_i_reg[6]\(4 downto 0) => bus2ip_addr(6 downto 2),
      bus2ip_wrce(2) => bus2ip_wrce(16),
      bus2ip_wrce(1) => bus2ip_wrce(10),
      bus2ip_wrce(0) => bus2ip_wrce(2),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_rdack_reg => s_axi_arready,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      ip2bus_wrack_reg => \^s_axi_awready\,
      \mer_int_reg[0]\ => INTC_CORE_I_n_103,
      p_0_in => p_0_in,
      p_0_in101_in => p_0_in101_in,
      p_0_in103_in => p_0_in103_in,
      p_0_in105_in => p_0_in105_in,
      p_0_in107_in => p_0_in107_in,
      p_0_in109_in => p_0_in109_in,
      p_0_in10_in => p_0_in10_in,
      p_0_in111_in => p_0_in111_in,
      p_0_in113_in => p_0_in113_in,
      p_0_in115_in => p_0_in115_in,
      p_0_in117_in => p_0_in117_in,
      p_0_in119_in => p_0_in119_in,
      p_0_in11_in => p_0_in11_in,
      p_0_in121_in => p_0_in121_in,
      p_0_in123_in => p_0_in123_in,
      p_0_in125_in => p_0_in125_in,
      p_0_in127_in => p_0_in127_in,
      p_0_in129_in => p_0_in129_in,
      p_0_in12_in => p_0_in12_in,
      p_0_in131_in => p_0_in131_in,
      p_0_in133_in => p_0_in133_in,
      p_0_in135_in => p_0_in135_in,
      p_0_in137_in => p_0_in137_in,
      p_0_in139_in => p_0_in139_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in141_in => p_0_in141_in,
      p_0_in143_in => p_0_in143_in,
      p_0_in145_in => p_0_in145_in,
      p_0_in147_in => p_0_in147_in,
      p_0_in149_in => p_0_in149_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in151_in => p_0_in151_in,
      p_0_in153_in => p_0_in153_in,
      p_0_in15_in => p_0_in15_in,
      p_0_in16_in => p_0_in16_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in18_in => p_0_in18_in,
      p_0_in19_in => p_0_in19_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in21_in => p_0_in21_in,
      p_0_in22_in => p_0_in22_in,
      p_0_in23_in => p_0_in23_in,
      p_0_in24_in => p_0_in24_in,
      p_0_in25_in => p_0_in25_in,
      p_0_in26_in => p_0_in26_in,
      p_0_in27_in => p_0_in27_in,
      p_0_in28_in => p_0_in28_in,
      p_0_in29_in => p_0_in29_in,
      p_0_in2_in => p_0_in2_in,
      p_0_in30_in => p_0_in30_in,
      p_0_in31_in => p_0_in31_in,
      p_0_in32_in => p_0_in32_in,
      p_0_in33_in => p_0_in33_in,
      p_0_in35_in => p_0_in35_in,
      p_0_in36_in => p_0_in36_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in38_in => p_0_in38_in,
      p_0_in39_in => p_0_in39_in,
      p_0_in3_in => p_0_in3_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in41_in => p_0_in41_in,
      p_0_in42_in => p_0_in42_in,
      p_0_in43_in => p_0_in43_in,
      p_0_in44_in => p_0_in44_in,
      p_0_in45_in => p_0_in45_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in47_in => p_0_in47_in,
      p_0_in48_in => p_0_in48_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in4_in => p_0_in4_in,
      p_0_in50_in => p_0_in50_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in53_in => p_0_in53_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in56_in => p_0_in56_in,
      p_0_in57_in => p_0_in57_in,
      p_0_in58_in => p_0_in58_in,
      p_0_in59_in => p_0_in59_in,
      p_0_in5_in => p_0_in5_in,
      p_0_in60_in => p_0_in60_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in62_in => p_0_in62_in,
      p_0_in63_in => p_0_in63_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in65_in => p_0_in65_in,
      p_0_in68_in => p_0_in68_in,
      p_0_in6_in => p_0_in6_in,
      p_0_in71_in => p_0_in71_in,
      p_0_in74_in => p_0_in74_in,
      p_0_in77_in => p_0_in77_in,
      p_0_in7_in => p_0_in7_in,
      p_0_in80_in => p_0_in80_in,
      p_0_in83_in => p_0_in83_in,
      p_0_in86_in => p_0_in86_in,
      p_0_in89_in => p_0_in89_in,
      p_0_in8_in => p_0_in8_in,
      p_0_in95_in => p_0_in95_in,
      p_0_in97_in => p_0_in97_in,
      p_0_in99_in => p_0_in99_in,
      p_0_in9_in => p_0_in9_in,
      p_0_in_0 => p_0_in_0,
      p_15_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_15_in\,
      p_18_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      p_1_in100_in => p_1_in100_in,
      p_1_in102_in => p_1_in102_in,
      p_1_in104_in => p_1_in104_in,
      p_1_in106_in => p_1_in106_in,
      p_1_in108_in => p_1_in108_in,
      p_1_in110_in => p_1_in110_in,
      p_1_in112_in => p_1_in112_in,
      p_1_in114_in => p_1_in114_in,
      p_1_in116_in => p_1_in116_in,
      p_1_in118_in => p_1_in118_in,
      p_1_in120_in => p_1_in120_in,
      p_1_in122_in => p_1_in122_in,
      p_1_in124_in => p_1_in124_in,
      p_1_in126_in => p_1_in126_in,
      p_1_in128_in => p_1_in128_in,
      p_1_in130_in => p_1_in130_in,
      p_1_in132_in => p_1_in132_in,
      p_1_in134_in => p_1_in134_in,
      p_1_in136_in => p_1_in136_in,
      p_1_in138_in => p_1_in138_in,
      p_1_in140_in => p_1_in140_in,
      p_1_in142_in => p_1_in142_in,
      p_1_in144_in => p_1_in144_in,
      p_1_in146_in => p_1_in146_in,
      p_1_in148_in => p_1_in148_in,
      p_1_in150_in => p_1_in150_in,
      p_1_in152_in => p_1_in152_in,
      p_1_in154_in => p_1_in154_in,
      p_1_in96_in => p_1_in96_in,
      p_1_in98_in => p_1_in98_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => AXI_LITE_IPIF_I_n_7,
      s_axi_aresetn_1 => AXI_LITE_IPIF_I_n_8,
      s_axi_aresetn_10 => AXI_LITE_IPIF_I_n_17,
      s_axi_aresetn_11 => AXI_LITE_IPIF_I_n_18,
      s_axi_aresetn_12 => AXI_LITE_IPIF_I_n_19,
      s_axi_aresetn_13 => AXI_LITE_IPIF_I_n_20,
      s_axi_aresetn_14 => AXI_LITE_IPIF_I_n_21,
      s_axi_aresetn_15 => AXI_LITE_IPIF_I_n_22,
      s_axi_aresetn_16 => AXI_LITE_IPIF_I_n_23,
      s_axi_aresetn_17 => AXI_LITE_IPIF_I_n_24,
      s_axi_aresetn_18 => AXI_LITE_IPIF_I_n_25,
      s_axi_aresetn_19 => AXI_LITE_IPIF_I_n_26,
      s_axi_aresetn_2 => AXI_LITE_IPIF_I_n_9,
      s_axi_aresetn_20 => AXI_LITE_IPIF_I_n_27,
      s_axi_aresetn_21 => AXI_LITE_IPIF_I_n_28,
      s_axi_aresetn_22 => AXI_LITE_IPIF_I_n_29,
      s_axi_aresetn_23 => AXI_LITE_IPIF_I_n_30,
      s_axi_aresetn_24 => AXI_LITE_IPIF_I_n_31,
      s_axi_aresetn_25 => AXI_LITE_IPIF_I_n_32,
      s_axi_aresetn_26 => AXI_LITE_IPIF_I_n_33,
      s_axi_aresetn_27 => AXI_LITE_IPIF_I_n_34,
      s_axi_aresetn_28 => AXI_LITE_IPIF_I_n_35,
      s_axi_aresetn_29 => AXI_LITE_IPIF_I_n_36,
      s_axi_aresetn_3 => AXI_LITE_IPIF_I_n_10,
      s_axi_aresetn_30 => AXI_LITE_IPIF_I_n_37,
      s_axi_aresetn_31 => AXI_LITE_IPIF_I_n_38,
      s_axi_aresetn_4 => AXI_LITE_IPIF_I_n_11,
      s_axi_aresetn_5 => AXI_LITE_IPIF_I_n_12,
      s_axi_aresetn_6 => AXI_LITE_IPIF_I_n_13,
      s_axi_aresetn_7 => AXI_LITE_IPIF_I_n_14,
      s_axi_aresetn_8 => AXI_LITE_IPIF_I_n_15,
      s_axi_aresetn_9 => AXI_LITE_IPIF_I_n_16,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i[6]_i_3\ => INTC_CORE_I_n_165,
      \s_axi_rdata_i_reg[0]\ => INTC_CORE_I_n_166,
      \s_axi_rdata_i_reg[10]\ => INTC_CORE_I_n_11,
      \s_axi_rdata_i_reg[11]\ => INTC_CORE_I_n_12,
      \s_axi_rdata_i_reg[12]\ => INTC_CORE_I_n_13,
      \s_axi_rdata_i_reg[13]\ => INTC_CORE_I_n_14,
      \s_axi_rdata_i_reg[14]\ => INTC_CORE_I_n_15,
      \s_axi_rdata_i_reg[15]\ => INTC_CORE_I_n_16,
      \s_axi_rdata_i_reg[16]\ => INTC_CORE_I_n_17,
      \s_axi_rdata_i_reg[30]\(29 downto 0) => ipr(30 downto 1),
      \s_axi_rdata_i_reg[31]\ => INTC_CORE_I_n_167,
      \s_axi_rdata_i_reg[9]\ => INTC_CORE_I_n_10,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wdata_0_sp_1 => AXI_LITE_IPIF_I_n_69,
      s_axi_wdata_1_sp_1 => AXI_LITE_IPIF_I_n_70,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
INTC_CORE_I: entity work.bd_deec_axi_intc_0_intc_core
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => INTC_CORE_I_n_71,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1\ => AXI_LITE_IPIF_I_n_102,
      \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\ => AXI_LITE_IPIF_I_n_80,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\ => INTC_CORE_I_n_82,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_1\ => AXI_LITE_IPIF_I_n_81,
      \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ => AXI_LITE_IPIF_I_n_82,
      \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0\ => AXI_LITE_IPIF_I_n_83,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0\ => INTC_CORE_I_n_85,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_1\ => AXI_LITE_IPIF_I_n_84,
      \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ => AXI_LITE_IPIF_I_n_85,
      \CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]_0\ => AXI_LITE_IPIF_I_n_86,
      \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_0\ => INTC_CORE_I_n_88,
      \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_1\ => AXI_LITE_IPIF_I_n_87,
      \CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]_0\ => AXI_LITE_IPIF_I_n_88,
      \CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]_0\ => AXI_LITE_IPIF_I_n_89,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\ => AXI_LITE_IPIF_I_n_71,
      \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_0\ => INTC_CORE_I_n_91,
      \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_1\ => AXI_LITE_IPIF_I_n_90,
      \CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]_0\ => AXI_LITE_IPIF_I_n_91,
      \CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]_0\ => AXI_LITE_IPIF_I_n_92,
      \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_0\ => INTC_CORE_I_n_94,
      \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_1\ => AXI_LITE_IPIF_I_n_93,
      \CIE_GEN.CIE_BIT_GEN[24].cie_reg[24]_0\ => AXI_LITE_IPIF_I_n_94,
      \CIE_GEN.CIE_BIT_GEN[25].cie_reg[25]_0\ => AXI_LITE_IPIF_I_n_95,
      \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]_0\ => INTC_CORE_I_n_97,
      \CIE_GEN.CIE_BIT_GEN[26].cie_reg[26]_1\ => AXI_LITE_IPIF_I_n_96,
      \CIE_GEN.CIE_BIT_GEN[27].cie_reg[27]_0\ => AXI_LITE_IPIF_I_n_97,
      \CIE_GEN.CIE_BIT_GEN[28].cie_reg[28]_0\ => AXI_LITE_IPIF_I_n_98,
      \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]_0\ => INTC_CORE_I_n_100,
      \CIE_GEN.CIE_BIT_GEN[29].cie_reg[29]_1\ => AXI_LITE_IPIF_I_n_99,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\ => INTC_CORE_I_n_73,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_1\ => AXI_LITE_IPIF_I_n_72,
      \CIE_GEN.CIE_BIT_GEN[30].cie_reg[30]_0\ => AXI_LITE_IPIF_I_n_100,
      \CIE_GEN.CIE_BIT_GEN[31].cie_reg[31]_0\ => AXI_LITE_IPIF_I_n_101,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ => AXI_LITE_IPIF_I_n_73,
      \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\ => AXI_LITE_IPIF_I_n_74,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\ => INTC_CORE_I_n_76,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_1\ => AXI_LITE_IPIF_I_n_75,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ => AXI_LITE_IPIF_I_n_76,
      \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\ => AXI_LITE_IPIF_I_n_77,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\ => INTC_CORE_I_n_79,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_1\ => AXI_LITE_IPIF_I_n_78,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ => AXI_LITE_IPIF_I_n_79,
      D(4 downto 0) => ivr(5 downto 1),
      Douta(31 downto 0) => Douta(31 downto 0),
      \IVR_GEN.ivr_reg[0]_0\ => INTC_CORE_I_n_166,
      \IVR_GEN.ivr_reg[4]_0\ => INTC_CORE_I_n_165,
      Q(29 downto 0) => ipr(30 downto 1),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\ => AXI_LITE_IPIF_I_n_59,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ => INTC_CORE_I_n_0,
      \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0\ => INTC_CORE_I_n_11,
      \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\ => INTC_CORE_I_n_12,
      \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0\ => INTC_CORE_I_n_13,
      \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0\ => INTC_CORE_I_n_14,
      \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0\ => INTC_CORE_I_n_15,
      \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\ => INTC_CORE_I_n_16,
      \REG_GEN[16].IMR_FAST_MODE_GEN.imr_reg[16]_0\ => INTC_CORE_I_n_17,
      \REG_GEN[17].IAR_FAST_MODE_GEN.iar_reg[17]_0\ => AXI_LITE_IPIF_I_n_56,
      \REG_GEN[17].IMR_FAST_MODE_GEN.imr_reg[17]_0\ => INTC_CORE_I_n_18,
      \REG_GEN[18].IAR_FAST_MODE_GEN.iar_reg[18]_0\ => AXI_LITE_IPIF_I_n_55,
      \REG_GEN[18].IMR_FAST_MODE_GEN.imr_reg[18]_0\ => INTC_CORE_I_n_19,
      \REG_GEN[19].IAR_FAST_MODE_GEN.iar_reg[19]_0\ => AXI_LITE_IPIF_I_n_54,
      \REG_GEN[19].IMR_FAST_MODE_GEN.imr_reg[19]_0\ => INTC_CORE_I_n_20,
      \REG_GEN[20].IAR_FAST_MODE_GEN.iar_reg[20]_0\ => AXI_LITE_IPIF_I_n_53,
      \REG_GEN[21].IAR_FAST_MODE_GEN.iar_reg[21]_0\ => AXI_LITE_IPIF_I_n_52,
      \REG_GEN[22].IAR_FAST_MODE_GEN.iar_reg[22]_0\ => AXI_LITE_IPIF_I_n_51,
      \REG_GEN[23].IAR_FAST_MODE_GEN.iar_reg[23]_0\ => AXI_LITE_IPIF_I_n_50,
      \REG_GEN[24].IAR_FAST_MODE_GEN.iar_reg[24]_0\ => AXI_LITE_IPIF_I_n_49,
      \REG_GEN[25].IAR_FAST_MODE_GEN.iar_reg[25]_0\ => AXI_LITE_IPIF_I_n_48,
      \REG_GEN[26].IAR_FAST_MODE_GEN.iar_reg[26]_0\ => AXI_LITE_IPIF_I_n_47,
      \REG_GEN[27].IAR_FAST_MODE_GEN.iar_reg[27]_0\ => AXI_LITE_IPIF_I_n_46,
      \REG_GEN[28].IAR_FAST_MODE_GEN.iar_reg[28]_0\ => AXI_LITE_IPIF_I_n_45,
      \REG_GEN[29].IAR_FAST_MODE_GEN.iar_reg[29]_0\ => AXI_LITE_IPIF_I_n_44,
      \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0\ => AXI_LITE_IPIF_I_n_58,
      \REG_GEN[30].IAR_FAST_MODE_GEN.iar_reg[30]_0\ => AXI_LITE_IPIF_I_n_43,
      \REG_GEN[31].IAR_FAST_MODE_GEN.iar_reg[31]_0\ => AXI_LITE_IPIF_I_n_42,
      \REG_GEN[31].IMR_FAST_MODE_GEN.imr_reg[31]_0\ => INTC_CORE_I_n_32,
      \REG_GEN[31].isr_reg[31]_0\ => INTC_CORE_I_n_167,
      \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0\ => AXI_LITE_IPIF_I_n_57,
      \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\ => INTC_CORE_I_n_10,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ => INTC_CORE_I_n_39,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\ => AXI_LITE_IPIF_I_n_7,
      \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0\ => AXI_LITE_IPIF_I_n_17,
      \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0\ => AXI_LITE_IPIF_I_n_18,
      \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]_0\ => AXI_LITE_IPIF_I_n_19,
      \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]_0\ => AXI_LITE_IPIF_I_n_20,
      \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]_0\ => AXI_LITE_IPIF_I_n_21,
      \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]_0\ => AXI_LITE_IPIF_I_n_22,
      \SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]_0\ => AXI_LITE_IPIF_I_n_23,
      \SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]_0\ => AXI_LITE_IPIF_I_n_24,
      \SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]_0\ => AXI_LITE_IPIF_I_n_25,
      \SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]_0\ => AXI_LITE_IPIF_I_n_26,
      \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0\ => AXI_LITE_IPIF_I_n_8,
      \SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]_0\ => AXI_LITE_IPIF_I_n_27,
      \SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]_0\ => AXI_LITE_IPIF_I_n_28,
      \SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]_0\ => AXI_LITE_IPIF_I_n_29,
      \SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]_0\ => AXI_LITE_IPIF_I_n_30,
      \SIE_GEN.SIE_BIT_GEN[24].sie_reg[24]_0\ => AXI_LITE_IPIF_I_n_31,
      \SIE_GEN.SIE_BIT_GEN[25].sie_reg[25]_0\ => AXI_LITE_IPIF_I_n_32,
      \SIE_GEN.SIE_BIT_GEN[26].sie_reg[26]_0\ => AXI_LITE_IPIF_I_n_33,
      \SIE_GEN.SIE_BIT_GEN[27].sie_reg[27]_0\ => AXI_LITE_IPIF_I_n_34,
      \SIE_GEN.SIE_BIT_GEN[28].sie_reg[28]_0\ => AXI_LITE_IPIF_I_n_35,
      \SIE_GEN.SIE_BIT_GEN[29].sie_reg[29]_0\ => AXI_LITE_IPIF_I_n_36,
      \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0\ => AXI_LITE_IPIF_I_n_9,
      \SIE_GEN.SIE_BIT_GEN[30].sie_reg[30]_0\ => AXI_LITE_IPIF_I_n_37,
      \SIE_GEN.SIE_BIT_GEN[31].sie_reg[31]_0\ => AXI_LITE_IPIF_I_n_38,
      \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0\ => AXI_LITE_IPIF_I_n_10,
      \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0\ => AXI_LITE_IPIF_I_n_11,
      \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0\ => AXI_LITE_IPIF_I_n_12,
      \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0\ => AXI_LITE_IPIF_I_n_13,
      \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0\ => AXI_LITE_IPIF_I_n_14,
      \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0\ => AXI_LITE_IPIF_I_n_15,
      \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0\ => AXI_LITE_IPIF_I_n_16,
      bus2ip_wrce(2) => bus2ip_wrce(16),
      bus2ip_wrce(1) => bus2ip_wrce(10),
      bus2ip_wrce(0) => bus2ip_wrce(2),
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      intr(16 downto 0) => intr(16 downto 0),
      irq => irq,
      \mer_int_reg[0]_0\ => INTC_CORE_I_n_103,
      \mer_int_reg[0]_1\ => AXI_LITE_IPIF_I_n_69,
      \mer_int_reg[1]_0\ => AXI_LITE_IPIF_I_n_70,
      p_0_in => p_0_in,
      p_0_in101_in => p_0_in101_in,
      p_0_in103_in => p_0_in103_in,
      p_0_in105_in => p_0_in105_in,
      p_0_in107_in => p_0_in107_in,
      p_0_in109_in => p_0_in109_in,
      p_0_in10_in => p_0_in10_in,
      p_0_in111_in => p_0_in111_in,
      p_0_in113_in => p_0_in113_in,
      p_0_in115_in => p_0_in115_in,
      p_0_in117_in => p_0_in117_in,
      p_0_in119_in => p_0_in119_in,
      p_0_in11_in => p_0_in11_in,
      p_0_in121_in => p_0_in121_in,
      p_0_in123_in => p_0_in123_in,
      p_0_in125_in => p_0_in125_in,
      p_0_in127_in => p_0_in127_in,
      p_0_in129_in => p_0_in129_in,
      p_0_in12_in => p_0_in12_in,
      p_0_in131_in => p_0_in131_in,
      p_0_in133_in => p_0_in133_in,
      p_0_in135_in => p_0_in135_in,
      p_0_in137_in => p_0_in137_in,
      p_0_in139_in => p_0_in139_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in141_in => p_0_in141_in,
      p_0_in143_in => p_0_in143_in,
      p_0_in145_in => p_0_in145_in,
      p_0_in147_in => p_0_in147_in,
      p_0_in149_in => p_0_in149_in,
      p_0_in14_in => p_0_in14_in,
      p_0_in151_in => p_0_in151_in,
      p_0_in153_in => p_0_in153_in,
      p_0_in15_in => p_0_in15_in,
      p_0_in16_in => p_0_in16_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in18_in => p_0_in18_in,
      p_0_in19_in => p_0_in19_in,
      p_0_in20_in => p_0_in20_in,
      p_0_in21_in => p_0_in21_in,
      p_0_in22_in => p_0_in22_in,
      p_0_in23_in => p_0_in23_in,
      p_0_in24_in => p_0_in24_in,
      p_0_in25_in => p_0_in25_in,
      p_0_in26_in => p_0_in26_in,
      p_0_in27_in => p_0_in27_in,
      p_0_in28_in => p_0_in28_in,
      p_0_in29_in => p_0_in29_in,
      p_0_in2_in => p_0_in2_in,
      p_0_in30_in => p_0_in30_in,
      p_0_in31_in => p_0_in31_in,
      p_0_in32_in => p_0_in32_in,
      p_0_in33_in => p_0_in33_in,
      p_0_in35_in => p_0_in35_in,
      p_0_in36_in => p_0_in36_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in38_in => p_0_in38_in,
      p_0_in39_in => p_0_in39_in,
      p_0_in3_in => p_0_in3_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in41_in => p_0_in41_in,
      p_0_in42_in => p_0_in42_in,
      p_0_in43_in => p_0_in43_in,
      p_0_in44_in => p_0_in44_in,
      p_0_in45_in => p_0_in45_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in47_in => p_0_in47_in,
      p_0_in48_in => p_0_in48_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in4_in => p_0_in4_in,
      p_0_in50_in => p_0_in50_in,
      p_0_in51_in => p_0_in51_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in53_in => p_0_in53_in,
      p_0_in54_in => p_0_in54_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in56_in => p_0_in56_in,
      p_0_in57_in => p_0_in57_in,
      p_0_in58_in => p_0_in58_in,
      p_0_in59_in => p_0_in59_in,
      p_0_in5_in => p_0_in5_in,
      p_0_in60_in => p_0_in60_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in62_in => p_0_in62_in,
      p_0_in63_in => p_0_in63_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in65_in => p_0_in65_in,
      p_0_in68_in => p_0_in68_in,
      p_0_in6_in => p_0_in6_in,
      p_0_in71_in => p_0_in71_in,
      p_0_in74_in => p_0_in74_in,
      p_0_in77_in => p_0_in77_in,
      p_0_in7_in => p_0_in7_in,
      p_0_in80_in => p_0_in80_in,
      p_0_in83_in => p_0_in83_in,
      p_0_in86_in => p_0_in86_in,
      p_0_in89_in => p_0_in89_in,
      p_0_in8_in => p_0_in8_in,
      p_0_in95_in => p_0_in95_in,
      p_0_in97_in => p_0_in97_in,
      p_0_in99_in => p_0_in99_in,
      p_0_in9_in => p_0_in9_in,
      p_0_in_0 => p_0_in_0,
      p_15_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_15_in\,
      p_18_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      p_1_in100_in => p_1_in100_in,
      p_1_in102_in => p_1_in102_in,
      p_1_in104_in => p_1_in104_in,
      p_1_in106_in => p_1_in106_in,
      p_1_in108_in => p_1_in108_in,
      p_1_in110_in => p_1_in110_in,
      p_1_in112_in => p_1_in112_in,
      p_1_in114_in => p_1_in114_in,
      p_1_in116_in => p_1_in116_in,
      p_1_in118_in => p_1_in118_in,
      p_1_in120_in => p_1_in120_in,
      p_1_in122_in => p_1_in122_in,
      p_1_in124_in => p_1_in124_in,
      p_1_in126_in => p_1_in126_in,
      p_1_in128_in => p_1_in128_in,
      p_1_in130_in => p_1_in130_in,
      p_1_in132_in => p_1_in132_in,
      p_1_in134_in => p_1_in134_in,
      p_1_in136_in => p_1_in136_in,
      p_1_in138_in => p_1_in138_in,
      p_1_in140_in => p_1_in140_in,
      p_1_in142_in => p_1_in142_in,
      p_1_in144_in => p_1_in144_in,
      p_1_in146_in => p_1_in146_in,
      p_1_in148_in => p_1_in148_in,
      p_1_in150_in => p_1_in150_in,
      p_1_in152_in => p_1_in152_in,
      p_1_in154_in => p_1_in154_in,
      p_1_in96_in => p_1_in96_in,
      p_1_in98_in => p_1_in98_in,
      processor_ack(1 downto 0) => processor_ack(1 downto 0),
      \ram_i[0].Doutb_reg[0]\(4 downto 0) => bus2ip_addr(6 downto 2),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \s_axi_rdata_i_reg[31]\ => AXI_LITE_IPIF_I_n_68,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
ip2bus_rdack_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Or128_vec2stdlogic19_out,
      Q => ip2bus_rdack_int_d1,
      R => p_0_in
    );
ip2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_prev2,
      Q => ip2bus_rdack,
      R => p_0_in
    );
ip2bus_wrack_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Or128_vec2stdlogic,
      Q => ip2bus_wrack_int_d1,
      R => p_0_in
    );
ip2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_prev2,
      Q => ip2bus_wrack,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_axi_intc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_deec_axi_intc_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_deec_axi_intc_0 : entity is "bd_deec_axi_intc_0,axi_intc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_deec_axi_intc_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bd_deec_axi_intc_0 : entity is "axi_intc,Vivado 2019.2";
end bd_deec_axi_intc_0;

architecture STRUCTURE of bd_deec_axi_intc_0 is
  signal NLW_U0_processor_ack_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of U0 : label is 32;
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of U0 : label is 32768;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of U0 : label is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of U0 : label is 1;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of U0 : label is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtexuplus";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of U0 : label is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of U0 : label is 1;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of U0 : label is 0;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of U0 : label is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of U0 : label is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of U0 : label is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "bd_deec_axi_intc_0";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of U0 : label is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of U0 : label is 1;
  attribute C_IVAR_RESET_VALUE : string;
  attribute C_IVAR_RESET_VALUE of U0 : label is "64'b0000000000000000000000000000000011110000000000000000000000010000";
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of U0 : label is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of U0 : label is 576;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of U0 : label is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of U0 : label is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of U0 : label is 17;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of U0 : label is 15;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of U0 : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute hdl : string;
  attribute hdl of U0 : label is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of U0 : label is "TRUE";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute iptype : string;
  attribute iptype of U0 : label is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of U0 : label is "TRUE";
  attribute style : string;
  attribute style of U0 : label is "HDL";
  attribute x_interface_info : string;
  attribute x_interface_info of irq : signal is "xilinx.com:interface:mbinterrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of irq : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 1";
  attribute x_interface_info of processor_clk : signal is "xilinx.com:signal:clock:1.0 proc_clock CLK";
  attribute x_interface_parameter of processor_clk : signal is "XIL_INTERFACENAME proc_clock, ASSOCIATED_BUSIF interrupt, ASSOCIATED_RESET processor_rst, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, INSERT_VIP 0";
  attribute x_interface_info of processor_rst : signal is "xilinx.com:signal:reset:1.0 proc_reset RST";
  attribute x_interface_parameter of processor_rst : signal is "XIL_INTERFACENAME proc_reset, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_resetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of interrupt_address : signal is "xilinx.com:interface:mbinterrupt:1.0 interrupt ADDRESS";
  attribute x_interface_info of intr : signal is "xilinx.com:signal:interrupt:1.0 interrupt_input INTERRUPT";
  attribute x_interface_parameter of intr : signal is "XIL_INTERFACENAME interrupt_input, SENSITIVITY NULL:NULL:NULL:NULL:LEVEL_HIGH:LEVEL_HIGH:LEVEL_HIGH:NULL:NULL:NULL:EDGE_RISING:NULL:NULL:NULL:NULL:NULL:NULL, PortWidth 17";
  attribute x_interface_info of processor_ack : signal is "xilinx.com:interface:mbinterrupt:1.0 interrupt ACK";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
U0: entity work.bd_deec_axi_intc_0_axi_intc
     port map (
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      interrupt_address_in(31 downto 0) => B"00000000000000000000000000000000",
      intr(16 downto 0) => intr(16 downto 0),
      irq => irq,
      irq_in => '0',
      processor_ack(1 downto 0) => processor_ack(1 downto 0),
      processor_ack_out(1 downto 0) => NLW_U0_processor_ack_out_UNCONNECTED(1 downto 0),
      processor_clk => processor_clk,
      processor_rst => processor_rst,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
