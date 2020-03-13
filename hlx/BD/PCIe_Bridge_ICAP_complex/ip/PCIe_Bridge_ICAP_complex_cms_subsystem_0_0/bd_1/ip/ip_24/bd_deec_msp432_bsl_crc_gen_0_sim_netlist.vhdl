-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Feb 28 12:37:30 2020
-- Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode funcsim
--               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v12_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2019_2/hlx/BD/PCIe_Bridge_ICAP_complex/ip/PCIe_Bridge_ICAP_complex_cms_subsystem_0_0/bd_1/ip/ip_24/bd_deec_msp432_bsl_crc_gen_0_sim_netlist.vhdl
-- Design      : bd_deec_msp432_bsl_crc_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu200-fsgd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tready : out STD_LOGIC;
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC
  );
  attribute IDLE : string;
  attribute IDLE of bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 : entity is "shell_utils_msp432_bsl_crc_gen_v1_0_0";
  attribute PROC : string;
  attribute PROC of bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 : entity is "1'b1";
end bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0;

architecture STRUCTURE of bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \crc[12]_i_3_n_0\ : STD_LOGIC;
  signal \crc[13]_i_2_n_0\ : STD_LOGIC;
  signal \crc[14]_i_2_n_0\ : STD_LOGIC;
  signal \crc[15]_i_3_n_0\ : STD_LOGIC;
  signal \crc[5]_i_2_n_0\ : STD_LOGIC;
  signal \crc[6]_i_2_n_0\ : STD_LOGIC;
  signal crc_done_i_1_n_0 : STD_LOGIC;
  signal \^m0_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^m0_axis_tvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prev_state : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state01_out : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \crc[12]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \crc[13]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \crc[14]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \crc[15]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \crc[15]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \crc[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \crc[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \crc[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \crc[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \crc[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \crc[9]_i_1\ : label is "soft_lutpair4";
begin
  m0_axis_tdata(31) <= \<const0>\;
  m0_axis_tdata(30) <= \<const0>\;
  m0_axis_tdata(29) <= \<const0>\;
  m0_axis_tdata(28) <= \<const0>\;
  m0_axis_tdata(27) <= \<const0>\;
  m0_axis_tdata(26) <= \<const0>\;
  m0_axis_tdata(25) <= \<const0>\;
  m0_axis_tdata(24) <= \<const0>\;
  m0_axis_tdata(23) <= \<const0>\;
  m0_axis_tdata(22) <= \<const0>\;
  m0_axis_tdata(21) <= \<const0>\;
  m0_axis_tdata(20) <= \<const0>\;
  m0_axis_tdata(19) <= \<const0>\;
  m0_axis_tdata(18) <= \<const0>\;
  m0_axis_tdata(17) <= \<const0>\;
  m0_axis_tdata(16) <= \<const0>\;
  m0_axis_tdata(15 downto 0) <= \^m0_axis_tdata\(15 downto 0);
  m0_axis_tlast <= \<const0>\;
  m0_axis_tvalid <= \^m0_axis_tvalid\;
  s0_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\crc[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DD78228"
    )
        port map (
      I0 => state,
      I1 => \^m0_axis_tdata\(12),
      I2 => s0_axis_tdata(4),
      I3 => \^m0_axis_tdata\(8),
      I4 => s0_axis_tdata(0),
      O => p_2_in(0)
    );
\crc[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E22E2EE2"
    )
        port map (
      I0 => s0_axis_tdata(10),
      I1 => state,
      I2 => \^m0_axis_tdata\(2),
      I3 => \^m0_axis_tdata\(13),
      I4 => s0_axis_tdata(5),
      O => p_2_in(10)
    );
\crc[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E22E2EE2"
    )
        port map (
      I0 => s0_axis_tdata(11),
      I1 => state,
      I2 => \^m0_axis_tdata\(3),
      I3 => \^m0_axis_tdata\(14),
      I4 => s0_axis_tdata(6),
      O => p_2_in(11)
    );
\crc[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B88BB88B8BB8"
    )
        port map (
      I0 => s0_axis_tdata(12),
      I1 => state01_out,
      I2 => \^m0_axis_tdata\(8),
      I3 => \^m0_axis_tdata\(4),
      I4 => \^m0_axis_tdata\(15),
      I5 => \crc[12]_i_3_n_0\,
      O => p_2_in(12)
    );
\crc[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s0_axis_tvalid,
      I1 => state,
      O => state01_out
    );
\crc[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s0_axis_tdata(0),
      I1 => s0_axis_tdata(7),
      I2 => \^m0_axis_tdata\(12),
      I3 => s0_axis_tdata(4),
      O => \crc[12]_i_3_n_0\
    );
\crc[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EE2"
    )
        port map (
      I0 => s0_axis_tdata(13),
      I1 => state,
      I2 => \^m0_axis_tdata\(5),
      I3 => \crc[13]_i_2_n_0\,
      O => p_2_in(13)
    );
\crc[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s0_axis_tdata(1),
      I1 => s0_axis_tdata(5),
      I2 => \^m0_axis_tdata\(13),
      I3 => \^m0_axis_tdata\(9),
      O => \crc[13]_i_2_n_0\
    );
\crc[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EE2"
    )
        port map (
      I0 => s0_axis_tdata(14),
      I1 => state,
      I2 => \^m0_axis_tdata\(6),
      I3 => \crc[14]_i_2_n_0\,
      O => p_2_in(14)
    );
\crc[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^m0_axis_tdata\(14),
      I1 => s0_axis_tdata(6),
      I2 => \^m0_axis_tdata\(10),
      I3 => s0_axis_tdata(2),
      O => \crc[14]_i_2_n_0\
    );
\crc[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => p_0_in
    );
\crc[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EE2"
    )
        port map (
      I0 => s0_axis_tdata(15),
      I1 => state,
      I2 => \^m0_axis_tdata\(7),
      I3 => \crc[15]_i_3_n_0\,
      O => p_2_in(15)
    );
\crc[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s0_axis_tdata(3),
      I1 => s0_axis_tdata(7),
      I2 => \^m0_axis_tdata\(11),
      I3 => \^m0_axis_tdata\(15),
      O => \crc[15]_i_3_n_0\
    );
\crc[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CC6C66C"
    )
        port map (
      I0 => state,
      I1 => s0_axis_tdata(1),
      I2 => s0_axis_tdata(5),
      I3 => \^m0_axis_tdata\(13),
      I4 => \^m0_axis_tdata\(9),
      O => p_2_in(1)
    );
\crc[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DD78228"
    )
        port map (
      I0 => state,
      I1 => \^m0_axis_tdata\(14),
      I2 => s0_axis_tdata(6),
      I3 => \^m0_axis_tdata\(10),
      I4 => s0_axis_tdata(2),
      O => p_2_in(2)
    );
\crc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CC6C66C"
    )
        port map (
      I0 => state,
      I1 => s0_axis_tdata(3),
      I2 => s0_axis_tdata(7),
      I3 => \^m0_axis_tdata\(11),
      I4 => \^m0_axis_tdata\(15),
      O => p_2_in(3)
    );
\crc[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => state,
      I1 => s0_axis_tdata(4),
      I2 => \^m0_axis_tdata\(12),
      O => p_2_in(4)
    );
\crc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1B4B4E1B4E1E1B4"
    )
        port map (
      I0 => state01_out,
      I1 => \^m0_axis_tdata\(13),
      I2 => s0_axis_tdata(5),
      I3 => s0_axis_tdata(0),
      I4 => \^m0_axis_tdata\(8),
      I5 => \crc[5]_i_2_n_0\,
      O => p_2_in(5)
    );
\crc[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s0_axis_tdata(4),
      I1 => \^m0_axis_tdata\(12),
      O => \crc[5]_i_2_n_0\
    );
\crc[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A9AA99AA9A99A"
    )
        port map (
      I0 => s0_axis_tdata(6),
      I1 => state01_out,
      I2 => \^m0_axis_tdata\(9),
      I3 => \^m0_axis_tdata\(13),
      I4 => \^m0_axis_tdata\(14),
      I5 => \crc[6]_i_2_n_0\,
      O => p_2_in(6)
    );
\crc[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s0_axis_tdata(5),
      I1 => s0_axis_tdata(1),
      O => \crc[6]_i_2_n_0\
    );
\crc[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A66A"
    )
        port map (
      I0 => s0_axis_tdata(7),
      I1 => state,
      I2 => \^m0_axis_tdata\(15),
      I3 => \crc[14]_i_2_n_0\,
      O => p_2_in(7)
    );
\crc[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EE2"
    )
        port map (
      I0 => s0_axis_tdata(8),
      I1 => state,
      I2 => \^m0_axis_tdata\(0),
      I3 => \crc[15]_i_3_n_0\,
      O => p_2_in(8)
    );
\crc[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E22E2EE2"
    )
        port map (
      I0 => s0_axis_tdata(9),
      I1 => state,
      I2 => \^m0_axis_tdata\(1),
      I3 => \^m0_axis_tdata\(12),
      I4 => s0_axis_tdata(4),
      O => p_2_in(9)
    );
crc_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => state,
      I1 => prev_state,
      I2 => m0_axis_tready,
      I3 => \^m0_axis_tvalid\,
      O => crc_done_i_1_n_0
    );
crc_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => crc_done_i_1_n_0,
      Q => \^m0_axis_tvalid\,
      R => p_0_in
    );
\crc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(0),
      Q => \^m0_axis_tdata\(0),
      R => p_0_in
    );
\crc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(10),
      Q => \^m0_axis_tdata\(10),
      R => p_0_in
    );
\crc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(11),
      Q => \^m0_axis_tdata\(11),
      R => p_0_in
    );
\crc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(12),
      Q => \^m0_axis_tdata\(12),
      R => p_0_in
    );
\crc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(13),
      Q => \^m0_axis_tdata\(13),
      R => p_0_in
    );
\crc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(14),
      Q => \^m0_axis_tdata\(14),
      R => p_0_in
    );
\crc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(15),
      Q => \^m0_axis_tdata\(15),
      R => p_0_in
    );
\crc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(1),
      Q => \^m0_axis_tdata\(1),
      R => p_0_in
    );
\crc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(2),
      Q => \^m0_axis_tdata\(2),
      R => p_0_in
    );
\crc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(3),
      Q => \^m0_axis_tdata\(3),
      R => p_0_in
    );
\crc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(4),
      Q => \^m0_axis_tdata\(4),
      R => p_0_in
    );
\crc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(5),
      Q => \^m0_axis_tdata\(5),
      R => p_0_in
    );
\crc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(6),
      Q => \^m0_axis_tdata\(6),
      R => p_0_in
    );
\crc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(7),
      Q => \^m0_axis_tdata\(7),
      R => p_0_in
    );
\crc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(8),
      Q => \^m0_axis_tdata\(8),
      R => p_0_in
    );
\crc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => s0_axis_tvalid,
      D => p_2_in(9),
      Q => \^m0_axis_tdata\(9),
      R => p_0_in
    );
\prev_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => state,
      Q => prev_state,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7A"
    )
        port map (
      I0 => s0_axis_tvalid,
      I1 => s0_axis_tlast,
      I2 => state,
      O => \state[0]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_deec_msp432_bsl_crc_gen_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tready : out STD_LOGIC;
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_deec_msp432_bsl_crc_gen_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_deec_msp432_bsl_crc_gen_0 : entity is "bd_deec_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_deec_msp432_bsl_crc_gen_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_deec_msp432_bsl_crc_gen_0 : entity is "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2019.2";
end bd_deec_msp432_bsl_crc_gen_0;

architecture STRUCTURE of bd_deec_msp432_bsl_crc_gen_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m0_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m0_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s0_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m0_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  attribute IDLE : string;
  attribute IDLE of inst : label is "1'b0";
  attribute PROC : string;
  attribute PROC of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s0_axis:m0_axis, ASSOCIATED_RESET reset_n, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m0_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m0_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m0_axis_tlast : signal is "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m0_axis_tready : signal is "xilinx.com:interface:axis:1.0 m0_axis TREADY";
  attribute X_INTERFACE_INFO of m0_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m0_axis TVALID";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s0_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s0_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s0_axis_tlast : signal is "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s0_axis_tready : signal is "xilinx.com:interface:axis:1.0 s0_axis TREADY";
  attribute X_INTERFACE_INFO of s0_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s0_axis TVALID";
  attribute X_INTERFACE_INFO of m0_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m0_axis TDATA";
  attribute X_INTERFACE_INFO of s0_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s0_axis TDATA";
begin
  m0_axis_tdata(31) <= \<const0>\;
  m0_axis_tdata(30) <= \<const0>\;
  m0_axis_tdata(29) <= \<const0>\;
  m0_axis_tdata(28) <= \<const0>\;
  m0_axis_tdata(27) <= \<const0>\;
  m0_axis_tdata(26) <= \<const0>\;
  m0_axis_tdata(25) <= \<const0>\;
  m0_axis_tdata(24) <= \<const0>\;
  m0_axis_tdata(23) <= \<const0>\;
  m0_axis_tdata(22) <= \<const0>\;
  m0_axis_tdata(21) <= \<const0>\;
  m0_axis_tdata(20) <= \<const0>\;
  m0_axis_tdata(19) <= \<const0>\;
  m0_axis_tdata(18) <= \<const0>\;
  m0_axis_tdata(17) <= \<const0>\;
  m0_axis_tdata(16) <= \<const0>\;
  m0_axis_tdata(15 downto 0) <= \^m0_axis_tdata\(15 downto 0);
  m0_axis_tlast <= \<const0>\;
  s0_axis_tready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.bd_deec_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0
     port map (
      clk => clk,
      m0_axis_tdata(31 downto 16) => NLW_inst_m0_axis_tdata_UNCONNECTED(31 downto 16),
      m0_axis_tdata(15 downto 0) => \^m0_axis_tdata\(15 downto 0),
      m0_axis_tlast => NLW_inst_m0_axis_tlast_UNCONNECTED,
      m0_axis_tready => m0_axis_tready,
      m0_axis_tvalid => m0_axis_tvalid,
      reset_n => reset_n,
      s0_axis_tdata(31 downto 16) => B"0000000000000000",
      s0_axis_tdata(15 downto 0) => s0_axis_tdata(15 downto 0),
      s0_axis_tlast => s0_axis_tlast,
      s0_axis_tready => NLW_inst_s0_axis_tready_UNCONNECTED,
      s0_axis_tvalid => s0_axis_tvalid
    );
end STRUCTURE;
