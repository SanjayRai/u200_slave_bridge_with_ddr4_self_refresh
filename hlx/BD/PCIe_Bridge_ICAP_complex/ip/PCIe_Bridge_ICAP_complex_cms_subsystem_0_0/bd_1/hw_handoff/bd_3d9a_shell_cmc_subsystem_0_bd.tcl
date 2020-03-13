
################################################################
# This is a generated script based on design: bd_deec
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_deec_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcu200-fsgd2104-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_deec

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./bd_1

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir -bdsource SBD $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design -bdsource SBD $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: reset_gen
proc create_hier_cell_reset_gen { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_reset_gen() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 axi_gpio_rst_n
  create_bd_pin -dir O -from 0 -to 0 resetn
  create_bd_pin -dir I -from 0 -to 0 wdt_reset

  # Create instance: and_gate, and set properties
  set and_gate [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 and_gate ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $and_gate

  # Create instance: reset_inverter, and set properties
  set reset_inverter [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 reset_inverter ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
 ] $reset_inverter

  # Create port connections
  connect_bd_net -net axi_gpio_rst_n_net [get_bd_pins axi_gpio_rst_n] [get_bd_pins and_gate/Op1]
  connect_bd_net -net reset_inverter_net [get_bd_pins and_gate/Op2] [get_bd_pins reset_inverter/Res]
  connect_bd_net -net resetn_net [get_bd_pins resetn] [get_bd_pins and_gate/Res]
  connect_bd_net -net wdt_reset_net [get_bd_pins wdt_reset] [get_bd_pins reset_inverter/Op1]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: qsfp_gpio_hierarchy
proc create_hier_cell_qsfp_gpio_hierarchy { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_qsfp_gpio_hierarchy() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -type clk aclk_ctrl
  create_bd_pin -dir I -type rst aresetn_ctrl
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir I -from 0 -to 0 qsfp0_int_l
  create_bd_pin -dir O -from 0 -to 0 qsfp0_lpmode
  create_bd_pin -dir I -from 0 -to 0 qsfp0_modprs_l
  create_bd_pin -dir O -from 0 -to 0 qsfp0_modsel_l
  create_bd_pin -dir O -from 0 -to 0 qsfp0_reset_l
  create_bd_pin -dir I -from 0 -to 0 qsfp1_int_l
  create_bd_pin -dir O -from 0 -to 0 qsfp1_lpmode
  create_bd_pin -dir I -from 0 -to 0 qsfp1_modprs_l
  create_bd_pin -dir O -from 0 -to 0 qsfp1_modsel_l
  create_bd_pin -dir O -from 0 -to 0 qsfp1_reset_l

  # Create instance: axi_gpio_qsfp, and set properties
  set axi_gpio_qsfp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_qsfp ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x00000003} \
   CONFIG.C_DOUT_DEFAULT_2 {0x00000003} \
   CONFIG.C_GPIO2_WIDTH {5} \
   CONFIG.C_GPIO_WIDTH {5} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT {0xFFFFFFF8} \
   CONFIG.C_TRI_DEFAULT_2 {0xFFFFFFF8} \
 ] $axi_gpio_qsfp

  # Create instance: concat_1, and set properties
  set concat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_1 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {5} \
 ] $concat_1

  # Create instance: concat_2, and set properties
  set concat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_2 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {5} \
 ] $concat_2

  # Create instance: gnd_bus_1, and set properties
  set gnd_bus_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd_bus_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $gnd_bus_1

  # Create instance: slice_gpio1_0, and set properties
  set slice_gpio1_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_gpio1_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {5} \
 ] $slice_gpio1_0

  # Create instance: slice_gpio1_1, and set properties
  set slice_gpio1_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_gpio1_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_gpio1_1

  # Create instance: slice_gpio1_2, and set properties
  set slice_gpio1_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_gpio1_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_gpio1_2

  # Create instance: slice_gpio2_0, and set properties
  set slice_gpio2_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_gpio2_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {5} \
 ] $slice_gpio2_0

  # Create instance: slice_gpio2_1, and set properties
  set slice_gpio2_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_gpio2_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_gpio2_1

  # Create instance: slice_gpio2_2, and set properties
  set slice_gpio2_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_gpio2_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_gpio2_2

  # Create interface connections
  connect_bd_intf_net -intf_net axi_int_cmc_2_M03 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_gpio_qsfp/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_ctrl [get_bd_pins aclk_ctrl] [get_bd_pins axi_gpio_qsfp/s_axi_aclk]
  connect_bd_net -net axi_gpio_qsfp_in_1 [get_bd_pins axi_gpio_qsfp/gpio_io_i] [get_bd_pins concat_1/dout]
  connect_bd_net -net axi_gpio_qsfp_in_2 [get_bd_pins axi_gpio_qsfp/gpio2_io_i] [get_bd_pins concat_2/dout]
  connect_bd_net -net axi_gpio_qsfp_out_1 [get_bd_pins axi_gpio_qsfp/gpio_io_o] [get_bd_pins slice_gpio1_0/Din] [get_bd_pins slice_gpio1_1/Din] [get_bd_pins slice_gpio1_2/Din]
  connect_bd_net -net axi_gpio_qsfp_out_2 [get_bd_pins axi_gpio_qsfp/gpio2_io_o] [get_bd_pins slice_gpio2_0/Din] [get_bd_pins slice_gpio2_1/Din] [get_bd_pins slice_gpio2_2/Din]
  connect_bd_net -net cmc_perip_aresetn [get_bd_pins aresetn_ctrl] [get_bd_pins axi_gpio_qsfp/s_axi_aresetn]
  connect_bd_net -net gnd_bus_1 [get_bd_pins concat_1/In0] [get_bd_pins concat_1/In1] [get_bd_pins concat_1/In2] [get_bd_pins concat_2/In0] [get_bd_pins concat_2/In1] [get_bd_pins concat_2/In2] [get_bd_pins gnd_bus_1/dout]
  connect_bd_net -net intr_gpio_qsfp [get_bd_pins ip2intc_irpt] [get_bd_pins axi_gpio_qsfp/ip2intc_irpt]
  connect_bd_net -net qsfp0_int_l [get_bd_pins qsfp0_int_l] [get_bd_pins concat_1/In4]
  connect_bd_net -net qsfp0_lpmode [get_bd_pins qsfp0_lpmode] [get_bd_pins slice_gpio1_0/Dout]
  connect_bd_net -net qsfp0_modprs_l [get_bd_pins qsfp0_modprs_l] [get_bd_pins concat_1/In3]
  connect_bd_net -net qsfp0_modsel_l [get_bd_pins qsfp0_modsel_l] [get_bd_pins slice_gpio1_2/Dout]
  connect_bd_net -net qsfp0_reset_l [get_bd_pins qsfp0_reset_l] [get_bd_pins slice_gpio1_1/Dout]
  connect_bd_net -net qsfp1_int_l [get_bd_pins qsfp1_int_l] [get_bd_pins concat_2/In4]
  connect_bd_net -net qsfp1_lpmode [get_bd_pins qsfp1_lpmode] [get_bd_pins slice_gpio2_0/Dout]
  connect_bd_net -net qsfp1_modprs_l [get_bd_pins qsfp1_modprs_l] [get_bd_pins concat_2/In3]
  connect_bd_net -net qsfp1_modsel_l [get_bd_pins qsfp1_modsel_l] [get_bd_pins slice_gpio2_2/Dout]
  connect_bd_net -net qsfp1_reset_l [get_bd_pins qsfp1_reset_l] [get_bd_pins slice_gpio2_1/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_local_memory
proc create_hier_cell_microblaze_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 dlmb

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 ext_bram_if_ctrl

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ilmb


  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -type rst rst

  # Create instance: dlmb, and set properties
  set dlmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb ]

  # Create instance: ilmb, and set properties
  set ilmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.PRIM_type_to_Implement {BRAM} \
 ] $lmb_bram

  # Create instance: lmb_bram_if_cntlr, and set properties
  set lmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 lmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_NUM_LMB {2} \
 ] $lmb_bram_if_cntlr

  # Create interface connections
  connect_bd_intf_net -intf_net dlmb [get_bd_intf_pins dlmb] [get_bd_intf_pins dlmb/LMB_M]
  connect_bd_intf_net -intf_net dlmb_s [get_bd_intf_pins dlmb/LMB_Sl_0] [get_bd_intf_pins lmb_bram_if_cntlr/SLMB]
  connect_bd_intf_net -intf_net ext_bram_if_ctrl [get_bd_intf_pins ext_bram_if_ctrl] [get_bd_intf_pins lmb_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net ilmb [get_bd_intf_pins ilmb] [get_bd_intf_pins ilmb/LMB_M]
  connect_bd_intf_net -intf_net ilmb_s [get_bd_intf_pins ilmb/LMB_Sl_0] [get_bd_intf_pins lmb_bram_if_cntlr/SLMB1]
  connect_bd_intf_net -intf_net lmb_bram_if_ctrl [get_bd_intf_pins lmb_bram/BRAM_PORTA] [get_bd_intf_pins lmb_bram_if_cntlr/BRAM_PORT]

  # Create port connections
  connect_bd_net -net clk [get_bd_pins clk] [get_bd_pins dlmb/LMB_Clk] [get_bd_pins ilmb/LMB_Clk] [get_bd_pins lmb_bram_if_cntlr/LMB_Clk]
  connect_bd_net -net rst [get_bd_pins rst] [get_bd_pins dlmb/SYS_Rst] [get_bd_pins ilmb/SYS_Rst] [get_bd_pins lmb_bram_if_cntlr/LMB_Rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set mdm_mbdebug [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:mbdebug_rtl:3.0 mdm_mbdebug ]

  set s_axi_ctrl_mgmt [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl_mgmt ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {18} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.INSERT_VIP {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $s_axi_ctrl_mgmt

  set satellite_gpio [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 satellite_gpio ]

  set satellite_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 satellite_uart ]


  # Create ports
  set aclk_ctrl [ create_bd_port -dir I -type clk aclk_ctrl ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {s_axi_ctrl_mgmt} \
   CONFIG.ASSOCIATED_RESET {aresetn_ctrl} \
   CONFIG.INSERT_VIP {0} \
 ] $aclk_ctrl
  set aresetn_ctrl [ create_bd_port -dir I -type rst aresetn_ctrl ]
  set_property -dict [ list \
   CONFIG.INSERT_VIP {0} \
 ] $aresetn_ctrl
  set hbm_temp_1 [ create_bd_port -dir I -from 6 -to 0 hbm_temp_1 ]
  set hbm_temp_2 [ create_bd_port -dir I -from 6 -to 0 hbm_temp_2 ]
  set interrupt_hbm_cattrip [ create_bd_port -dir I -from 0 -to 0 interrupt_hbm_cattrip ]
  set interrupt_host [ create_bd_port -dir O -type intr interrupt_host ]
  set_property -dict [ list \
   CONFIG.SENSITIVITY {LEVEL_HIGH} \
 ] $interrupt_host
  set mdm_debug_sys_rst [ create_bd_port -dir I -type rst mdm_debug_sys_rst ]
  set_property -dict [ list \
   CONFIG.INSERT_VIP {0} \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $mdm_debug_sys_rst
  set qsfp0_int_l [ create_bd_port -dir I -from 0 -to 0 qsfp0_int_l ]
  set qsfp0_lpmode [ create_bd_port -dir O -from 0 -to 0 qsfp0_lpmode ]
  set qsfp0_modprs_l [ create_bd_port -dir I -from 0 -to 0 qsfp0_modprs_l ]
  set qsfp0_modsel_l [ create_bd_port -dir O -from 0 -to 0 qsfp0_modsel_l ]
  set qsfp0_reset_l [ create_bd_port -dir O -from 0 -to 0 qsfp0_reset_l ]
  set qsfp1_int_l [ create_bd_port -dir I -from 0 -to 0 qsfp1_int_l ]
  set qsfp1_lpmode [ create_bd_port -dir O -from 0 -to 0 qsfp1_lpmode ]
  set qsfp1_modprs_l [ create_bd_port -dir I -from 0 -to 0 qsfp1_modprs_l ]
  set qsfp1_modsel_l [ create_bd_port -dir O -from 0 -to 0 qsfp1_modsel_l ]
  set qsfp1_reset_l [ create_bd_port -dir O -from 0 -to 0 qsfp1_reset_l ]

  # Create instance: axi_bram_ctrl_firmware, and set properties
  set axi_bram_ctrl_firmware [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_firmware ]
  set_property -dict [ list \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_firmware

  # Create instance: axi_bram_ctrl_regmap_cmc, and set properties
  set axi_bram_ctrl_regmap_cmc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_regmap_cmc ]
  set_property -dict [ list \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_regmap_cmc

  # Create instance: axi_bram_ctrl_regmap_host, and set properties
  set axi_bram_ctrl_regmap_host [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_regmap_host ]
  set_property -dict [ list \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_regmap_host

  # Create instance: axi_gpio_cmc_mb_rst_n, and set properties
  set axi_gpio_cmc_mb_rst_n [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_cmc_mb_rst_n ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $axi_gpio_cmc_mb_rst_n

  # Create instance: axi_gpio_hbm_temp, and set properties
  set axi_gpio_hbm_temp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_hbm_temp ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {15} \
 ] $axi_gpio_hbm_temp

  # Create instance: axi_gpio_mb_intr, and set properties
  set axi_gpio_mb_intr [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_mb_intr ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {31} \
 ] $axi_gpio_mb_intr

  # Create instance: axi_gpio_mutex_cmc, and set properties
  set axi_gpio_mutex_cmc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_mutex_cmc ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {0} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {2} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT {0xFFFFFFFF} \
 ] $axi_gpio_mutex_cmc

  # Create instance: axi_gpio_mutex_host, and set properties
  set axi_gpio_mutex_host [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_mutex_host ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {2} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT {0xFFFFFFFF} \
 ] $axi_gpio_mutex_host

  # Create instance: axi_gpio_satellite, and set properties
  set axi_gpio_satellite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_satellite ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {4} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
 ] $axi_gpio_satellite

  # Create instance: axi_gpio_timebase, and set properties
  set axi_gpio_timebase [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_timebase ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {32} \
 ] $axi_gpio_timebase

  # Create instance: axi_gpio_wdt, and set properties
  set axi_gpio_wdt [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_wdt ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $axi_gpio_wdt

  # Create instance: axi_ic_cmc_local, and set properties
  set axi_ic_cmc_local [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_cmc_local ]
  set_property -dict [ list \
   CONFIG.M00_HAS_REGSLICE {0} \
   CONFIG.M01_HAS_REGSLICE {0} \
   CONFIG.M02_HAS_REGSLICE {0} \
   CONFIG.M03_HAS_REGSLICE {0} \
   CONFIG.M04_HAS_REGSLICE {0} \
   CONFIG.M05_HAS_REGSLICE {0} \
   CONFIG.M06_HAS_REGSLICE {0} \
   CONFIG.M07_HAS_REGSLICE {0} \
   CONFIG.M08_HAS_REGSLICE {0} \
   CONFIG.M09_HAS_REGSLICE {0} \
   CONFIG.M10_HAS_REGSLICE {0} \
   CONFIG.M11_HAS_REGSLICE {0} \
   CONFIG.M12_HAS_REGSLICE {0} \
   CONFIG.M13_HAS_REGSLICE {0} \
   CONFIG.NUM_MI {14} \
   CONFIG.S00_HAS_REGSLICE {0} \
 ] $axi_ic_cmc_local

  # Create instance: axi_ic_mgmt, and set properties
  set axi_ic_mgmt [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_mgmt ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $axi_ic_mgmt

  # Create instance: axi_intc, and set properties
  set axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc ]
  set_property -dict [ list \
   CONFIG.C_ASYNC_INTR {0x00008000} \
   CONFIG.C_ENABLE_ASYNC {0} \
   CONFIG.C_HAS_FAST {1} \
   CONFIG.C_KIND_OF_EDGE {0xFFFFFFFF} \
   CONFIG.C_KIND_OF_INTR {0x00000240} \
   CONFIG.C_KIND_OF_LVL {0xFFFFFFFF} \
   CONFIG.C_NUM_SW_INTR {15} \
 ] $axi_intc

  # Create instance: axi_intc_host, and set properties
  set axi_intc_host [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_host ]
  set_property -dict [ list \
   CONFIG.C_ASYNC_INTR {0x00000000} \
   CONFIG.C_ENABLE_ASYNC {0} \
   CONFIG.C_HAS_FAST {0} \
   CONFIG.C_IRQ_CONNECTION {1} \
   CONFIG.C_KIND_OF_EDGE {0xFFFFFFFF} \
   CONFIG.C_KIND_OF_INTR {0xFFFFFFFF} \
   CONFIG.C_KIND_OF_LVL {0xFFFFFFFF} \
   CONFIG.C_NUM_SW_INTR {0} \
 ] $axi_intc_host

  # Create instance: axi_timebase_wdt, and set properties
  set axi_timebase_wdt [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timebase_wdt:3.0 axi_timebase_wdt ]
  set_property -dict [ list \
   CONFIG.C_WDT_INTERVAL {31} \
   CONFIG.WDT_ENABLE_ONCE {Enable_repeatedly} \
 ] $axi_timebase_wdt

  # Create instance: axi_uartlite_satellite, and set properties
  set axi_uartlite_satellite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_satellite ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.C_USE_PARITY {1} \
   CONFIG.PARITY {Even} \
 ] $axi_uartlite_satellite

  # Create instance: concat_hbm_temp, and set properties
  set concat_hbm_temp [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_hbm_temp ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {7} \
   CONFIG.IN2_WIDTH {7} \
   CONFIG.NUM_PORTS {3} \
 ] $concat_hbm_temp

  # Create instance: concat_host_interrupts, and set properties
  set concat_host_interrupts [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_host_interrupts ]
  set_property -dict [ list \
   CONFIG.IN1_WIDTH {31} \
   CONFIG.NUM_PORTS {2} \
 ] $concat_host_interrupts

  # Create instance: concat_intr_cmc, and set properties
  set concat_intr_cmc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_intr_cmc ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {17} \
 ] $concat_intr_cmc

  # Create instance: freerun_counter, and set properties
  set freerun_counter [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 freerun_counter ]
  set_property -dict [ list \
   CONFIG.Output_Width {32} \
 ] $freerun_counter

  # Create instance: gnd_bus_1_hbm, and set properties
  set gnd_bus_1_hbm [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd_bus_1_hbm ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $gnd_bus_1_hbm

  # Create instance: gnd_bus_1_interrupts, and set properties
  set gnd_bus_1_interrupts [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gnd_bus_1_interrupts ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $gnd_bus_1_interrupts

  # Create instance: microblaze_axi_vip, and set properties
  set microblaze_axi_vip [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 microblaze_axi_vip ]

  # Create instance: microblaze_cmc, and set properties
  set microblaze_cmc [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_cmc ]
  set_property -dict [ list \
   CONFIG.C_ASYNC_WAKEUP {3} \
   CONFIG.C_BASE_VECTORS {0x00000000F0000000} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_ENABLE_DISCRETE_PORTS {0} \
   CONFIG.C_FSL_LINKS {1} \
   CONFIG.C_M_AXI_DC_USER_SIGNALS {0} \
   CONFIG.C_M_AXI_IC_USER_SIGNALS {0} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_EXT_BRK {0} \
   CONFIG.C_USE_EXT_NM_BRK {0} \
   CONFIG.C_USE_HW_MUL {2} \
   CONFIG.C_USE_INTERRUPT {2} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_NON_SECURE {0} \
   CONFIG.C_USE_PCMP_INSTR {1} \
 ] $microblaze_cmc

  # Create instance: microblaze_local_memory
  create_hier_cell_microblaze_local_memory [current_bd_instance .] microblaze_local_memory

  # Create instance: msp432_bsl_crc_gen, and set properties
  set msp432_bsl_crc_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:shell_utils_msp432_bsl_crc_gen:1.0 msp432_bsl_crc_gen ]

  # Create instance: psreset_cmc, and set properties
  set psreset_cmc [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_cmc ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_cmc

  # Create instance: qsfp_gpio_hierarchy
  create_hier_cell_qsfp_gpio_hierarchy [current_bd_instance .] qsfp_gpio_hierarchy

  # Create instance: reachout_axi_vip, and set properties
  set reachout_axi_vip [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 reachout_axi_vip ]

  # Create instance: reg_map_bram, and set properties
  set reg_map_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 reg_map_bram ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $reg_map_bram

  # Create instance: reset_gen
  create_hier_cell_reset_gen [current_bd_instance .] reset_gen

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_lmb_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_firmware/BRAM_PORTA] [get_bd_intf_pins microblaze_local_memory/ext_bram_if_ctrl]
  connect_bd_intf_net -intf_net axi_bram_ctrl_reg_map1_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_regmap_host/BRAM_PORTA] [get_bd_intf_pins reg_map_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M00_AXI [get_bd_intf_pins axi_gpio_satellite/S_AXI] [get_bd_intf_pins axi_ic_cmc_local/M00_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M01_AXI [get_bd_intf_pins axi_ic_cmc_local/M01_AXI] [get_bd_intf_pins qsfp_gpio_hierarchy/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M02_AXI [get_bd_intf_pins axi_gpio_hbm_temp/S_AXI] [get_bd_intf_pins axi_ic_cmc_local/M02_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M03_AXI [get_bd_intf_pins axi_gpio_mb_intr/S_AXI] [get_bd_intf_pins axi_ic_cmc_local/M03_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M04_AXI [get_bd_intf_pins axi_gpio_wdt/S_AXI] [get_bd_intf_pins axi_ic_cmc_local/M04_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M05_AXI [get_bd_intf_pins axi_ic_cmc_local/M05_AXI] [get_bd_intf_pins axi_intc/s_axi]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M06_AXI [get_bd_intf_pins axi_ic_cmc_local/M06_AXI] [get_bd_intf_pins axi_timebase_wdt/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M07_AXI [get_bd_intf_pins axi_ic_cmc_local/M07_AXI] [get_bd_intf_pins axi_uartlite_satellite/S_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M09_AXI [get_bd_intf_pins axi_gpio_timebase/S_AXI] [get_bd_intf_pins axi_ic_cmc_local/M09_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M10_AXI [get_bd_intf_pins axi_bram_ctrl_regmap_cmc/S_AXI] [get_bd_intf_pins axi_ic_cmc_local/M10_AXI]
  connect_bd_intf_net -intf_net axi_ic_cmc_local_M11_AXI [get_bd_intf_pins axi_gpio_mutex_cmc/S_AXI] [get_bd_intf_pins axi_ic_cmc_local/M11_AXI]
  connect_bd_intf_net -intf_net axi_ic_mgmt_M00_AXI [get_bd_intf_pins axi_bram_ctrl_firmware/S_AXI] [get_bd_intf_pins axi_ic_mgmt/M00_AXI]
  connect_bd_intf_net -intf_net axi_ic_mgmt_M01_AXI [get_bd_intf_pins axi_gpio_cmc_mb_rst_n/S_AXI] [get_bd_intf_pins axi_ic_mgmt/M01_AXI]
  connect_bd_intf_net -intf_net axi_ic_mgmt_M02_AXI [get_bd_intf_pins axi_gpio_mutex_host/S_AXI] [get_bd_intf_pins axi_ic_mgmt/M02_AXI]
  connect_bd_intf_net -intf_net axi_ic_mgmt_M03_AXI [get_bd_intf_pins axi_ic_mgmt/M03_AXI] [get_bd_intf_pins axi_intc_host/s_axi]
  connect_bd_intf_net -intf_net axi_ic_mgmt_M04_AXI [get_bd_intf_pins axi_bram_ctrl_regmap_host/S_AXI] [get_bd_intf_pins axi_ic_mgmt/M04_AXI]
  connect_bd_intf_net -intf_net axi_intc_interrupt [get_bd_intf_pins axi_intc/interrupt] [get_bd_intf_pins microblaze_cmc/INTERRUPT]
  connect_bd_intf_net -intf_net mdm_mbdebug_1 [get_bd_intf_ports mdm_mbdebug] [get_bd_intf_pins microblaze_cmc/DEBUG]
  connect_bd_intf_net -intf_net microblaze_axi_vip_M_AXI [get_bd_intf_pins axi_ic_cmc_local/S00_AXI] [get_bd_intf_pins microblaze_axi_vip/M_AXI]
  connect_bd_intf_net -intf_net microblaze_cmc_DLMB [get_bd_intf_pins microblaze_cmc/DLMB] [get_bd_intf_pins microblaze_local_memory/dlmb]
  connect_bd_intf_net -intf_net microblaze_cmc_ILMB [get_bd_intf_pins microblaze_cmc/ILMB] [get_bd_intf_pins microblaze_local_memory/ilmb]
  connect_bd_intf_net -intf_net microblaze_cmc_M0_AXIS [get_bd_intf_pins microblaze_cmc/M0_AXIS] [get_bd_intf_pins msp432_bsl_crc_gen/s0_axis]
  connect_bd_intf_net -intf_net microblaze_cmc_M_AXI_DP [get_bd_intf_pins microblaze_axi_vip/S_AXI] [get_bd_intf_pins microblaze_cmc/M_AXI_DP]
  connect_bd_intf_net -intf_net msp432_bsl_crc_gen_m0_axis [get_bd_intf_pins microblaze_cmc/S0_AXIS] [get_bd_intf_pins msp432_bsl_crc_gen/m0_axis]
  connect_bd_intf_net -intf_net reg_map_bram_ctrl [get_bd_intf_pins axi_bram_ctrl_regmap_cmc/BRAM_PORTA] [get_bd_intf_pins reg_map_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net s_axi_ctrl_mgmt_net [get_bd_intf_ports s_axi_ctrl_mgmt] [get_bd_intf_pins axi_ic_mgmt/S00_AXI]
  connect_bd_intf_net -intf_net satellite_gpio [get_bd_intf_ports satellite_gpio] [get_bd_intf_pins axi_gpio_satellite/GPIO]
  connect_bd_intf_net -intf_net satellite_uart [get_bd_intf_ports satellite_uart] [get_bd_intf_pins axi_uartlite_satellite/UART]

  # Create port connections
  connect_bd_net -net aclk_ctrl_net [get_bd_ports aclk_ctrl] [get_bd_pins axi_bram_ctrl_firmware/s_axi_aclk] [get_bd_pins axi_bram_ctrl_regmap_cmc/s_axi_aclk] [get_bd_pins axi_bram_ctrl_regmap_host/s_axi_aclk] [get_bd_pins axi_gpio_cmc_mb_rst_n/s_axi_aclk] [get_bd_pins axi_gpio_hbm_temp/s_axi_aclk] [get_bd_pins axi_gpio_mb_intr/s_axi_aclk] [get_bd_pins axi_gpio_mutex_cmc/s_axi_aclk] [get_bd_pins axi_gpio_mutex_host/s_axi_aclk] [get_bd_pins axi_gpio_satellite/s_axi_aclk] [get_bd_pins axi_gpio_timebase/s_axi_aclk] [get_bd_pins axi_gpio_wdt/s_axi_aclk] [get_bd_pins axi_ic_cmc_local/ACLK] [get_bd_pins axi_ic_cmc_local/M00_ACLK] [get_bd_pins axi_ic_cmc_local/M01_ACLK] [get_bd_pins axi_ic_cmc_local/M02_ACLK] [get_bd_pins axi_ic_cmc_local/M03_ACLK] [get_bd_pins axi_ic_cmc_local/M04_ACLK] [get_bd_pins axi_ic_cmc_local/M05_ACLK] [get_bd_pins axi_ic_cmc_local/M06_ACLK] [get_bd_pins axi_ic_cmc_local/M07_ACLK] [get_bd_pins axi_ic_cmc_local/M08_ACLK] [get_bd_pins axi_ic_cmc_local/M09_ACLK] [get_bd_pins axi_ic_cmc_local/M10_ACLK] [get_bd_pins axi_ic_cmc_local/M11_ACLK] [get_bd_pins axi_ic_cmc_local/M12_ACLK] [get_bd_pins axi_ic_cmc_local/M13_ACLK] [get_bd_pins axi_ic_cmc_local/S00_ACLK] [get_bd_pins axi_ic_mgmt/ACLK] [get_bd_pins axi_ic_mgmt/M00_ACLK] [get_bd_pins axi_ic_mgmt/M01_ACLK] [get_bd_pins axi_ic_mgmt/M02_ACLK] [get_bd_pins axi_ic_mgmt/M03_ACLK] [get_bd_pins axi_ic_mgmt/M04_ACLK] [get_bd_pins axi_ic_mgmt/S00_ACLK] [get_bd_pins axi_intc/processor_clk] [get_bd_pins axi_intc/s_axi_aclk] [get_bd_pins axi_intc_host/s_axi_aclk] [get_bd_pins axi_timebase_wdt/s_axi_aclk] [get_bd_pins axi_uartlite_satellite/s_axi_aclk] [get_bd_pins freerun_counter/CLK] [get_bd_pins microblaze_axi_vip/aclk] [get_bd_pins microblaze_cmc/Clk] [get_bd_pins microblaze_local_memory/clk] [get_bd_pins msp432_bsl_crc_gen/clk] [get_bd_pins psreset_cmc/slowest_sync_clk] [get_bd_pins qsfp_gpio_hierarchy/aclk_ctrl] [get_bd_pins reachout_axi_vip/aclk]
  connect_bd_net -net aresetn_ctrl_net [get_bd_ports aresetn_ctrl] [get_bd_pins axi_bram_ctrl_firmware/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_regmap_host/s_axi_aresetn] [get_bd_pins axi_gpio_cmc_mb_rst_n/s_axi_aresetn] [get_bd_pins axi_gpio_mutex_host/s_axi_aresetn] [get_bd_pins axi_ic_mgmt/ARESETN] [get_bd_pins axi_ic_mgmt/M00_ARESETN] [get_bd_pins axi_ic_mgmt/M01_ARESETN] [get_bd_pins axi_ic_mgmt/M02_ARESETN] [get_bd_pins axi_ic_mgmt/M03_ARESETN] [get_bd_pins axi_ic_mgmt/M04_ARESETN] [get_bd_pins axi_ic_mgmt/S00_ARESETN] [get_bd_pins axi_intc_host/s_axi_aresetn] [get_bd_pins psreset_cmc/ext_reset_in]
  connect_bd_net -net axi_gpio_mb_reset_gpio_io_o [get_bd_pins axi_gpio_cmc_mb_rst_n/gpio_io_o] [get_bd_pins reset_gen/axi_gpio_rst_n]
  connect_bd_net -net axi_gpio_mutex_cmc_gpio2_io_o [get_bd_pins axi_gpio_mutex_cmc/gpio2_io_o] [get_bd_pins axi_gpio_mutex_host/gpio2_io_i]
  connect_bd_net -net axi_gpio_mutex_host_gpio_io_o [get_bd_pins axi_gpio_mutex_cmc/gpio_io_i] [get_bd_pins axi_gpio_mutex_host/gpio_io_o]
  connect_bd_net -net axi_timebase_wdt_wdt_interrupt [get_bd_pins axi_timebase_wdt/wdt_interrupt] [get_bd_pins concat_intr_cmc/In11]
  connect_bd_net -net axi_uartlite_satellite_interrupt [get_bd_pins axi_uartlite_satellite/interrupt] [get_bd_pins concat_intr_cmc/In6]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins axi_gpio_timebase/gpio_io_i] [get_bd_pins freerun_counter/Q]
  connect_bd_net -net cmc_mb_rst [get_bd_pins axi_intc/processor_rst] [get_bd_pins microblaze_cmc/Reset] [get_bd_pins psreset_cmc/mb_reset]
  connect_bd_net -net concat_hbm_temp_net [get_bd_pins axi_gpio_hbm_temp/gpio_io_i] [get_bd_pins concat_hbm_temp/dout]
  connect_bd_net -net concat_host_interrupts_dout [get_bd_pins axi_intc_host/intr] [get_bd_pins concat_host_interrupts/dout]
  connect_bd_net -net concat_intr_cmc_dout [get_bd_pins axi_intc/intr] [get_bd_pins concat_intr_cmc/dout]
  connect_bd_net -net gnd_bus_1_interrupt_dout [get_bd_pins concat_intr_cmc/In0] [get_bd_pins concat_intr_cmc/In1] [get_bd_pins concat_intr_cmc/In2] [get_bd_pins concat_intr_cmc/In3] [get_bd_pins concat_intr_cmc/In4] [get_bd_pins concat_intr_cmc/In5] [get_bd_pins concat_intr_cmc/In7] [get_bd_pins concat_intr_cmc/In8] [get_bd_pins concat_intr_cmc/In9] [get_bd_pins concat_intr_cmc/In13] [get_bd_pins concat_intr_cmc/In14] [get_bd_pins concat_intr_cmc/In16] [get_bd_pins gnd_bus_1_interrupts/dout]
  connect_bd_net -net gnd_hbm_net [get_bd_pins concat_hbm_temp/In1] [get_bd_pins gnd_bus_1_hbm/dout]
  connect_bd_net -net hbm_temp_1_net [get_bd_ports hbm_temp_1] [get_bd_pins concat_hbm_temp/In0]
  connect_bd_net -net hbm_temp_2_net [get_bd_ports hbm_temp_2] [get_bd_pins concat_hbm_temp/In2]
  connect_bd_net -net interrupt_gpio_net [get_bd_pins axi_gpio_mb_intr/gpio_io_o] [get_bd_pins concat_host_interrupts/In1]
  connect_bd_net -net interrupt_hbm_cattrip_1 [get_bd_ports interrupt_hbm_cattrip] [get_bd_pins concat_intr_cmc/In15]
  connect_bd_net -net interrupt_host [get_bd_ports interrupt_host] [get_bd_pins axi_intc_host/irq]
  connect_bd_net -net interrupt_wdt_cmc_net [get_bd_pins axi_timebase_wdt/wdt_reset] [get_bd_pins concat_host_interrupts/In0] [get_bd_pins reset_gen/wdt_reset]
  connect_bd_net -net intr_gpio_qsfp [get_bd_pins concat_intr_cmc/In10] [get_bd_pins qsfp_gpio_hierarchy/ip2intc_irpt]
  connect_bd_net -net intr_gpio_sat [get_bd_pins axi_gpio_satellite/ip2intc_irpt] [get_bd_pins concat_intr_cmc/In12]
  connect_bd_net -net mdm_debug_sys_rst [get_bd_ports mdm_debug_sys_rst] [get_bd_pins psreset_cmc/mb_debug_sys_rst]
  connect_bd_net -net psreset_cmc_interconnect_aresetn [get_bd_pins axi_ic_cmc_local/ARESETN] [get_bd_pins axi_ic_cmc_local/M00_ARESETN] [get_bd_pins axi_ic_cmc_local/M01_ARESETN] [get_bd_pins axi_ic_cmc_local/M02_ARESETN] [get_bd_pins axi_ic_cmc_local/M03_ARESETN] [get_bd_pins axi_ic_cmc_local/M04_ARESETN] [get_bd_pins axi_ic_cmc_local/M05_ARESETN] [get_bd_pins axi_ic_cmc_local/M06_ARESETN] [get_bd_pins axi_ic_cmc_local/M07_ARESETN] [get_bd_pins axi_ic_cmc_local/M08_ARESETN] [get_bd_pins axi_ic_cmc_local/M09_ARESETN] [get_bd_pins axi_ic_cmc_local/M10_ARESETN] [get_bd_pins axi_ic_cmc_local/M11_ARESETN] [get_bd_pins axi_ic_cmc_local/M12_ARESETN] [get_bd_pins axi_ic_cmc_local/M13_ARESETN] [get_bd_pins axi_ic_cmc_local/S00_ARESETN] [get_bd_pins psreset_cmc/interconnect_aresetn]
  connect_bd_net -net psreset_cmc_peripheral_aresetn [get_bd_pins axi_bram_ctrl_regmap_cmc/s_axi_aresetn] [get_bd_pins axi_gpio_hbm_temp/s_axi_aresetn] [get_bd_pins axi_gpio_mb_intr/s_axi_aresetn] [get_bd_pins axi_gpio_mutex_cmc/s_axi_aresetn] [get_bd_pins axi_gpio_satellite/s_axi_aresetn] [get_bd_pins axi_gpio_timebase/s_axi_aresetn] [get_bd_pins axi_gpio_wdt/s_axi_aresetn] [get_bd_pins axi_intc/s_axi_aresetn] [get_bd_pins axi_timebase_wdt/s_axi_aresetn] [get_bd_pins axi_uartlite_satellite/s_axi_aresetn] [get_bd_pins microblaze_axi_vip/aresetn] [get_bd_pins msp432_bsl_crc_gen/reset_n] [get_bd_pins psreset_cmc/peripheral_aresetn] [get_bd_pins qsfp_gpio_hierarchy/aresetn_ctrl] [get_bd_pins reachout_axi_vip/aresetn]
  connect_bd_net -net qsfp0_int_l [get_bd_ports qsfp0_int_l] [get_bd_pins qsfp_gpio_hierarchy/qsfp0_int_l]
  connect_bd_net -net qsfp0_lpmode [get_bd_ports qsfp0_lpmode] [get_bd_pins qsfp_gpio_hierarchy/qsfp0_lpmode]
  connect_bd_net -net qsfp0_modprs_l [get_bd_ports qsfp0_modprs_l] [get_bd_pins qsfp_gpio_hierarchy/qsfp0_modprs_l]
  connect_bd_net -net qsfp0_modsel_l [get_bd_ports qsfp0_modsel_l] [get_bd_pins qsfp_gpio_hierarchy/qsfp0_modsel_l]
  connect_bd_net -net qsfp0_reset_l [get_bd_ports qsfp0_reset_l] [get_bd_pins qsfp_gpio_hierarchy/qsfp0_reset_l]
  connect_bd_net -net qsfp1_int_l [get_bd_ports qsfp1_int_l] [get_bd_pins qsfp_gpio_hierarchy/qsfp1_int_l]
  connect_bd_net -net qsfp1_lpmode [get_bd_ports qsfp1_lpmode] [get_bd_pins qsfp_gpio_hierarchy/qsfp1_lpmode]
  connect_bd_net -net qsfp1_modprs_l [get_bd_ports qsfp1_modprs_l] [get_bd_pins qsfp_gpio_hierarchy/qsfp1_modprs_l]
  connect_bd_net -net qsfp1_modsel_l [get_bd_ports qsfp1_modsel_l] [get_bd_pins qsfp_gpio_hierarchy/qsfp1_modsel_l]
  connect_bd_net -net qsfp1_reset_l [get_bd_ports qsfp1_reset_l] [get_bd_pins qsfp_gpio_hierarchy/qsfp1_reset_l]
  connect_bd_net -net reset_gen_resetn [get_bd_pins psreset_cmc/aux_reset_in] [get_bd_pins reset_gen/resetn]
  connect_bd_net -net rst_1 [get_bd_pins microblaze_local_memory/rst] [get_bd_pins psreset_cmc/bus_struct_reset]
  connect_bd_net -net wdt_freeze [get_bd_pins axi_gpio_wdt/gpio_io_o] [get_bd_pins axi_timebase_wdt/freeze]

  # Create address segments
  assign_bd_address -offset 0x01FA0000 -range 0x00002000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_bram_ctrl_regmap_cmc/S_AXI/Mem0] -force
  assign_bd_address -offset 0x01F20000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_gpio_hbm_temp/S_AXI/Reg] -force
  assign_bd_address -offset 0x01F30000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_gpio_mb_intr/S_AXI/Reg] -force
  assign_bd_address -offset 0x01FB0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_gpio_mutex_cmc/S_AXI/Reg] -force
  assign_bd_address -offset 0x01F10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs qsfp_gpio_hierarchy/axi_gpio_qsfp/S_AXI/Reg] -force
  assign_bd_address -offset 0x01F00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_gpio_satellite/S_AXI/Reg] -force
  assign_bd_address -offset 0x01F90000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_gpio_timebase/S_AXI/Reg] -force
  assign_bd_address -offset 0x01F40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_gpio_wdt/S_AXI/Reg] -force
  assign_bd_address -offset 0x01F50000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x01F60000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_timebase_wdt/S_AXI/Reg] -force
  assign_bd_address -offset 0x01F70000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs axi_uartlite_satellite/S_AXI/Reg] -force
  assign_bd_address -offset 0xF0000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Data] [get_bd_addr_segs microblaze_local_memory/lmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0xF0000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_cmc/Instruction] [get_bd_addr_segs microblaze_local_memory/lmb_bram_if_cntlr/SLMB1/Mem] -force
  assign_bd_address -offset 0x00000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs axi_bram_ctrl_firmware/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00028000 -range 0x00002000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs axi_bram_ctrl_regmap_host/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00020000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs axi_gpio_cmc_mb_rst_n/S_AXI/Reg] -force
  assign_bd_address -offset 0x00021000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs axi_gpio_mutex_host/S_AXI/Reg] -force
  assign_bd_address -offset 0x00022000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi_ctrl_mgmt] [get_bd_addr_segs axi_intc_host/S_AXI/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


