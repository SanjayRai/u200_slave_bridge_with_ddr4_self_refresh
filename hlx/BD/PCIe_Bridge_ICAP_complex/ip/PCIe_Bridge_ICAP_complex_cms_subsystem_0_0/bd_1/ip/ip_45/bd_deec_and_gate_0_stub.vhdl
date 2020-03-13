-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Feb 28 12:41:46 2020
-- Host        : xsjcda1 running 64-bit Red Hat Enterprise Linux Workstation release 7.5 (Maipo)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/sanjayr/projects/Illumina/U200_Eclipse/ENCRYPTED_BISTREAM_DEBUG/u200_hlx_v12_ICAP_DLY_EXT_ICAP_WITH_CRC_CMC_2019_2/hlx/BD/PCIe_Bridge_ICAP_complex/ip/PCIe_Bridge_ICAP_complex_cms_subsystem_0_0/bd_1/ip/ip_45/bd_deec_and_gate_0_stub.vhdl
-- Design      : bd_deec_and_gate_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu200-fsgd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_deec_and_gate_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end bd_deec_and_gate_0;

architecture stub of bd_deec_and_gate_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Op2[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.2";
begin
end;
