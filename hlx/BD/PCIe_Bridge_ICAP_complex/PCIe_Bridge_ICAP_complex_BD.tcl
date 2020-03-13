
################################################################
# This is a generated script based on design: PCIe_Bridge_ICAP_complex
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
# source PCIe_Bridge_ICAP_complex_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# SREF_ctrl_logic, pr_icap, sref_init_restore_sync

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcu200-fsgd2104-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name PCIe_Bridge_ICAP_complex

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./shell

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
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_bram_ctrl:4.1\
xilinx.com:ip:blk_mem_gen:8.4\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:axi_hwicap:3.0\
xilinx.com:ip:axi_iic:2.0\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:ddr4:2.2\
xilinx.com:ip:axi_quad_spi:3.2\
xilinx.com:ip:ila:6.2\
user.org:user:myip_AXIL_TO_XSDB_v1_0:1.0\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:system_ila:1.1\
xilinx.com:ip:system_management_wiz:1.3\
xilinx.com:ip:util_vector_logic:2.0\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:xlslice:1.0\
xilinx.com:ip:axi_register_slice:2.1\
xilinx.com:ip:xdma:4.1\
xilinx.com:ip:axi_dwidth_converter:2.1\
xilinx.com:ip:axi_protocol_converter:2.1\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
SREF_ctrl_logic\
pr_icap\
sref_init_restore_sync\
"

   set list_mods_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_msg_id "BD_TCL-008" "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: s00_couplers
proc create_hier_cell_s00_couplers { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_s00_couplers() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -type clk M_ACLK
  create_bd_pin -dir I -type rst M_ARESETN
  create_bd_pin -dir I -type clk S_ACLK
  create_bd_pin -dir I -type rst S_ARESETN

  # Create instance: auto_ds, and set properties
  set auto_ds [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dwidth_converter:2.1 auto_ds ]
  set_property -dict [ list \
   CONFIG.MI_DATA_WIDTH {32} \
   CONFIG.SI_DATA_WIDTH {512} \
 ] $auto_ds

  # Create instance: auto_pc, and set properties
  set auto_pc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 auto_pc ]
  set_property -dict [ list \
   CONFIG.MI_PROTOCOL {AXI4LITE} \
   CONFIG.SI_PROTOCOL {AXI4} \
 ] $auto_pc

  # Create instance: auto_rs, and set properties
  set auto_rs [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 auto_rs ]

  # Create instance: s00_regslice, and set properties
  set s00_regslice [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 s00_regslice ]

  # Create interface connections
  connect_bd_intf_net -intf_net auto_ds_to_auto_rs [get_bd_intf_pins auto_ds/M_AXI] [get_bd_intf_pins auto_rs/S_AXI]
  connect_bd_intf_net -intf_net auto_pc_to_s00_couplers [get_bd_intf_pins M_AXI] [get_bd_intf_pins auto_pc/M_AXI]
  connect_bd_intf_net -intf_net auto_rs_to_auto_pc [get_bd_intf_pins auto_pc/S_AXI] [get_bd_intf_pins auto_rs/M_AXI]
  connect_bd_intf_net -intf_net s00_couplers_to_s00_regslice [get_bd_intf_pins S_AXI] [get_bd_intf_pins s00_regslice/S_AXI]
  connect_bd_intf_net -intf_net s00_regslice_to_auto_ds [get_bd_intf_pins auto_ds/S_AXI] [get_bd_intf_pins s00_regslice/M_AXI]

  # Create port connections
  connect_bd_net -net S_ACLK_1 [get_bd_pins S_ACLK] [get_bd_pins auto_ds/s_axi_aclk] [get_bd_pins auto_pc/aclk] [get_bd_pins auto_rs/aclk] [get_bd_pins s00_regslice/aclk]
  connect_bd_net -net S_ARESETN_1 [get_bd_pins S_ARESETN] [get_bd_pins auto_ds/s_axi_aresetn] [get_bd_pins auto_pc/aresetn] [get_bd_pins auto_rs/aresetn] [get_bd_pins s00_regslice/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: XDMA_BRIDGE
proc create_hier_cell_XDMA_BRIDGE { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_XDMA_BRIDGE() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_PCIEM

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt


  # Create pins
  create_bd_pin -dir O -type rst axi_aresetn
  create_bd_pin -dir O -type clk clk_out_250M
  create_bd_pin -dir I -type clk sys_clk
  create_bd_pin -dir I -type clk sys_clk_gt
  create_bd_pin -dir I -type rst sys_rst_n
  create_bd_pin -dir O user_lnk_up
  create_bd_pin -dir I -from 0 -to 0 usr_irq_req

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.1 xdma_0 ]
  set_property -dict [ list \
   CONFIG.PF0_DEVICE_ID_mqdma {903F} \
   CONFIG.PF0_SUBSYSTEM_VENDOR_ID_mqdma {10EE} \
   CONFIG.PF2_DEVICE_ID_mqdma {903F} \
   CONFIG.PF3_DEVICE_ID_mqdma {903F} \
   CONFIG.axi_addr_width {64} \
   CONFIG.axi_data_width {512_bit} \
   CONFIG.axilite_master_en {true} \
   CONFIG.axilite_master_scale {Megabytes} \
   CONFIG.axilite_master_size {32} \
   CONFIG.axisten_freq {250} \
   CONFIG.bar_indicator {BAR_1:0} \
   CONFIG.c_m_axi_num_write {32} \
   CONFIG.c_s_axi_supports_narrow_burst {false} \
   CONFIG.cfg_mgmt_if {false} \
   CONFIG.coreclk_freq {500} \
   CONFIG.dedicate_perst {false} \
   CONFIG.en_dbg_descramble {false} \
   CONFIG.enable_gen4 {false} \
   CONFIG.enable_ibert {false} \
   CONFIG.enable_jtag_dbg {false} \
   CONFIG.functional_mode {AXI_Bridge} \
   CONFIG.mode_selection {Advanced} \
   CONFIG.pcie_blk_locn {X1Y2} \
   CONFIG.pcie_id_if {false} \
   CONFIG.pciebar2axibar_2 {0x0000000000000000} \
   CONFIG.pciebar2axibar_axil_master {0x0000000000000000} \
   CONFIG.pf0_bar0_64bit {true} \
   CONFIG.pf0_bar0_scale {Megabytes} \
   CONFIG.pf0_bar0_size {2} \
   CONFIG.pf0_bar2_64bit {false} \
   CONFIG.pf0_bar2_enabled {false} \
   CONFIG.pf0_bar2_size {4} \
   CONFIG.pf0_device_id {0101} \
   CONFIG.pf0_interrupt_pin {NONE} \
   CONFIG.pf0_msi_enabled {true} \
   CONFIG.pf0_msix_cap_pba_bir {BAR_1:0} \
   CONFIG.pf0_msix_cap_pba_offset {00000000} \
   CONFIG.pf0_msix_cap_table_bir {BAR_1:0} \
   CONFIG.pf0_msix_cap_table_offset {00000000} \
   CONFIG.pf0_msix_cap_table_size {000} \
   CONFIG.pf0_msix_enabled {false} \
   CONFIG.pf0_rbar_cap_bar0 {0xffffffffffff} \
   CONFIG.pf0_subsystem_vendor_id {1C9D} \
   CONFIG.pf1_bar0_scale {Kilobytes} \
   CONFIG.pf1_bar0_size {128} \
   CONFIG.pf1_bar1_enabled {false} \
   CONFIG.pf1_bar2_64bit {false} \
   CONFIG.pf1_bar2_enabled {false} \
   CONFIG.pf1_bar4_64bit {false} \
   CONFIG.pf1_bar4_enabled {false} \
   CONFIG.pf1_msix_cap_table_size {020} \
   CONFIG.pf1_rbar_cap_bar0 {0xffffffffffff} \
   CONFIG.pf2_rbar_cap_bar0 {0xffffffffffff} \
   CONFIG.pf3_rbar_cap_bar0 {0xffffffffffff} \
   CONFIG.pipe_sim {false} \
   CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
   CONFIG.pl_link_cap_max_link_width {X16} \
   CONFIG.plltype {QPLL1} \
   CONFIG.select_quad {GTY_Quad_227} \
   CONFIG.vendor_id {1C9D} \
   CONFIG.xdma_axilite_slave {true} \
 ] $xdma_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M_AXI_B] [get_bd_intf_pins xdma_0/M_AXI_B]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins xdma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S_AXI_PCIEM] [get_bd_intf_pins xdma_0/S_AXI_B]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_pins pcie_mgt] [get_bd_intf_pins xdma_0/pcie_mgt]

  # Create port connections
  connect_bd_net -net axi_pcie3_0_axi_aclk [get_bd_pins clk_out_250M] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net axi_pcie3_0_axi_aresetn [get_bd_pins axi_aresetn] [get_bd_pins xdma_0/axi_aresetn]
  connect_bd_net -net sys_clk_1 [get_bd_pins sys_clk] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net sys_clk_gt_1 [get_bd_pins sys_clk_gt] [get_bd_pins xdma_0/sys_clk_gt]
  connect_bd_net -net sys_rst_n_1 [get_bd_pins sys_rst_n] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net xdma_0_user_lnk_up [get_bd_pins user_lnk_up] [get_bd_pins xdma_0/user_lnk_up]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins usr_irq_req] [get_bd_pins xdma_0/usr_irq_req]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TO_SH_AXI_MM_NORTH
proc create_hier_cell_TO_SH_AXI_MM_NORTH { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TO_SH_AXI_MM_NORTH() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 rp_AXI_MM_FROM_HLS_PR_0


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I decouple

  # Create instance: axi_register_slice_PR_DECOUPLE_AXI_MM, and set properties
  set axi_register_slice_PR_DECOUPLE_AXI_MM [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_PR_DECOUPLE_AXI_MM ]
  set_property -dict [ list \
   CONFIG.REG_AR {7} \
   CONFIG.REG_AW {7} \
   CONFIG.REG_B {7} \
 ] $axi_register_slice_PR_DECOUPLE_AXI_MM

  # Create interface connections
  connect_bd_intf_net -intf_net axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins axi_register_slice_PR_DECOUPLE_AXI_MM/M_AXI]
  connect_bd_intf_net -intf_net rp_AXI_MM_FROM_HLS_PR_0_1 [get_bd_intf_pins rp_AXI_MM_FROM_HLS_PR_0] [get_bd_intf_pins axi_register_slice_PR_DECOUPLE_AXI_MM/S_AXI]

  # Create port connections
  connect_bd_net -net clk_wiz_0_clk_out_125M [get_bd_pins aclk] [get_bd_pins axi_register_slice_PR_DECOUPLE_AXI_MM/aclk]
  connect_bd_net -net decouple_1 [get_bd_pins decouple] [get_bd_pins axi_register_slice_PR_DECOUPLE_AXI_MM/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TO_SH_AXI_MM_0
proc create_hier_cell_TO_SH_AXI_MM_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TO_SH_AXI_MM_0() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 rp_AXI_MM_FROM_HLS_PR_0


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I decouple

  # Create instance: axi_register_slice_PR_DECOUPLE_AXI_MM, and set properties
  set axi_register_slice_PR_DECOUPLE_AXI_MM [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_PR_DECOUPLE_AXI_MM ]
  set_property -dict [ list \
   CONFIG.REG_AR {7} \
   CONFIG.REG_AW {7} \
   CONFIG.REG_B {7} \
 ] $axi_register_slice_PR_DECOUPLE_AXI_MM

  # Create interface connections
  connect_bd_intf_net -intf_net axi_register_slice_PR_DECOUPLE_AXI_MM_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins axi_register_slice_PR_DECOUPLE_AXI_MM/M_AXI]
  connect_bd_intf_net -intf_net rp_AXI_MM_FROM_HLS_PR_0_1 [get_bd_intf_pins rp_AXI_MM_FROM_HLS_PR_0] [get_bd_intf_pins axi_register_slice_PR_DECOUPLE_AXI_MM/S_AXI]

  # Create port connections
  connect_bd_net -net clk_wiz_0_clk_out_125M [get_bd_pins aclk] [get_bd_pins axi_register_slice_PR_DECOUPLE_AXI_MM/aclk]
  connect_bd_net -net decouple_1 [get_bd_pins decouple] [get_bd_pins axi_register_slice_PR_DECOUPLE_AXI_MM/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: FROM_SH_AXI_LITE_NORTH
proc create_hier_cell_FROM_SH_AXI_LITE_NORTH { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_FROM_SH_AXI_LITE_NORTH() - Empty argument(s)!"}
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

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 rp_AXI_LITE_TO_HLS_PR_0


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I decouple

  # Create instance: axi_register_slice_2, and set properties
  set axi_register_slice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_2 ]
  set_property -dict [ list \
   CONFIG.REG_AR {7} \
   CONFIG.REG_AW {7} \
   CONFIG.REG_B {7} \
   CONFIG.REG_R {7} \
   CONFIG.REG_W {7} \
 ] $axi_register_slice_2

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_register_slice_2/S_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_2_M_AXI [get_bd_intf_pins rp_AXI_LITE_TO_HLS_PR_0] [get_bd_intf_pins axi_register_slice_2/M_AXI]

  # Create port connections
  connect_bd_net -net clk_wiz_0_clk_out_125M [get_bd_pins aclk] [get_bd_pins axi_register_slice_2/aclk]
  connect_bd_net -net decouple_1 [get_bd_pins decouple] [get_bd_pins axi_register_slice_2/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CL_RST
proc create_hier_cell_CL_RST { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_CL_RST() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 31 -to 0 Din
  create_bd_pin -dir O -from 0 -to 0 -type rst MIG_0_RST
  create_bd_pin -dir O -from 0 -to 0 -type rst MIG_1_RST
  create_bd_pin -dir O -from 0 -to 0 -type rst MIG_2_RST
  create_bd_pin -dir O -from 0 -to 0 -type rst MIG_3_RST
  create_bd_pin -dir O -from 0 -to 0 -type rst RESET_GATE
  create_bd_pin -dir I -type clk clk_out_250M
  create_bd_pin -dir O -from 0 -to 0 -type rst rst_main_n

  # Create instance: ila_rst_cplx, and set properties
  set ila_rst_cplx [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_rst_cplx ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
 ] $ila_rst_cplx

  # Create instance: rst_250M_MIG0, and set properties
  set rst_250M_MIG0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_250M_MIG0 ]

  # Create instance: rst_250M_MIG1, and set properties
  set rst_250M_MIG1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_250M_MIG1 ]

  # Create instance: rst_250M_MIG2, and set properties
  set rst_250M_MIG2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_250M_MIG2 ]

  # Create instance: rst_250M_MIG3, and set properties
  set rst_250M_MIG3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_250M_MIG3 ]

  # Create instance: rst_250M_RESET_GATE, and set properties
  set rst_250M_RESET_GATE [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_250M_RESET_GATE ]

  # Create instance: rst_250M_RESET_MAIN, and set properties
  set rst_250M_RESET_MAIN [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_250M_RESET_MAIN ]

  # Create instance: xlslice_MIG_1, and set properties
  set xlslice_MIG_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_MIG_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {32} \
 ] $xlslice_MIG_1

  # Create instance: xlslice_MIG_2, and set properties
  set xlslice_MIG_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_MIG_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_MIG_2

  # Create instance: xlslice_MIG_3, and set properties
  set xlslice_MIG_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_MIG_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_MIG_3

  # Create instance: xlslice_mig_0, and set properties
  set xlslice_mig_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_mig_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_mig_0

  # Create instance: xlslice_reset_gate_5, and set properties
  set xlslice_reset_gate_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_reset_gate_5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_reset_gate_5

  # Create instance: xlslice_rst_main_n_4, and set properties
  set xlslice_rst_main_n_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rst_main_n_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_rst_main_n_4

  # Create port connections
  connect_bd_net -net Din_1 [get_bd_pins Din] [get_bd_pins xlslice_MIG_1/Din] [get_bd_pins xlslice_MIG_2/Din] [get_bd_pins xlslice_MIG_3/Din] [get_bd_pins xlslice_mig_0/Din] [get_bd_pins xlslice_reset_gate_5/Din] [get_bd_pins xlslice_rst_main_n_4/Din]
  connect_bd_net -net MIG_0_RST [get_bd_pins MIG_0_RST] [get_bd_pins ila_rst_cplx/probe0] [get_bd_pins rst_250M_MIG0/peripheral_aresetn]
  connect_bd_net -net MIG_1_RST [get_bd_pins MIG_1_RST] [get_bd_pins ila_rst_cplx/probe1] [get_bd_pins rst_250M_MIG1/peripheral_aresetn]
  connect_bd_net -net MIG_2_RST [get_bd_pins MIG_2_RST] [get_bd_pins ila_rst_cplx/probe2] [get_bd_pins rst_250M_MIG2/peripheral_aresetn]
  connect_bd_net -net MIG_3_RST [get_bd_pins MIG_3_RST] [get_bd_pins ila_rst_cplx/probe3] [get_bd_pins rst_250M_MIG3/peripheral_aresetn]
  connect_bd_net -net RESET_GATE [get_bd_pins RESET_GATE] [get_bd_pins ila_rst_cplx/probe5] [get_bd_pins rst_250M_RESET_GATE/peripheral_aresetn]
  connect_bd_net -net RST_MAIN_N [get_bd_pins rst_main_n] [get_bd_pins ila_rst_cplx/probe4] [get_bd_pins rst_250M_RESET_MAIN/peripheral_aresetn]
  connect_bd_net -net axi_pcie3_0_axi_aclk [get_bd_pins clk_out_250M] [get_bd_pins ila_rst_cplx/clk] [get_bd_pins rst_250M_MIG0/slowest_sync_clk] [get_bd_pins rst_250M_MIG1/slowest_sync_clk] [get_bd_pins rst_250M_MIG2/slowest_sync_clk] [get_bd_pins rst_250M_MIG3/slowest_sync_clk] [get_bd_pins rst_250M_RESET_GATE/slowest_sync_clk] [get_bd_pins rst_250M_RESET_MAIN/slowest_sync_clk]
  connect_bd_net -net xlslice_0_Dout1 [get_bd_pins rst_250M_RESET_MAIN/ext_reset_in] [get_bd_pins xlslice_rst_main_n_4/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins rst_250M_MIG0/ext_reset_in] [get_bd_pins xlslice_mig_0/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins rst_250M_MIG2/ext_reset_in] [get_bd_pins xlslice_MIG_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins rst_250M_MIG3/ext_reset_in] [get_bd_pins xlslice_MIG_3/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins rst_250M_RESET_GATE/ext_reset_in] [get_bd_pins xlslice_reset_gate_5/Dout]
  connect_bd_net -net xlslice_5_Dout [get_bd_pins rst_250M_MIG1/ext_reset_in] [get_bd_pins xlslice_MIG_1/Dout]

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
  set C1_SYS_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 C1_SYS_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $C1_SYS_CLK

  set EFUSE_IN [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 EFUSE_IN ]

  set M_AXI_LITE_TO_HLS_PR_NORTH [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.NUM_READ_OUTSTANDING {32} \
   CONFIG.PROTOCOL {AXI4LITE} \
   ] $M_AXI_LITE_TO_HLS_PR_NORTH

  set SHELL_VERSION_IN [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SHELL_VERSION_IN ]

  set S_AXI_MM_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MM_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {6} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {32} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {32} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_MM_0

  set S_AXI_MM_PCIM [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MM_PCIM ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {5} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {32} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {32} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_MM_PCIM

  set c1_ddr4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 c1_ddr4 ]

  set deviceDNA_PA [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 deviceDNA_PA ]

  set deviceDNA_PB [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 deviceDNA_PB ]

  set deviceDNA_PC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 deviceDNA_PC ]

  set deviceDNA_PD [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 deviceDNA_PD ]

  set iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic ]

  set pcie_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt ]


  # Create ports
  set C0_DDR_SREF_CTRL_IN [ create_bd_port -dir I -from 7 -to 0 C0_DDR_SREF_CTRL_IN ]
  set C0_DDR_SREF_CTRL_OUT [ create_bd_port -dir O -from 7 -to 0 C0_DDR_SREF_CTRL_OUT ]
  set C2_DDR_SREF_CTRL_IN [ create_bd_port -dir I -from 7 -to 0 C2_DDR_SREF_CTRL_IN ]
  set C2_DDR_SREF_CTRL_OUT [ create_bd_port -dir O -from 7 -to 0 C2_DDR_SREF_CTRL_OUT ]
  set C3_DDR_SREF_CTRL_IN [ create_bd_port -dir I -from 7 -to 0 C3_DDR_SREF_CTRL_IN ]
  set C3_DDR_SREF_CTRL_OUT [ create_bd_port -dir O -from 7 -to 0 C3_DDR_SREF_CTRL_OUT ]
  set MIG_0_RST_N [ create_bd_port -dir O -from 0 -to 0 -type rst MIG_0_RST_N ]
  set MIG_2_RST_N [ create_bd_port -dir O -from 0 -to 0 -type rst MIG_2_RST_N ]
  set MIG_3_RST_N [ create_bd_port -dir O -from 0 -to 0 -type rst MIG_3_RST_N ]
  set RESET_GATE [ create_bd_port -dir O -from 0 -to 0 -type rst RESET_GATE ]
  set axi_reset_n_250M_out [ create_bd_port -dir O -from 0 -to 0 -type rst axi_reset_n_250M_out ]
  set c1_init_calib_complete [ create_bd_port -dir O c1_init_calib_complete ]
  set clk_out_125M [ create_bd_port -dir O -type clk clk_out_125M ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {axi_reset_n_250M_out} \
 ] $clk_out_125M
  set clk_out_250M [ create_bd_port -dir O -type clk clk_out_250M ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S_AXI_MM_PCIM:S_AXI_MM_0:M_AXI_LITE_TO_HLS_PR_NORTH} \
   CONFIG.ASSOCIATED_RESET {rst_main_n} \
 ] $clk_out_250M
  set clk_out_300M [ create_bd_port -dir O -type clk clk_out_300M ]
  set clk_out_400M [ create_bd_port -dir O -type clk clk_out_400M ]
  set clk_out_PROG [ create_bd_port -dir O -type clk clk_out_PROG ]
  set rst_main_n [ create_bd_port -dir O -from 0 -to 0 -type rst rst_main_n ]
  set sys_clk [ create_bd_port -dir I -type clk sys_clk ]
  set sys_clk_gt [ create_bd_port -dir I -type clk sys_clk_gt ]
  set sys_rst_n [ create_bd_port -dir I -type rst sys_rst_n ]

  # Create instance: CL_RST
  create_hier_cell_CL_RST [current_bd_instance .] CL_RST

  # Create instance: FROM_SH_AXI_LITE_NORTH
  create_hier_cell_FROM_SH_AXI_LITE_NORTH [current_bd_instance .] FROM_SH_AXI_LITE_NORTH

  # Create instance: SREF_ctrl_logic_1, and set properties
  set block_name SREF_ctrl_logic
  set block_cell_name SREF_ctrl_logic_1
  if { [catch {set SREF_ctrl_logic_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SREF_ctrl_logic_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: TO_SH_AXI_MM_0
  create_hier_cell_TO_SH_AXI_MM_0 [current_bd_instance .] TO_SH_AXI_MM_0

  # Create instance: TO_SH_AXI_MM_NORTH
  create_hier_cell_TO_SH_AXI_MM_NORTH [current_bd_instance .] TO_SH_AXI_MM_NORTH

  # Create instance: XDMA_BRIDGE
  create_hier_cell_XDMA_BRIDGE [current_bd_instance .] XDMA_BRIDGE

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.ECC_TYPE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_1

  # Create instance: axi_gpio_2, and set properties
  set axi_gpio_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_2

  # Create instance: axi_gpio_4_PR_status, and set properties
  set axi_gpio_4_PR_status [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_4_PR_status ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {4} \
 ] $axi_gpio_4_PR_status

  # Create instance: axi_gpio_C0_SREF, and set properties
  set axi_gpio_C0_SREF [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_C0_SREF ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {8} \
   CONFIG.C_GPIO_WIDTH {8} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_C0_SREF

  # Create instance: axi_gpio_C1_SREF, and set properties
  set axi_gpio_C1_SREF [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_C1_SREF ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {8} \
   CONFIG.C_GPIO_WIDTH {8} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_C1_SREF

  # Create instance: axi_gpio_C2_SREF, and set properties
  set axi_gpio_C2_SREF [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_C2_SREF ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {8} \
   CONFIG.C_GPIO_WIDTH {8} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_C2_SREF

  # Create instance: axi_gpio_C3_SREF, and set properties
  set axi_gpio_C3_SREF [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_C3_SREF ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {8} \
   CONFIG.C_GPIO_WIDTH {8} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_C3_SREF

  # Create instance: axi_gpio_EFUSE_SHELL_VER, and set properties
  set axi_gpio_EFUSE_SHELL_VER [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_EFUSE_SHELL_VER ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_EFUSE_SHELL_VER

  # Create instance: axi_gpio_sw_reset_n, and set properties
  set axi_gpio_sw_reset_n [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_sw_reset_n ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0xFFFFFFFF} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_sw_reset_n

  # Create instance: axi_hwicap_0, and set properties
  set axi_hwicap_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_hwicap:3.0 axi_hwicap_0 ]
  set_property -dict [ list \
   CONFIG.C_FAMILY {kintexu} \
   CONFIG.C_ICAP_EXTERNAL {1} \
 ] $axi_hwicap_0

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.C_DEFAULT_VALUE {0x01} \
   CONFIG.IIC_FREQ_KHZ {400} \
 ] $axi_iic_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.M00_HAS_DATA_FIFO {0} \
   CONFIG.M00_HAS_REGSLICE {4} \
   CONFIG.M01_HAS_REGSLICE {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_DATA_FIFO {0} \
   CONFIG.S00_HAS_REGSLICE {4} \
   CONFIG.S01_HAS_DATA_FIFO {0} \
   CONFIG.S01_HAS_REGSLICE {4} \
   CONFIG.S02_HAS_DATA_FIFO {0} \
   CONFIG.S02_HAS_REGSLICE {4} \
   CONFIG.S03_HAS_DATA_FIFO {0} \
   CONFIG.S03_HAS_REGSLICE {4} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_0

  # Create instance: axi_pcie3_0_axi_periph, and set properties
  set axi_pcie3_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_pcie3_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.M00_HAS_REGSLICE {0} \
   CONFIG.M01_HAS_REGSLICE {4} \
   CONFIG.M02_HAS_REGSLICE {0} \
   CONFIG.M03_HAS_REGSLICE {0} \
   CONFIG.M04_HAS_REGSLICE {0} \
   CONFIG.M05_HAS_REGSLICE {0} \
   CONFIG.M06_HAS_REGSLICE {0} \
   CONFIG.M07_HAS_REGSLICE {4} \
   CONFIG.NUM_MI {20} \
   CONFIG.S00_HAS_REGSLICE {4} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_pcie3_0_axi_periph

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {40.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {90.793} \
   CONFIG.CLKOUT1_PHASE_ERROR {72.667} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {108.355} \
   CONFIG.CLKOUT2_PHASE_ERROR {72.667} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {Buffer} \
   CONFIG.CLKOUT3_JITTER {79.446} \
   CONFIG.CLKOUT3_PHASE_ERROR {72.667} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_DRIVES {Buffer} \
   CONFIG.CLKOUT5_DRIVES {Buffer} \
   CONFIG.CLKOUT6_DRIVES {Buffer} \
   CONFIG.CLKOUT7_DRIVES {Buffer} \
   CONFIG.CLK_OUT1_PORT {clk_out_125M} \
   CONFIG.CLK_OUT2_PORT {clk_out_50M} \
   CONFIG.CLK_OUT3_PORT {clk_out3} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_SEL {Min_O_Jitter} \
   CONFIG.MMCM_BANDWIDTH {HIGH} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {6.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {4.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {30} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PHASESHIFT_MODE {WAVEFORM} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_FREQ_SYNTH {true} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_PHASE_ALIGNMENT {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_PROG, and set properties
  set clk_wiz_PROG [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_PROG ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {33.330000000000005} \
   CONFIG.CLKOUT1_DRIVES {Buffer} \
   CONFIG.CLKOUT1_JITTER {77.334} \
   CONFIG.CLKOUT1_PHASE_ERROR {77.836} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {400.000} \
   CONFIG.CLKOUT2_DRIVES {Buffer} \
   CONFIG.CLKOUT2_JITTER {77.334} \
   CONFIG.CLKOUT2_PHASE_ERROR {77.836} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {400.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {Buffer} \
   CONFIG.CLKOUT3_JITTER {81.814} \
   CONFIG.CLKOUT3_PHASE_ERROR {77.836} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {300.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {Buffer} \
   CONFIG.CLKOUT5_DRIVES {Buffer} \
   CONFIG.CLKOUT6_DRIVES {Buffer} \
   CONFIG.CLKOUT7_DRIVES {Buffer} \
   CONFIG.CLK_OUT1_PORT {clk_out_PROG} \
   CONFIG.CLK_OUT2_PORT {clk_out_400M} \
   CONFIG.CLK_OUT3_PORT {clk_out_300M} \
   CONFIG.JITTER_SEL {Min_O_Jitter} \
   CONFIG.MMCM_BANDWIDTH {HIGH} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {4.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {3.333} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {3.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {3} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {4} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_DYN_RECONFIG {true} \
   CONFIG.USE_PHASE_ALIGNMENT {false} \
 ] $clk_wiz_PROG

  # Create instance: ddr4_1, and set properties
  set ddr4_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_1 ]
  set_property -dict [ list \
   CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {250} \
   CONFIG.C0.BANK_GROUP_WIDTH {2} \
   CONFIG.C0.CKE_WIDTH {1} \
   CONFIG.C0.CS_WIDTH {1} \
   CONFIG.C0.DDR4_AUTO_AP_COL_A3 {true} \
   CONFIG.C0.DDR4_AxiAddressWidth {34} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CLKFBOUT_MULT {5} \
   CONFIG.C0.DDR4_CLKOUT0_DIVIDE {5} \
   CONFIG.C0.DDR4_CasLatency {17} \
   CONFIG.C0.DDR4_CasWriteLatency {12} \
   CONFIG.C0.DDR4_DIVCLK_DIVIDE {1} \
   CONFIG.C0.DDR4_DataMask {NONE} \
   CONFIG.C0.DDR4_DataWidth {72} \
   CONFIG.C0.DDR4_Ecc {true} \
   CONFIG.C0.DDR4_InputClockPeriod {3332} \
   CONFIG.C0.DDR4_Mem_Add_Map {ROW_COLUMN_BANK} \
   CONFIG.C0.DDR4_MemoryPart {MTA18ASF2G72PZ-2G3} \
   CONFIG.C0.DDR4_MemoryType {RDIMMs} \
   CONFIG.C0.DDR4_SAVE_RESTORE {true} \
   CONFIG.C0.DDR4_SELF_REFRESH {true} \
   CONFIG.C0.DDR4_TimePeriod {833} \
   CONFIG.C0.ODT_WIDTH {1} \
 ] $ddr4_1

  # Create instance: flash_programmer, and set properties
  set flash_programmer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 flash_programmer ]
  set_property -dict [ list \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SPI_MEMORY {2} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_USE_STARTUP {1} \
   CONFIG.C_USE_STARTUP_INT {1} \
 ] $flash_programmer

  # Create instance: ila_PR_ICAP_STST, and set properties
  set ila_PR_ICAP_STST [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_PR_ICAP_STST ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {1} \
   CONFIG.C_PROBE0_WIDTH {4} \
 ] $ila_PR_ICAP_STST

  # Create instance: myip_AXIL_TO_XSDB_v1_0, and set properties
  set myip_AXIL_TO_XSDB_v1_0 [ create_bd_cell -type ip -vlnv user.org:user:myip_AXIL_TO_XSDB_v1_0:1.0 myip_AXIL_TO_XSDB_v1_0 ]

  # Create instance: pr_icap_0, and set properties
  set block_name pr_icap
  set block_cell_name pr_icap_0
  if { [catch {set pr_icap_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pr_icap_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_250M, and set properties
  set rst_250M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_250M ]

  # Create instance: rst_50M, and set properties
  set rst_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_50M ]

  # Create instance: rst_ddr4_0_300M, and set properties
  set rst_ddr4_0_300M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_300M ]

  # Create instance: s00_couplers
  create_hier_cell_s00_couplers [current_bd_instance .] s00_couplers

  # Create instance: sref_init_restore_sy_0, and set properties
  set block_name sref_init_restore_sync
  set block_cell_name sref_init_restore_sy_0
  if { [catch {set sref_init_restore_sy_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sref_init_restore_sy_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: system_ila_AXIL, and set properties
  set system_ila_AXIL [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_AXIL ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {0} \
   CONFIG.C_INPUT_PIPE_STAGES {1} \
   CONFIG.C_MON_TYPE {INTERFACE} \
   CONFIG.C_SLOT_0_AXI_R_SEL_TRIG {0} \
   CONFIG.C_SLOT_0_AXI_W_SEL_TRIG {0} \
   CONFIG.C_SLOT_0_TXN_CNTR_EN {0} \
 ] $system_ila_AXIL

  # Create instance: system_ila_AXI_MM, and set properties
  set system_ila_AXI_MM [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_AXI_MM ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU {true} \
   CONFIG.C_BRAM_CNT {0} \
   CONFIG.C_INPUT_PIPE_STAGES {1} \
   CONFIG.C_MON_TYPE {INTERFACE} \
   CONFIG.C_SLOT_0_AXI_B_SEL_TRIG {0} \
   CONFIG.C_SLOT_0_AXI_R_SEL_TRIG {0} \
   CONFIG.C_SLOT_0_AXI_W_SEL_TRIG {0} \
   CONFIG.C_SLOT_0_MAX_RD_BURSTS {32} \
   CONFIG.C_SLOT_0_MAX_WR_BURSTS {32} \
   CONFIG.C_SLOT_0_TXN_CNTR_EN {0} \
 ] $system_ila_AXI_MM

  # Create instance: system_management_wiz_0, and set properties
  set system_management_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_management_wiz:1.3 system_management_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CHANNEL_ENABLE_VP_VN {false} \
   CONFIG.ENABLE_RESET {false} \
   CONFIG.ENABLE_VCCPSAUX_ALARM {false} \
   CONFIG.ENABLE_VCCPSINTFP_ALARM {false} \
   CONFIG.ENABLE_VCCPSINTLP_ALARM {false} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.TEMPERATURE_ALARM_OT_TRIGGER {95.0} \
 ] $system_management_wiz_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_0_2, and set properties
  set xlconstant_0_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0_2

  # Create instance: xlconstant_1_1, and set properties
  set xlconstant_1_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net C0_SYS_CLK_1 [get_bd_intf_ports C1_SYS_CLK] [get_bd_intf_pins ddr4_1/C0_SYS_CLK]
  connect_bd_intf_net -intf_net FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0 [get_bd_intf_ports M_AXI_LITE_TO_HLS_PR_NORTH] [get_bd_intf_pins FROM_SH_AXI_LITE_NORTH/rp_AXI_LITE_TO_HLS_PR_0]
  connect_bd_intf_net -intf_net M_AXI_MM_FROM_HLS_PR_0_1 [get_bd_intf_ports S_AXI_MM_PCIM] [get_bd_intf_pins TO_SH_AXI_MM_NORTH/rp_AXI_MM_FROM_HLS_PR_0]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins XDMA_BRIDGE/M_AXI_B] [get_bd_intf_pins s00_couplers/S_AXI]
  connect_bd_intf_net -intf_net S_AXI_MM_0_1 [get_bd_intf_ports S_AXI_MM_0] [get_bd_intf_pins TO_SH_AXI_MM_0/rp_AXI_MM_FROM_HLS_PR_0]
  connect_bd_intf_net -intf_net S_AXI_PCIEM_1 [get_bd_intf_pins TO_SH_AXI_MM_NORTH/M_AXI] [get_bd_intf_pins XDMA_BRIDGE/S_AXI_PCIEM]
connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXI_PCIEM_1] [get_bd_intf_pins TO_SH_AXI_MM_NORTH/M_AXI] [get_bd_intf_pins system_ila_AXI_MM/SLOT_0_AXI]
  connect_bd_intf_net -intf_net TO_SH_AXI_MM_0_M_AXI [get_bd_intf_pins TO_SH_AXI_MM_0/M_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_gpio_1_GPIO [get_bd_intf_ports deviceDNA_PA] [get_bd_intf_pins axi_gpio_1/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_1_GPIO2 [get_bd_intf_ports deviceDNA_PB] [get_bd_intf_pins axi_gpio_1/GPIO2]
  connect_bd_intf_net -intf_net axi_gpio_2_GPIO [get_bd_intf_ports deviceDNA_PC] [get_bd_intf_pins axi_gpio_2/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_2_GPIO2 [get_bd_intf_ports deviceDNA_PD] [get_bd_intf_pins axi_gpio_2/GPIO2]
  connect_bd_intf_net -intf_net axi_gpio_EFUSE_SHELL_VER_GPIO [get_bd_intf_ports EFUSE_IN] [get_bd_intf_pins axi_gpio_EFUSE_SHELL_VER/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_EFUSE_SHELL_VER_GPIO2 [get_bd_intf_ports SHELL_VERSION_IN] [get_bd_intf_pins axi_gpio_EFUSE_SHELL_VER/GPIO2]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports iic] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins ddr4_1/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M00_AXI [get_bd_intf_pins axi_pcie3_0_axi_periph/M00_AXI] [get_bd_intf_pins ddr4_1/C0_DDR4_S_AXI_CTRL]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M01_AXI [get_bd_intf_pins FROM_SH_AXI_LITE_NORTH/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M02_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M03_AXI [get_bd_intf_pins axi_hwicap_0/S_AXI_LITE] [get_bd_intf_pins axi_pcie3_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M04_AXI [get_bd_intf_pins axi_pcie3_0_axi_periph/M04_AXI] [get_bd_intf_pins clk_wiz_PROG/s_axi_lite]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M05_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M06_AXI [get_bd_intf_pins axi_pcie3_0_axi_periph/M06_AXI] [get_bd_intf_pins system_management_wiz_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M07_AXI [get_bd_intf_pins XDMA_BRIDGE/S_AXI_LITE] [get_bd_intf_pins axi_pcie3_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M08_AXI [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M09_AXI [get_bd_intf_pins axi_gpio_2/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M10_AXI [get_bd_intf_pins axi_pcie3_0_axi_periph/M10_AXI] [get_bd_intf_pins flash_programmer/AXI_LITE]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M11_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M12_AXI [get_bd_intf_pins axi_gpio_EFUSE_SHELL_VER/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M13_AXI [get_bd_intf_pins axi_gpio_sw_reset_n/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M13_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M14_AXI [get_bd_intf_pins axi_gpio_C2_SREF/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M14_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M15_AXI [get_bd_intf_pins axi_gpio_4_PR_status/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M15_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M16_AXI [get_bd_intf_pins axi_gpio_C3_SREF/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M16_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M17_AXI [get_bd_intf_pins axi_gpio_C0_SREF/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M17_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M18_AXI [get_bd_intf_pins axi_gpio_C1_SREF/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M18_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M19_AXI [get_bd_intf_pins axi_pcie3_0_axi_periph/M19_AXI] [get_bd_intf_pins myip_AXIL_TO_XSDB_v1_0/s00_axi]
  connect_bd_intf_net -intf_net ddr4_0_C0_DDR4 [get_bd_intf_ports c1_ddr4] [get_bd_intf_pins ddr4_1/C0_DDR4]
  connect_bd_intf_net -intf_net s00_couplers_M_AXI [get_bd_intf_pins axi_pcie3_0_axi_periph/S00_AXI] [get_bd_intf_pins s00_couplers/M_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets s00_couplers_M_AXI] [get_bd_intf_pins s00_couplers/M_AXI] [get_bd_intf_pins system_ila_AXIL/SLOT_0_AXI]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_ports pcie_mgt] [get_bd_intf_pins XDMA_BRIDGE/pcie_mgt]

  # Create port connections
  connect_bd_net -net C3_DDR_SREF_CTRL_IN1_1 [get_bd_ports C0_DDR_SREF_CTRL_IN] [get_bd_pins axi_gpio_C0_SREF/gpio2_io_i]
  connect_bd_net -net CL_RST_MIG_1_RST [get_bd_pins CL_RST/MIG_1_RST] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net CL_RST_peripheral_aresetn_0 [get_bd_ports RESET_GATE] [get_bd_pins CL_RST/RESET_GATE]
  connect_bd_net -net SREF_ctrl_logic_1_DDR_SREF_CTRL_OUT [get_bd_pins SREF_ctrl_logic_1/DDR_SREF_CTRL_OUT] [get_bd_pins axi_gpio_C1_SREF/gpio2_io_i]
  connect_bd_net -net SREF_ctrl_logic_1_ddr4_app_mem_init_skip [get_bd_pins SREF_ctrl_logic_1/ddr4_app_mem_init_skip] [get_bd_pins sref_init_restore_sy_0/shell_mem_init_skip]
  connect_bd_net -net SREF_ctrl_logic_1_ddr4_app_restore_complete [get_bd_pins SREF_ctrl_logic_1/ddr4_app_restore_complete] [get_bd_pins sref_init_restore_sy_0/shell_restore_complete]
  connect_bd_net -net SREF_ctrl_logic_1_ddr4_app_sref_req [get_bd_pins SREF_ctrl_logic_1/ddr4_app_sref_req] [get_bd_pins sref_init_restore_sy_0/shell_sref_req]
  connect_bd_net -net SREF_ctrl_logic_1_ddr4_app_xsdb_select [get_bd_pins SREF_ctrl_logic_1/ddr4_app_xsdb_select] [get_bd_pins ddr4_1/c0_ddr4_app_xsdb_select]
  connect_bd_net -net axi_gpio_3_gpio_io_o [get_bd_ports C2_DDR_SREF_CTRL_OUT] [get_bd_pins axi_gpio_C2_SREF/gpio_io_o]
  connect_bd_net -net axi_gpio_C0_SREF_gpio_io_o [get_bd_ports C0_DDR_SREF_CTRL_OUT] [get_bd_pins axi_gpio_C0_SREF/gpio_io_o]
  connect_bd_net -net axi_gpio_C1_SREF_gpio_io_o [get_bd_pins SREF_ctrl_logic_1/DDR_SREF_CTRL_IN] [get_bd_pins axi_gpio_C1_SREF/gpio_io_o]
  connect_bd_net -net axi_gpio_C3_SREF_gpio_io_o [get_bd_ports C3_DDR_SREF_CTRL_OUT] [get_bd_pins axi_gpio_C3_SREF/gpio_io_o]
  connect_bd_net -net axi_gpio_sw_reset_n_gpio_io_o [get_bd_pins CL_RST/Din] [get_bd_pins axi_gpio_sw_reset_n/gpio2_io_i] [get_bd_pins axi_gpio_sw_reset_n/gpio_io_o]
  connect_bd_net -net axi_hwicap_0_icap_csib [get_bd_pins axi_hwicap_0/icap_csib] [get_bd_pins pr_icap_0/icap_csib]
  connect_bd_net -net axi_hwicap_0_icap_o [get_bd_pins axi_hwicap_0/icap_o] [get_bd_pins pr_icap_0/icap_din]
  connect_bd_net -net axi_hwicap_0_icap_rdwrb [get_bd_pins axi_hwicap_0/icap_rdwrb] [get_bd_pins pr_icap_0/icap_rdwrb]
  connect_bd_net -net axi_pcie3_0_axi_aclk [get_bd_ports clk_out_250M] [get_bd_pins CL_RST/clk_out_250M] [get_bd_pins FROM_SH_AXI_LITE_NORTH/aclk] [get_bd_pins TO_SH_AXI_MM_0/aclk] [get_bd_pins TO_SH_AXI_MM_NORTH/aclk] [get_bd_pins XDMA_BRIDGE/clk_out_250M] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M01_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M07_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/S00_ACLK] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins rst_250M/slowest_sync_clk] [get_bd_pins s00_couplers/M_ACLK] [get_bd_pins s00_couplers/S_ACLK] [get_bd_pins system_ila_AXIL/clk] [get_bd_pins system_ila_AXI_MM/clk]
  connect_bd_net -net axi_pcie3_0_axi_aresetn [get_bd_pins XDMA_BRIDGE/axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M01_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M07_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/S00_ARESETN] [get_bd_pins rst_250M/ext_reset_in] [get_bd_pins rst_50M/ext_reset_in] [get_bd_pins s00_couplers/M_ARESETN] [get_bd_pins s00_couplers/S_ARESETN] [get_bd_pins system_ila_AXIL/resetn] [get_bd_pins system_ila_AXI_MM/resetn]
  connect_bd_net -net clk_wiz_0_clk_out_125M1 [get_bd_ports clk_out_125M] [get_bd_pins clk_wiz_0/clk_out_125M]
  connect_bd_net -net clk_wiz_0_clk_out_50M [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_gpio_2/s_axi_aclk] [get_bd_pins axi_gpio_4_PR_status/s_axi_aclk] [get_bd_pins axi_gpio_C0_SREF/s_axi_aclk] [get_bd_pins axi_gpio_C1_SREF/s_axi_aclk] [get_bd_pins axi_gpio_C2_SREF/s_axi_aclk] [get_bd_pins axi_gpio_C3_SREF/s_axi_aclk] [get_bd_pins axi_gpio_EFUSE_SHELL_VER/s_axi_aclk] [get_bd_pins axi_gpio_sw_reset_n/s_axi_aclk] [get_bd_pins axi_hwicap_0/icap_clk] [get_bd_pins axi_hwicap_0/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_pcie3_0_axi_periph/M02_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M03_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M04_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M05_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M06_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M08_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M09_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M10_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M11_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M12_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M13_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M14_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M15_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M16_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M17_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M18_ACLK] [get_bd_pins clk_wiz_0/clk_out_50M] [get_bd_pins clk_wiz_PROG/s_axi_aclk] [get_bd_pins flash_programmer/ext_spi_clk] [get_bd_pins flash_programmer/s_axi_aclk] [get_bd_pins ila_PR_ICAP_STST/clk] [get_bd_pins pr_icap_0/icap_clk] [get_bd_pins rst_50M/slowest_sync_clk] [get_bd_pins system_management_wiz_0/s_axi_aclk]
  connect_bd_net -net clk_wiz_PROG_clk_out_300M [get_bd_ports clk_out_300M] [get_bd_pins clk_wiz_PROG/clk_out_300M]
  connect_bd_net -net clk_wiz_PROG_clk_out_400M [get_bd_ports clk_out_400M] [get_bd_pins clk_wiz_PROG/clk_out_400M]
  connect_bd_net -net clk_wiz_PROG_clk_out_PROG [get_bd_ports clk_out_PROG] [get_bd_pins clk_wiz_PROG/clk_out_PROG]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M00_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M19_ACLK] [get_bd_pins clk_wiz_PROG/clk_in1] [get_bd_pins ddr4_1/c0_ddr4_ui_clk] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/s00_axi_aclk] [get_bd_pins rst_ddr4_0_300M/slowest_sync_clk] [get_bd_pins sref_init_restore_sy_0/c0_mig_ui_clk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_1/c0_ddr4_ui_clk_sync_rst] [get_bd_pins rst_ddr4_0_300M/ext_reset_in] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_ui_clk_sync_rst]
  connect_bd_net -net ddr4_1_c0_ddr4_app_sref_ack [get_bd_pins SREF_ctrl_logic_1/ddr4_app_sref_ack] [get_bd_pins ddr4_1/c0_ddr4_app_sref_ack]
  connect_bd_net -net ddr4_1_c0_ddr4_app_xsdb_rd_data [get_bd_pins ddr4_1/c0_ddr4_app_xsdb_rd_data] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rd_data]
  connect_bd_net -net ddr4_1_c0_ddr4_app_xsdb_rdy [get_bd_pins ddr4_1/c0_ddr4_app_xsdb_rdy] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rdy]
  connect_bd_net -net ddr4_1_c0_init_calib_complete [get_bd_ports c1_init_calib_complete] [get_bd_pins ddr4_1/c0_init_calib_complete] [get_bd_pins sref_init_restore_sy_0/c0_init_calib_complete]
  connect_bd_net -net gpio2_io_i_0_1 [get_bd_ports C2_DDR_SREF_CTRL_IN] [get_bd_pins axi_gpio_C2_SREF/gpio2_io_i]
  connect_bd_net -net gpio2_io_i_0_2 [get_bd_ports C3_DDR_SREF_CTRL_IN] [get_bd_pins axi_gpio_C3_SREF/gpio2_io_i]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_addr [get_bd_pins ddr4_1/c0_ddr4_app_xsdb_addr] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_addr]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_rd_en [get_bd_pins ddr4_1/c0_ddr4_app_xsdb_rd_en] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_rd_en]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_wr_data [get_bd_pins ddr4_1/c0_ddr4_app_xsdb_wr_data] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_wr_data]
  connect_bd_net -net myip_AXIL_TO_XSDB_v1_0_XSDB_wr_en [get_bd_pins ddr4_1/c0_ddr4_app_xsdb_wr_en] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/XSDB_wr_en]
  connect_bd_net -net pr_icap_0_icap_avail [get_bd_pins axi_hwicap_0/icap_avail] [get_bd_pins pr_icap_0/icap_avail]
  connect_bd_net -net pr_icap_0_icap_dout [get_bd_pins axi_hwicap_0/icap_i] [get_bd_pins pr_icap_0/icap_dout]
  connect_bd_net -net pr_icap_0_icap_pr_status [get_bd_pins axi_gpio_4_PR_status/gpio_io_i] [get_bd_pins ila_PR_ICAP_STST/probe0] [get_bd_pins pr_icap_0/icap_pr_status]
  connect_bd_net -net rst_250M1_peripheral_aresetn [get_bd_ports rst_main_n] [get_bd_pins CL_RST/rst_main_n]
  connect_bd_net -net rst_250M2_peripheral_reset [get_bd_ports MIG_0_RST_N] [get_bd_pins CL_RST/MIG_0_RST]
  connect_bd_net -net rst_250M3_peripheral_reset [get_bd_ports MIG_2_RST_N] [get_bd_pins CL_RST/MIG_2_RST]
  connect_bd_net -net rst_250M4_peripheral_reset [get_bd_ports MIG_3_RST_N] [get_bd_pins CL_RST/MIG_3_RST]
  connect_bd_net -net rst_250M_peripheral_aresetn [get_bd_ports axi_reset_n_250M_out] [get_bd_pins rst_250M/peripheral_aresetn]
  connect_bd_net -net rst_ddr4_0_300M1_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_gpio_2/s_axi_aresetn] [get_bd_pins axi_gpio_4_PR_status/s_axi_aresetn] [get_bd_pins axi_gpio_C0_SREF/s_axi_aresetn] [get_bd_pins axi_gpio_C1_SREF/s_axi_aresetn] [get_bd_pins axi_gpio_C2_SREF/s_axi_aresetn] [get_bd_pins axi_gpio_C3_SREF/s_axi_aresetn] [get_bd_pins axi_gpio_EFUSE_SHELL_VER/s_axi_aresetn] [get_bd_pins axi_gpio_sw_reset_n/s_axi_aresetn] [get_bd_pins axi_hwicap_0/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_pcie3_0_axi_periph/M02_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M03_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M04_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M05_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M06_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M08_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M09_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M10_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M11_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M12_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M13_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M14_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M15_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M16_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M17_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M18_ARESETN] [get_bd_pins clk_wiz_PROG/s_axi_aresetn] [get_bd_pins flash_programmer/s_axi_aresetn] [get_bd_pins rst_50M/peripheral_aresetn] [get_bd_pins system_management_wiz_0/s_axi_aresetn]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M00_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M19_ARESETN] [get_bd_pins ddr4_1/c0_ddr4_aresetn] [get_bd_pins myip_AXIL_TO_XSDB_v1_0/s00_axi_aresetn] [get_bd_pins rst_ddr4_0_300M/peripheral_aresetn]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_mem_init_skip [get_bd_pins ddr4_1/c0_ddr4_app_mem_init_skip] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_mem_init_skip]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_restore_complete [get_bd_pins ddr4_1/c0_ddr4_app_restore_complete] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_restore_complete]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_restore_en [get_bd_pins ddr4_1/c0_ddr4_app_restore_en] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_restore_en]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_app_sref_req [get_bd_pins ddr4_1/c0_ddr4_app_sref_req] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_app_sref_req]
  connect_bd_net -net sref_init_restore_sy_0_c0_ddr4_sys_rst_out [get_bd_pins ddr4_1/sys_rst] [get_bd_pins sref_init_restore_sy_0/c0_ddr4_sys_rst_out]
  connect_bd_net -net sys_clk_1 [get_bd_ports sys_clk] [get_bd_pins XDMA_BRIDGE/sys_clk]
  connect_bd_net -net sys_clk_gt_1 [get_bd_ports sys_clk_gt] [get_bd_pins XDMA_BRIDGE/sys_clk_gt]
  connect_bd_net -net sys_rst_n_1 [get_bd_ports sys_rst_n] [get_bd_pins XDMA_BRIDGE/sys_rst_n]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins sref_init_restore_sy_0/shell_sys_rst_in] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net xdma_0_user_lnk_up [get_bd_pins XDMA_BRIDGE/user_lnk_up] [get_bd_pins rst_50M/dcm_locked]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins XDMA_BRIDGE/usr_irq_req] [get_bd_pins axi_hwicap_0/eos_in] [get_bd_pins flash_programmer/usrcclkts] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins axi_hwicap_0/cap_gnt] [get_bd_pins xlconstant_1_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins axi_hwicap_0/cap_rel] [get_bd_pins xlconstant_0_2/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins FROM_SH_AXI_LITE_NORTH/decouple] [get_bd_pins TO_SH_AXI_MM_0/decouple] [get_bd_pins TO_SH_AXI_MM_NORTH/decouple] [get_bd_pins axi_gpio_0/gpio2_io_i] [get_bd_pins axi_gpio_0/gpio_io_o]

  # Create address segments
  assign_bd_address -offset 0x00100000 -range 0x00100000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs M_AXI_LITE_TO_HLS_PR_NORTH/Reg] -force
  assign_bd_address -offset 0x00070000 -range 0x00002000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x00010000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00011000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x00012000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_2/S_AXI/Reg] -force
  assign_bd_address -offset 0x00013000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_C2_SREF/S_AXI/Reg] -force
  assign_bd_address -offset 0x00014000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_4_PR_status/S_AXI/Reg] -force
  assign_bd_address -offset 0x00016000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_C0_SREF/S_AXI/Reg] -force
  assign_bd_address -offset 0x000E1000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_C1_SREF/S_AXI/Reg] -force
  assign_bd_address -offset 0x00015000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_C3_SREF/S_AXI/Reg] -force
  assign_bd_address -offset 0x000D0000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_EFUSE_SHELL_VER/S_AXI/Reg] -force
  assign_bd_address -offset 0x000C0000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_gpio_sw_reset_n/S_AXI/Reg] -force
  assign_bd_address -offset 0x00030000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_hwicap_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x00080000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs clk_wiz_PROG/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x00060000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs ddr4_1/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] -force
  assign_bd_address -offset 0x00090000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs flash_programmer/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x000E0000 -range 0x00001000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs myip_AXIL_TO_XSDB_v1_0/s00_axi/reg0] -force
  assign_bd_address -offset 0x00040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs system_management_wiz_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x00050000 -range 0x00010000 -target_address_space [get_bd_addr_spaces XDMA_BRIDGE/xdma_0/M_AXI_B] [get_bd_addr_segs XDMA_BRIDGE/xdma_0/S_AXI_LITE/CTL0] -force
  assign_bd_address -offset 0x8000000000000000 -range 0x001000000000 -target_address_space [get_bd_addr_spaces S_AXI_MM_0] [get_bd_addr_segs ddr4_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x00000000 -range 0x00010000000000000000 -target_address_space [get_bd_addr_spaces S_AXI_MM_PCIM] [get_bd_addr_segs XDMA_BRIDGE/xdma_0/S_AXI_B/BAR0] -force


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


