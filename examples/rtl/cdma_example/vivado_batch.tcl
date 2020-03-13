set design_name dynamic_region_cdma
set build_mode ALL 

set TOP_module U200_AXI_ICAP_PR_DESIGN_top
set ROLE_CLK_PERIOD 4.000

   if {${build_mode} == "DYN_SYN"} {
   set DYN_SYN 1
   set IMPL 0
   set SHELL 0
   } elseif {${build_mode} == "IMPL"} {
   set DYN_SYN 0
   set IMPL 1
   set SHELL 0
   } elseif {${build_mode} == "SHELL"} {
   set DYN_SYN 1
   set IMPL 0
   set SHELL 1
   } elseif {${build_mode} == "SHELL_IMP"} {
   set DYN_SYN 0
   set IMPL 0
   set SHELL 1 
   } elseif {${build_mode} == "ALL"} {
   set DYN_SYN 1
   set IMPL 1
   set SHELL 1 
   } else {
   set DYN_SYN 1
   set IMPL 1
   set SHELL 1   
   }
   
set hlx_path "../../../hlx"

source ${hlx_path}/scripts/device_type.tcl

   if {${DYN_SYN} == 1} {

    create_project -name $design_name -part [DEVICE_TYPE] -force

    read_verilog [ list \
    ${hlx_path}/src/hlx_intfc.sv
    ]
    
    read_bd "${hlx_path}/BD/dynamic_region_ddr4/dynamic_region_ddr4.bd"
    read_bd "${hlx_path}/BD/axi_ic_ddr4_pcim/axi_ic_ddr4_pcim.bd"
    read_bd "${hlx_path}/BD/axi_ic_axi4lite/axi_ic_axi4lite.bd"

    read_ip "${hlx_path}/IP/debug_bridge_PR/debug_bridge_PR.xci"
    read_ip "${hlx_path}/IP/cdma/cdma.xci"
    read_ip "${hlx_path}/IP/ila_0/ila_0.xci"
    read_ip "${hlx_path}/IP/ila_ICAP/ila_ICAP.xci"
    read_ip "${hlx_path}/IP/axi4lite_cc/axi4lite_cc.xci"
    read_ip "${hlx_path}/IP/axi4lite_reg_slice/axi4lite_reg_slice.xci"
    read_ip "${hlx_path}/IP/axi4mm_cc/axi4mm_cc.xci"
    read_ip "${hlx_path}/IP/axi4mm_reg_slice/axi4mm_reg_slice.xci"
    read_ip "${hlx_path}/IP/axi4mm_slr_reg_slice/axi4mm_slr_reg_slice.xci"
    read_ip "${hlx_path}/IP/axi4lite_slr_reg_slice/axi4lite_slr_reg_slice.xci"
    read_ip "${hlx_path}/IP/proc_sys_reset_module/proc_sys_reset_module.xci"



    read_verilog [ list \
        ./src/dynamic_region_cdma.sv \
        ./src/reset_module.sv \
        ../../../hlx/shell/src/SREF_ctrl_logic.v \
        ../../../hlx/shell/src/sref_init_restore_sync.v \
    ]
    
    read_xdc -mode out_of_context -ref $design_name ${hlx_path}/xdc/dynamic_region.xdc
    read_xdc -mode out_of_context -ref $design_name ./xdc/dynamic_region_synth.xdc

    #synth_design -include_dirs ${hlx_path}/src -top $design_name -verilog_define XSDB_SLV_DIS -mode out_of_context  -part [DEVICE_TYPE] 
    synth_design -include_dirs ${hlx_path}/src -top $design_name -mode out_of_context  -part [DEVICE_TYPE] 
    
    opt_design  -directive Explore

    write_checkpoint -force ./checkpoints/$design_name.post_synth_opt.dcp
    close_project
}

   if {${SHELL} == 1} {
    create_project -name shell -part [DEVICE_TYPE] -force 

    read_bd "${hlx_path}/BD/PCIe_Bridge_ICAP_complex/PCIe_Bridge_ICAP_complex.bd"
    read_ip "${hlx_path}/IP/ila_ICAP/ila_ICAP.xci"
    

    read_verilog [ list \
    ${hlx_path}/src/hlx_intfc.sv \
    ${hlx_path}/shell/src/SREF_ctrl_logic.v \
    ${hlx_path}/shell/src/pr_icap.v \
    ${hlx_path}/shell/src/sref_init_restore_sync.v \
    ${hlx_path}/shell/src/dynamic_region_BB.sv \
    ${hlx_path}/shell/src/shell_top.sv \
    ${hlx_path}/shell/src/$TOP_module.sv \
    ]
    


    read_xdc "${hlx_path}/shell/xdc/$TOP_module.xdc"

    synth_design -include_dirs ../src -top $TOP_module -part [DEVICE_TYPE] 
    
    read_checkpoint -cell U_dynamic_region ./checkpoints/$design_name.post_synth_opt.dcp
    write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_synth.dcp
    opt_design  -directive Explore

    set_property USER_CLOCK_ROOT X4Y7  [get_nets -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/ddr4_1/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]
    set_property USER_CLOCK_ROOT X4Y7  [get_nets -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/ddr4_1/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
    set_property USER_CLOCK_ROOT X2Y2  [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
    set_property USER_CLOCK_ROOT X2Y2  [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]
    set_property USER_CLOCK_ROOT X2Y8  [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
    set_property USER_CLOCK_ROOT X2Y8  [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]
    set_property USER_CLOCK_ROOT X2Y12 [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
    set_property USER_CLOCK_ROOT X2Y12 [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]

    create_clock -name 250M_PROG -period $ROLE_CLK_PERIOD [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]

    create_generated_clock -name 400M_PROG [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1] 
    create_generated_clock -name 300M_PROG [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT2] 
    create_generated_clock -name 250M [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/XDMA_BRIDGE/xdma_0/inst/pcie4_ip_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]
    create_generated_clock -name 125M [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]

    set_clock_groups -name CG_250M_PROG_CLK -asynchronous -group [ get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -group [get_clocks [list  [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/XDMA_BRIDGE/xdma_0/inst/pcie4_ip_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]]]
    set_clock_groups -name CG_400M_PROG_CLK -asynchronous -group [ get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1]] -group [get_clocks [list  [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/XDMA_BRIDGE/xdma_0/inst/pcie4_ip_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]]]
    set_clock_groups -name CG_300M_PROG_CLK -asynchronous -group [ get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT2]] -group [get_clocks [list  [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/XDMA_BRIDGE/xdma_0/inst/pcie4_ip_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]]]
    set_clock_groups -name PROG_CLKS -asynchronous -group [ get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]] -group [ get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1]] -group [ get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_PROG/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT2]]
 
    set_false_path -through [get_pins {U_shell_top/PCIe_Bridge_ICAP_complex_i/axi_gpio_0/gpio_io_*[*]}]

    read_xdc "./xdc/dynamic_region_impl.xdc"

    write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_synth_opt.dcp
    
    place_design -verbose -no_bufg_opt -directive Explore
    write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_place.dcp
    phys_opt_design  -verbose -directive Explore
    write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_place_phys_opt.dcp
    route_design  -verbose -directive Explore
    write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_route.dcp
    phys_opt_design  -verbose -directive Explore
    write_checkpoint -force ./shell_checkpoints/$TOP_module.$design_name.post_route_phys_opt.dcp
    write_debug_probes -force ./bitfiles/$TOP_module.ltx
    report_timing_summary -file ./reports/$TOP_module.$design_name.timing_summary.rpt
    report_drc -file ./reports/$TOP_module.drc.rpt

    set_param bitstream.enablePR 4123
    set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
    set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
    set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
    set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
    set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
    set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Disable [current_design]
    set_property CONFIG_MODE SPIx4 [current_design]
    set_property CONFIG_VOLTAGE 1.8 [current_design]
    set_property CFGBVS GND [current_design]
    write_bitstream -force -bin_file ./bitfiles/$TOP_module.$design_name.bit      
    write_cfgmem  -force -format mcs -size 512 -interface SPIx4 -loadbit "up 0x00000000 ./bitfiles/$TOP_module.$design_name.bit " -file "./bitfiles/$TOP_module.$design_name.mcs"

    write_checkpoint -force -cell U_dynamic_region ./shell_checkpoints/$design_name.post_route_phys_opt.dcp

    update_design -cell U_dynamic_region -black_box
    lock_design -level routing
    write_checkpoint -force ${hlx_path}/checkpoints/$TOP_module.routed_BB.dcp   
    close_project   
   
   }

#Combine dynamic region with the shell

   if {${IMPL} == 1} {

    create_project -in_memory -part [DEVICE_TYPE] 
    add_files  ${hlx_path}/checkpoints/$TOP_module.routed_BB.dcp
    read_checkpoint -cell U_dynamic_region ./checkpoints/$design_name.post_synth_opt.dcp
    link_design -top $TOP_module -part [DEVICE_TYPE] -reconfig_partitions {U_dynamic_region}
    opt_design -directive Explore

    set_property USER_CLOCK_ROOT X4Y7  [get_nets -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/ddr4_1/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]
    set_property USER_CLOCK_ROOT X4Y7  [get_nets -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/ddr4_1/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
    set_property USER_CLOCK_ROOT X2Y2  [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
    set_property USER_CLOCK_ROOT X2Y2  [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]
    set_property USER_CLOCK_ROOT X2Y8  [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
    set_property USER_CLOCK_ROOT X2Y8  [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]
    set_property USER_CLOCK_ROOT X2Y12 [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/inst/u_ddr4_infrastructure/u_bufg_divClk/O]]
    set_property USER_CLOCK_ROOT X2Y12 [get_nets -of_objects [get_pins U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/inst/u_ddr4_infrastructure/u_bufg_riuClk/O]]


    read_xdc "./xdc/dynamic_region_impl.xdc"

    write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_synth_opt.dcp
    place_design -verbose -no_bufg_opt -directive Explore
    write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_place.dcp
    phys_opt_design  -verbose -directive Explore
    write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_place_phys_opt.dcp
    route_design  -verbose -directive Explore
    write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_route.dcp
    phys_opt_design  -verbose -directive Explore
    write_checkpoint -force ./checkpoints/$TOP_module.$design_name.post_route_phys_opt.dcp
    write_debug_probes -force ./bitfiles/$TOP_module.$design_name.ltx
    report_timing_summary -file ./reports/$TOP_module.$design_name.timing_summary.rpt
    report_drc -file ./reports/$TOP_module.$design_name.drc.rpt

    write_checkpoint -force -cell U_dynamic_region ./checkpoints/$design_name.post_route_phys_opt.dcp

    set_param bitstream.enablePR 4123
    set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
    set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
    set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
    set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
    set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
    set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Disable [current_design]
    set_property CONFIG_MODE SPIx4 [current_design]
    set_property CONFIG_VOLTAGE 1.8 [current_design]
    set_property CFGBVS GND [current_design]
    write_bitstream -force -bin_file ./bitfiles/$TOP_module.$design_name.bit      
    close_project   
   
   
   }



