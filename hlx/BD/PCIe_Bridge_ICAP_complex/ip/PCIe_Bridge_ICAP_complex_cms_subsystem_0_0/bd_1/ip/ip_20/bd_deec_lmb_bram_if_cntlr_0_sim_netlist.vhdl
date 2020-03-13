-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Feb 28 12:21:55 2020
-- Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v12_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2019_2/hlx/BD/PCIe_Bridge_ICAP_complex/ip/PCIe_Bridge_ICAP_complex_cms_subsystem_0_0/bd_1/ip/ip_20/bd_deec_lmb_bram_if_cntlr_0_sim_netlist.vhdl
-- Design      : bd_deec_lmb_bram_if_cntlr_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu200-fsgd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_lmb_bram_if_cntlr_0_lmb_mux is
  port (
    Sl_Ready : out STD_LOGIC;
    BRAM_EN_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    lmb_select : out STD_LOGIC;
    Sl1_Ready : out STD_LOGIC;
    Sl1_Wait : out STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    LMB1_AddrStrobe : in STD_LOGIC;
    LMB1_WriteStrobe : in STD_LOGIC;
    Sl_Rdy : in STD_LOGIC;
    lmb_as : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB1_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_WriteStrobe : in STD_LOGIC;
    LMB1_BE : in STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_lmb_bram_if_cntlr_0_lmb_mux : entity is "lmb_mux";
end bd_deec_lmb_bram_if_cntlr_0_lmb_mux;

architecture STRUCTURE of bd_deec_lmb_bram_if_cntlr_0_lmb_mux is
  signal \LMB_BE_vec_i[1]\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \LMB_WriteStrobe_vec_i__1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^lmb_select\ : STD_LOGIC;
  signal \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \more_than_one_lmb.lmb_mux_generate[1].LMB_AddrStrobe_vec_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteStrobe_vec_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1_n_0\ : STD_LOGIC;
  signal \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\ : STD_LOGIC;
  signal ongoing_Q : STD_LOGIC;
  signal ongoing_new : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_WEN_A[0]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \BRAM_WEN_A[0]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \BRAM_WEN_A[0]_INST_0_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \BRAM_WEN_A[1]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \BRAM_WEN_A[2]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \BRAM_WEN_A[3]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of Sl1_Ready_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Sl1_Wait_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Sl_Ready_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1\ : label is "soft_lutpair0";
begin
  lmb_select <= \^lmb_select\;
\BRAM_Addr_A[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(0),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(31),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(0),
      I4 => ongoing_new,
      O => BRAM_Addr_A(0)
    );
\BRAM_Addr_A[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEA00EA"
    )
        port map (
      I0 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I1 => LMB1_ABus(3),
      I2 => LMB1_AddrStrobe,
      I3 => LMB_AddrStrobe,
      I4 => LMB_ABus(11),
      O => ongoing_new
    );
\BRAM_Addr_A[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(10),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(21),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(10),
      I4 => ongoing_new,
      O => BRAM_Addr_A(10)
    );
\BRAM_Addr_A[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(11),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(20),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(11),
      I4 => ongoing_new,
      O => BRAM_Addr_A(11)
    );
\BRAM_Addr_A[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(12),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(19),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(12),
      I4 => ongoing_new,
      O => BRAM_Addr_A(12)
    );
\BRAM_Addr_A[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(13),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(18),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(13),
      I4 => ongoing_new,
      O => BRAM_Addr_A(13)
    );
\BRAM_Addr_A[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(14),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(17),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(14),
      I4 => ongoing_new,
      O => BRAM_Addr_A(14)
    );
\BRAM_Addr_A[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(15),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(16),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(15),
      I4 => ongoing_new,
      O => BRAM_Addr_A(15)
    );
\BRAM_Addr_A[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(16),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(15),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(16),
      I4 => ongoing_new,
      O => BRAM_Addr_A(16)
    );
\BRAM_Addr_A[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(17),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(14),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(17),
      I4 => ongoing_new,
      O => BRAM_Addr_A(17)
    );
\BRAM_Addr_A[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(18),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(13),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(18),
      I4 => ongoing_new,
      O => BRAM_Addr_A(18)
    );
\BRAM_Addr_A[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(19),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(12),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(19),
      I4 => ongoing_new,
      O => BRAM_Addr_A(19)
    );
\BRAM_Addr_A[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(1),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(30),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(1),
      I4 => ongoing_new,
      O => BRAM_Addr_A(1)
    );
\BRAM_Addr_A[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(20),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(11),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(20),
      I4 => ongoing_new,
      O => BRAM_Addr_A(20)
    );
\BRAM_Addr_A[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(21),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(10),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(21),
      I4 => ongoing_new,
      O => BRAM_Addr_A(21)
    );
\BRAM_Addr_A[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(22),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(9),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(22),
      I4 => ongoing_new,
      O => BRAM_Addr_A(22)
    );
\BRAM_Addr_A[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(23),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(8),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(23),
      I4 => ongoing_new,
      O => BRAM_Addr_A(23)
    );
\BRAM_Addr_A[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(24),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(7),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(24),
      I4 => ongoing_new,
      O => BRAM_Addr_A(24)
    );
\BRAM_Addr_A[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(25),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(6),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(25),
      I4 => ongoing_new,
      O => BRAM_Addr_A(25)
    );
\BRAM_Addr_A[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(26),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(5),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(26),
      I4 => ongoing_new,
      O => BRAM_Addr_A(26)
    );
\BRAM_Addr_A[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(27),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(4),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(27),
      I4 => ongoing_new,
      O => BRAM_Addr_A(27)
    );
\BRAM_Addr_A[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(28),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(3),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(28),
      I4 => ongoing_new,
      O => BRAM_Addr_A(28)
    );
\BRAM_Addr_A[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(29),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(2),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(29),
      I4 => ongoing_new,
      O => BRAM_Addr_A(29)
    );
\BRAM_Addr_A[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(2),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(29),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(2),
      I4 => ongoing_new,
      O => BRAM_Addr_A(2)
    );
\BRAM_Addr_A[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(30),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(1),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(30),
      I4 => ongoing_new,
      O => BRAM_Addr_A(30)
    );
\BRAM_Addr_A[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(31),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(0),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(31),
      I4 => ongoing_new,
      O => BRAM_Addr_A(31)
    );
\BRAM_Addr_A[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(3),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(28),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(3),
      I4 => ongoing_new,
      O => BRAM_Addr_A(3)
    );
\BRAM_Addr_A[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(4),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(27),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(4),
      I4 => ongoing_new,
      O => BRAM_Addr_A(4)
    );
\BRAM_Addr_A[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(5),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(26),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(5),
      I4 => ongoing_new,
      O => BRAM_Addr_A(5)
    );
\BRAM_Addr_A[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(6),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(25),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(6),
      I4 => ongoing_new,
      O => BRAM_Addr_A(6)
    );
\BRAM_Addr_A[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(7),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(24),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(7),
      I4 => ongoing_new,
      O => BRAM_Addr_A(7)
    );
\BRAM_Addr_A[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(8),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(23),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(8),
      I4 => ongoing_new,
      O => BRAM_Addr_A(8)
    );
\BRAM_Addr_A[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_ABus(9),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(22),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_ABus(9),
      I4 => ongoing_new,
      O => BRAM_Addr_A(9)
    );
\BRAM_Dout_A[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(0),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(31),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(0),
      I4 => ongoing_new,
      O => BRAM_Dout_A(0)
    );
\BRAM_Dout_A[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(10),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(21),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(10),
      I4 => ongoing_new,
      O => BRAM_Dout_A(10)
    );
\BRAM_Dout_A[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(11),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(20),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(11),
      I4 => ongoing_new,
      O => BRAM_Dout_A(11)
    );
\BRAM_Dout_A[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(12),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(19),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(12),
      I4 => ongoing_new,
      O => BRAM_Dout_A(12)
    );
\BRAM_Dout_A[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(13),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(18),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(13),
      I4 => ongoing_new,
      O => BRAM_Dout_A(13)
    );
\BRAM_Dout_A[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(14),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(17),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(14),
      I4 => ongoing_new,
      O => BRAM_Dout_A(14)
    );
\BRAM_Dout_A[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(15),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(16),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(15),
      I4 => ongoing_new,
      O => BRAM_Dout_A(15)
    );
\BRAM_Dout_A[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(16),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(15),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(16),
      I4 => ongoing_new,
      O => BRAM_Dout_A(16)
    );
\BRAM_Dout_A[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(17),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(14),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(17),
      I4 => ongoing_new,
      O => BRAM_Dout_A(17)
    );
\BRAM_Dout_A[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(18),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(13),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(18),
      I4 => ongoing_new,
      O => BRAM_Dout_A(18)
    );
\BRAM_Dout_A[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(19),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(12),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(19),
      I4 => ongoing_new,
      O => BRAM_Dout_A(19)
    );
\BRAM_Dout_A[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(1),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(30),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(1),
      I4 => ongoing_new,
      O => BRAM_Dout_A(1)
    );
\BRAM_Dout_A[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(20),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(11),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(20),
      I4 => ongoing_new,
      O => BRAM_Dout_A(20)
    );
\BRAM_Dout_A[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(21),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(10),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(21),
      I4 => ongoing_new,
      O => BRAM_Dout_A(21)
    );
\BRAM_Dout_A[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(22),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(9),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(22),
      I4 => ongoing_new,
      O => BRAM_Dout_A(22)
    );
\BRAM_Dout_A[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(23),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(8),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(23),
      I4 => ongoing_new,
      O => BRAM_Dout_A(23)
    );
\BRAM_Dout_A[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(24),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(7),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(24),
      I4 => ongoing_new,
      O => BRAM_Dout_A(24)
    );
\BRAM_Dout_A[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(25),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(6),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(25),
      I4 => ongoing_new,
      O => BRAM_Dout_A(25)
    );
\BRAM_Dout_A[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(26),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(5),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(26),
      I4 => ongoing_new,
      O => BRAM_Dout_A(26)
    );
\BRAM_Dout_A[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(27),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(4),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(27),
      I4 => ongoing_new,
      O => BRAM_Dout_A(27)
    );
\BRAM_Dout_A[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(28),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(3),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(28),
      I4 => ongoing_new,
      O => BRAM_Dout_A(28)
    );
\BRAM_Dout_A[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(29),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(2),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(29),
      I4 => ongoing_new,
      O => BRAM_Dout_A(29)
    );
\BRAM_Dout_A[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(2),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(29),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(2),
      I4 => ongoing_new,
      O => BRAM_Dout_A(2)
    );
\BRAM_Dout_A[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(30),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(1),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(30),
      I4 => ongoing_new,
      O => BRAM_Dout_A(30)
    );
\BRAM_Dout_A[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(31),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(0),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(31),
      I4 => ongoing_new,
      O => BRAM_Dout_A(31)
    );
\BRAM_Dout_A[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(3),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(28),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(3),
      I4 => ongoing_new,
      O => BRAM_Dout_A(3)
    );
\BRAM_Dout_A[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(4),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(27),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(4),
      I4 => ongoing_new,
      O => BRAM_Dout_A(4)
    );
\BRAM_Dout_A[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(5),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(26),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(5),
      I4 => ongoing_new,
      O => BRAM_Dout_A(5)
    );
\BRAM_Dout_A[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(6),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(25),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(6),
      I4 => ongoing_new,
      O => BRAM_Dout_A(6)
    );
\BRAM_Dout_A[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(7),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(24),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(7),
      I4 => ongoing_new,
      O => BRAM_Dout_A(7)
    );
\BRAM_Dout_A[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(8),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(23),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(8),
      I4 => ongoing_new,
      O => BRAM_Dout_A(8)
    );
\BRAM_Dout_A[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_WriteDBus(9),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(22),
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_WriteDBus(9),
      I4 => ongoing_new,
      O => BRAM_Dout_A(9)
    );
BRAM_EN_A_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0AAAA"
    )
        port map (
      I0 => LMB_AddrStrobe,
      I1 => \more_than_one_lmb.lmb_mux_generate[1].LMB_AddrStrobe_vec_Q_reg_n_0_[1]\,
      I2 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I3 => LMB1_AddrStrobe,
      I4 => ongoing_new,
      O => BRAM_EN_A
    );
\BRAM_WEN_A[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000880000008800"
    )
        port map (
      I0 => LMB_BE(0),
      I1 => LMB_WriteStrobe,
      I2 => \LMB_WriteStrobe_vec_i__1\(1),
      I3 => \^lmb_select\,
      I4 => ongoing_new,
      I5 => \LMB_BE_vec_i[1]\(0),
      O => BRAM_WEN_A(0)
    );
\BRAM_WEN_A[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteStrobe_vec_Q_reg_n_0_[1]\,
      I1 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I2 => LMB1_WriteStrobe,
      O => \LMB_WriteStrobe_vec_i__1\(1)
    );
\BRAM_WEN_A[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD5"
    )
        port map (
      I0 => LMB_ABus(11),
      I1 => LMB1_AddrStrobe,
      I2 => LMB1_ABus(3),
      I3 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      O => \^lmb_select\
    );
\BRAM_WEN_A[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\(3),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I2 => LMB1_BE(0),
      O => \LMB_BE_vec_i[1]\(0)
    );
\BRAM_WEN_A[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000880000008800"
    )
        port map (
      I0 => LMB_BE(1),
      I1 => LMB_WriteStrobe,
      I2 => \LMB_WriteStrobe_vec_i__1\(1),
      I3 => \^lmb_select\,
      I4 => ongoing_new,
      I5 => \LMB_BE_vec_i[1]\(1),
      O => BRAM_WEN_A(1)
    );
\BRAM_WEN_A[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\(2),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I2 => LMB1_BE(1),
      O => \LMB_BE_vec_i[1]\(1)
    );
\BRAM_WEN_A[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000880000008800"
    )
        port map (
      I0 => LMB_BE(2),
      I1 => LMB_WriteStrobe,
      I2 => \LMB_WriteStrobe_vec_i__1\(1),
      I3 => \^lmb_select\,
      I4 => ongoing_new,
      I5 => \LMB_BE_vec_i[1]\(2),
      O => BRAM_WEN_A(2)
    );
\BRAM_WEN_A[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\(1),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I2 => LMB1_BE(2),
      O => \LMB_BE_vec_i[1]\(2)
    );
\BRAM_WEN_A[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000880000008800"
    )
        port map (
      I0 => LMB_BE(3),
      I1 => LMB_WriteStrobe,
      I2 => \LMB_WriteStrobe_vec_i__1\(1),
      I3 => \^lmb_select\,
      I4 => ongoing_new,
      I5 => \LMB_BE_vec_i[1]\(3),
      O => BRAM_WEN_A(3)
    );
\BRAM_WEN_A[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\(0),
      I1 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I2 => LMB1_BE(3),
      O => \LMB_BE_vec_i[1]\(3)
    );
Sl1_Ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ongoing_Q,
      I1 => Sl_Rdy,
      I2 => lmb_as,
      O => Sl1_Ready
    );
Sl1_Wait_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I1 => ongoing_Q,
      O => Sl1_Wait
    );
Sl_Ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Sl_Rdy,
      I1 => lmb_as,
      I2 => ongoing_Q,
      O => Sl_Ready
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => LMB_ABus(11),
      I1 => LMB_AddrStrobe,
      I2 => LMB1_AddrStrobe,
      I3 => LMB1_ABus(3),
      O => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(0),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(31),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(10),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(21),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(11),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(20),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(12),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(19),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(13),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(18),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(14),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(17),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(15),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(16),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(16),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(15),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(17),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(14),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(18),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(13),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(19),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(12),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(1),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(30),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(20),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(11),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(21),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(10),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(22),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(9),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(23),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(8),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(24),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(7),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(25),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(6),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(26),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(5),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(27),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(4),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(28),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(3),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(29),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(2),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(2),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(29),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(30),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(1),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(31),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(0),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(3),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(28),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(4),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(27),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(5),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(26),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(6),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(25),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(7),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(24),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(8),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(23),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_ABus(9),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q_reg[1]\(22),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_AddrStrobe_vec_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_AddrStrobe,
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_AddrStrobe_vec_Q_reg_n_0_[1]\,
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_BE(0),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\(3),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_BE(1),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\(2),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_BE(2),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\(1),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_BE(3),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_BE_vec_Q_reg[1]\(0),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(0),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(31),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(10),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(21),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(11),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(20),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(12),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(19),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(13),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(18),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(14),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(17),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(15),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(16),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(16),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(15),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(17),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(14),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(18),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(13),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(19),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(12),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(1),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(30),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(20),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(11),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(21),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(10),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(22),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(9),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(23),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(8),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(24),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(7),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(25),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(6),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(26),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(5),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(27),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(4),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(28),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(3),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(29),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(2),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(2),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(29),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(30),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(1),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(31),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(0),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(3),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(28),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(4),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(27),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(5),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(26),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(6),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(25),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(7),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(24),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(8),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(23),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteDBus(9),
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteDBus_vec_Q_reg[1]\(22),
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].LMB_WriteStrobe_vec_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => \more_than_one_lmb.lmb_mux_generate[1].LMB_ABus_vec_Q[1][0]_i_1_n_0\,
      D => LMB1_WriteStrobe,
      Q => \more_than_one_lmb.lmb_mux_generate[1].LMB_WriteStrobe_vec_Q_reg_n_0_[1]\,
      R => LMB_Rst
    );
\more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      I1 => LMB1_ABus(3),
      I2 => LMB1_AddrStrobe,
      I3 => LMB_AddrStrobe,
      I4 => LMB_ABus(11),
      O => \more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1_n_0\
    );
\more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => '1',
      D => \more_than_one_lmb.lmb_mux_generate[1].wait_vec[1]_i_1_n_0\,
      Q => \more_than_one_lmb.lmb_mux_generate[1].wait_vec_reg_n_0_[1]\,
      R => LMB_Rst
    );
\more_than_one_lmb.ongoing_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => '1',
      D => ongoing_new,
      Q => ongoing_Q,
      R => LMB_Rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_lmb_bram_if_cntlr_0_lmb_bram_if_cntlr is
  port (
    Sl_Ready : out STD_LOGIC;
    BRAM_EN_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    Sl1_Ready : out STD_LOGIC;
    Sl1_Wait : out STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB1_AddrStrobe : in STD_LOGIC;
    LMB1_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    LMB1_WriteStrobe : in STD_LOGIC;
    LMB1_BE : in STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_lmb_bram_if_cntlr_0_lmb_bram_if_cntlr : entity is "lmb_bram_if_cntlr";
end bd_deec_lmb_bram_if_cntlr_0_lmb_bram_if_cntlr;

architecture STRUCTURE of bd_deec_lmb_bram_if_cntlr_0_lmb_bram_if_cntlr is
  signal \^bram_en_a\ : STD_LOGIC;
  signal Sl_Rdy : STD_LOGIC;
  signal lmb_as : STD_LOGIC;
  signal lmb_select : STD_LOGIC;
begin
  BRAM_EN_A <= \^bram_en_a\;
\No_ECC.Sl_Rdy_reg\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => '1',
      D => lmb_select,
      Q => Sl_Rdy,
      R => LMB_Rst
    );
\No_ECC.lmb_as_reg\: unisim.vcomponents.FDRE
     port map (
      C => LMB_Clk,
      CE => '1',
      D => \^bram_en_a\,
      Q => lmb_as,
      R => LMB_Rst
    );
lmb_mux_I: entity work.bd_deec_lmb_bram_if_cntlr_0_lmb_mux
     port map (
      BRAM_Addr_A(0 to 31) => BRAM_Addr_A(0 to 31),
      BRAM_Dout_A(0 to 31) => BRAM_Dout_A(0 to 31),
      BRAM_EN_A => \^bram_en_a\,
      BRAM_WEN_A(0 to 3) => BRAM_WEN_A(0 to 3),
      LMB1_ABus(0 to 31) => LMB1_ABus(0 to 31),
      LMB1_AddrStrobe => LMB1_AddrStrobe,
      LMB1_BE(0 to 3) => LMB1_BE(0 to 3),
      LMB1_WriteDBus(0 to 31) => LMB1_WriteDBus(0 to 31),
      LMB1_WriteStrobe => LMB1_WriteStrobe,
      LMB_ABus(0 to 31) => LMB_ABus(0 to 31),
      LMB_AddrStrobe => LMB_AddrStrobe,
      LMB_BE(0 to 3) => LMB_BE(0 to 3),
      LMB_Clk => LMB_Clk,
      LMB_Rst => LMB_Rst,
      LMB_WriteDBus(0 to 31) => LMB_WriteDBus(0 to 31),
      LMB_WriteStrobe => LMB_WriteStrobe,
      Sl1_Ready => Sl1_Ready,
      Sl1_Wait => Sl1_Wait,
      Sl_Rdy => Sl_Rdy,
      Sl_Ready => Sl_Ready,
      lmb_as => lmb_as,
      lmb_select => lmb_select
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_lmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    LMB1_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_AddrStrobe : in STD_LOGIC;
    LMB1_ReadStrobe : in STD_LOGIC;
    LMB1_WriteStrobe : in STD_LOGIC;
    LMB1_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl1_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl1_Ready : out STD_LOGIC;
    Sl1_Wait : out STD_LOGIC;
    Sl1_UE : out STD_LOGIC;
    Sl1_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_deec_lmb_bram_if_cntlr_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_deec_lmb_bram_if_cntlr_0 : entity is "bd_deec_lmb_bram_if_cntlr_0,lmb_bram_if_cntlr,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_deec_lmb_bram_if_cntlr_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bd_deec_lmb_bram_if_cntlr_0 : entity is "lmb_bram_if_cntlr,Vivado 2019.2";
end bd_deec_lmb_bram_if_cntlr_0;

architecture STRUCTURE of bd_deec_lmb_bram_if_cntlr_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_din_a\ : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \^lmb_clk\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of BRAM_Clk_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT CLK";
  attribute x_interface_info of BRAM_EN_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT EN";
  attribute x_interface_info of BRAM_Rst_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of BRAM_Rst_A : signal is "XIL_INTERFACENAME BRAM_PORT, MEM_SIZE 65536, MASTER_TYPE BRAM_CTRL, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of LMB1_AddrStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB1 ADDRSTROBE";
  attribute x_interface_info of LMB1_ReadStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB1 READSTROBE";
  attribute x_interface_info of LMB1_WriteStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB1 WRITESTROBE";
  attribute x_interface_info of LMB_AddrStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB ADDRSTROBE";
  attribute x_interface_info of LMB_Clk : signal is "xilinx.com:signal:clock:1.0 CLK.LMB_Clk CLK";
  attribute x_interface_parameter of LMB_Clk : signal is "XIL_INTERFACENAME CLK.LMB_Clk, ASSOCIATED_BUSIF SLMB:SLMB1:SLMB2:SLMB3, ASSOCIATED_RESET LMB_Rst, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, INSERT_VIP 0";
  attribute x_interface_info of LMB_ReadStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB READSTROBE";
  attribute x_interface_info of LMB_Rst : signal is "xilinx.com:signal:reset:1.0 RST.LMB_Rst RST";
  attribute x_interface_parameter of LMB_Rst : signal is "XIL_INTERFACENAME RST.LMB_Rst, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0";
  attribute x_interface_info of LMB_WriteStrobe : signal is "xilinx.com:interface:lmb:1.0 SLMB WRITESTROBE";
  attribute x_interface_info of Sl1_CE : signal is "xilinx.com:interface:lmb:1.0 SLMB1 CE";
  attribute x_interface_info of Sl1_Ready : signal is "xilinx.com:interface:lmb:1.0 SLMB1 READY";
  attribute x_interface_info of Sl1_UE : signal is "xilinx.com:interface:lmb:1.0 SLMB1 UE";
  attribute x_interface_info of Sl1_Wait : signal is "xilinx.com:interface:lmb:1.0 SLMB1 WAIT";
  attribute x_interface_info of Sl_CE : signal is "xilinx.com:interface:lmb:1.0 SLMB CE";
  attribute x_interface_info of Sl_Ready : signal is "xilinx.com:interface:lmb:1.0 SLMB READY";
  attribute x_interface_info of Sl_UE : signal is "xilinx.com:interface:lmb:1.0 SLMB UE";
  attribute x_interface_info of Sl_Wait : signal is "xilinx.com:interface:lmb:1.0 SLMB WAIT";
  attribute x_interface_info of BRAM_Addr_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_info of BRAM_Din_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT";
  attribute x_interface_info of BRAM_Dout_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DIN";
  attribute x_interface_info of BRAM_WEN_A : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT WE";
  attribute x_interface_info of LMB1_ABus : signal is "xilinx.com:interface:lmb:1.0 SLMB1 ABUS";
  attribute x_interface_parameter of LMB1_ABus : signal is "XIL_INTERFACENAME SLMB1, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD";
  attribute x_interface_info of LMB1_BE : signal is "xilinx.com:interface:lmb:1.0 SLMB1 BE";
  attribute x_interface_info of LMB1_WriteDBus : signal is "xilinx.com:interface:lmb:1.0 SLMB1 WRITEDBUS";
  attribute x_interface_info of LMB_ABus : signal is "xilinx.com:interface:lmb:1.0 SLMB ABUS";
  attribute x_interface_parameter of LMB_ABus : signal is "XIL_INTERFACENAME SLMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD";
  attribute x_interface_info of LMB_BE : signal is "xilinx.com:interface:lmb:1.0 SLMB BE";
  attribute x_interface_info of LMB_WriteDBus : signal is "xilinx.com:interface:lmb:1.0 SLMB WRITEDBUS";
  attribute x_interface_info of Sl1_DBus : signal is "xilinx.com:interface:lmb:1.0 SLMB1 READDBUS";
  attribute x_interface_info of Sl_DBus : signal is "xilinx.com:interface:lmb:1.0 SLMB READDBUS";
begin
  BRAM_Clk_A <= \^lmb_clk\;
  BRAM_Rst_A <= \<const0>\;
  Sl1_CE <= \<const0>\;
  Sl1_DBus(0 to 31) <= \^bram_din_a\(0 to 31);
  Sl1_UE <= \<const0>\;
  Sl_CE <= \<const0>\;
  Sl_DBus(0 to 31) <= \^bram_din_a\(0 to 31);
  Sl_UE <= \<const0>\;
  Sl_Wait <= \<const0>\;
  \^bram_din_a\(0 to 31) <= BRAM_Din_A(0 to 31);
  \^lmb_clk\ <= LMB_Clk;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.bd_deec_lmb_bram_if_cntlr_0_lmb_bram_if_cntlr
     port map (
      BRAM_Addr_A(0 to 31) => BRAM_Addr_A(0 to 31),
      BRAM_Dout_A(0 to 31) => BRAM_Dout_A(0 to 31),
      BRAM_EN_A => BRAM_EN_A,
      BRAM_WEN_A(0 to 3) => BRAM_WEN_A(0 to 3),
      LMB1_ABus(0 to 31) => LMB1_ABus(0 to 31),
      LMB1_AddrStrobe => LMB1_AddrStrobe,
      LMB1_BE(0 to 3) => LMB1_BE(0 to 3),
      LMB1_WriteDBus(0 to 31) => LMB1_WriteDBus(0 to 31),
      LMB1_WriteStrobe => LMB1_WriteStrobe,
      LMB_ABus(0 to 31) => LMB_ABus(0 to 31),
      LMB_AddrStrobe => LMB_AddrStrobe,
      LMB_BE(0 to 3) => LMB_BE(0 to 3),
      LMB_Clk => \^lmb_clk\,
      LMB_Rst => LMB_Rst,
      LMB_WriteDBus(0 to 31) => LMB_WriteDBus(0 to 31),
      LMB_WriteStrobe => LMB_WriteStrobe,
      Sl1_Ready => Sl1_Ready,
      Sl1_Wait => Sl1_Wait,
      Sl_Ready => Sl_Ready
    );
end STRUCTURE;
