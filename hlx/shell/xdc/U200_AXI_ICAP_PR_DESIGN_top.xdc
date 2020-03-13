create_clock -name sys_clk -period 10 [get_ports sys_clk_p]
set_property PACKAGE_PIN AM11 [get_ports sys_clk_p]

set_false_path -from [get_ports sys_rst_n]

set_false_path -through [get_pins "U_shell_top/PCIe_Bridge_ICAP_complex_i/CL_RST/rst_250M_MIG*/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/Q"]
set_false_path -through [get_pins "U_shell_top/PCIe_Bridge_ICAP_complex_i/axi_gpio_C*_SREF/U0/gpio_core_*/Dual.gpio_Data_Out_reg[*]/Q"]

# perst_n
set_property LOC BD21  [get_ports sys_rst_n]
set_property PULLUP true [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS12 [get_ports sys_rst_n]

create_pblock pblock_dynamic_region
add_cells_to_pblock [get_pblocks pblock_dynamic_region] [get_cells U_dynamic_region]
#resize_pblock [get_pblocks pblock_dynamic_region] -add {CLOCKREGION_X0Y10:CLOCKREGION_X5Y14 CLOCKREGION_X0Y5:CLOCKREGION_X2Y9 CLOCKREGION_X0Y0:CLOCKREGION_X5Y4}
resize_pblock [get_pblocks pblock_dynamic_region] -add {CLOCKREGION_X0Y10:CLOCKREGION_X5Y14 CLOCKREGION_X0Y5:CLOCKREGION_X3Y9 CLOCKREGION_X0Y0:CLOCKREGION_X5Y4}

set_property PARTPIN_SPREADING 3 [get_pblocks pblock_dynamic_region]
set_property HD.RECONFIGURABLE true [get_cells U_dynamic_region]

create_pblock pblock_U_shell_top
add_cells_to_pblock [get_pblocks pblock_U_shell_top] [get_cells -quiet [list U_shell_top]]
#resize_pblock [get_pblocks pblock_U_shell_top] -add {CLOCKREGION_X3Y5:CLOCKREGION_X5Y9}
resize_pblock [get_pblocks pblock_U_shell_top] -add {CLOCKREGION_X4Y5:CLOCKREGION_X5Y9}

set_property PARTPIN_SPREADING 3 [get_pblocks pblock_U_shell_top]

set_clock_groups -name TIG_001 -asynchronous -group [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/XDMA_BRIDGE/xdma_0/inst/pcie4_ip_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] -group [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]
set_clock_groups -name TIG_002 -asynchronous -group [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/XDMA_BRIDGE/xdma_0/inst/pcie4_ip_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] -group [get_clocks -of_objects [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT1]]



set_max_delay -datapath_only -from [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/XDMA_BRIDGE/xdma_0/inst/pcie4_ip_i/inst/user_lnk_up_reg/C ] -to [get_pins U_shell_top/PCIe_Bridge_ICAP_complex_i/rst_50M/U0/EXT_LPF/lpf_int_reg/D] 10.0


# Configuration
# ------------------------------------------------------------------------------
set_property CONFIG_VOLTAGE 1.8                      [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable  [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE         [current_design]
set_property CONFIG_MODE SPIx8                       [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8         [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Disable [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES      [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup       [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes     [current_design]

# Relevant constraints from DDR4 IP
# ------------------------------------------------------------------------------

set_property PACKAGE_PIN AW20       [get_ports c1_sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports c1_sys_clk_p]
set_property PACKAGE_PIN AW19       [get_ports c1_sys_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports c1_sys_clk_n]

set_property PACKAGE_PIN AR13       [get_ports {c1_ddr4_dq[25]}]
set_property PACKAGE_PIN AP13       [get_ports {c1_ddr4_dq[27]}]
set_property PACKAGE_PIN AN13       [get_ports {c1_ddr4_dq[24]}]
set_property PACKAGE_PIN AM13       [get_ports {c1_ddr4_dq[26]}]
set_property PACKAGE_PIN AT13       [get_ports {c1_ddr4_dqs_c[6]}]
set_property PACKAGE_PIN AT14       [get_ports {c1_ddr4_dqs_t[6]}]
set_property PACKAGE_PIN AM14       [get_ports {c1_ddr4_dq[28]}]
set_property PACKAGE_PIN AL14       [get_ports {c1_ddr4_dq[30]}]
set_property PACKAGE_PIN AT15       [get_ports {c1_ddr4_dq[31]}]
set_property PACKAGE_PIN AR15       [get_ports {c1_ddr4_dq[29]}]
set_property PACKAGE_PIN AP14       [get_ports {c1_ddr4_dqs_c[7]}]
set_property PACKAGE_PIN AN14       [get_ports {c1_ddr4_dqs_t[7]}]
set_property PACKAGE_PIN AW13       [get_ports {c1_ddr4_dq[10]}]
set_property PACKAGE_PIN AW14       [get_ports {c1_ddr4_dq[11]}]
set_property PACKAGE_PIN AV13       [get_ports {c1_ddr4_dq[9]}]
set_property PACKAGE_PIN AU13       [get_ports {c1_ddr4_dq[8]}]
set_property PACKAGE_PIN AY15       [get_ports {c1_ddr4_dqs_c[2]}]
set_property PACKAGE_PIN AW15       [get_ports {c1_ddr4_dqs_t[2]}]
set_property PACKAGE_PIN AV14       [get_ports {c1_ddr4_dq[14]}]
set_property PACKAGE_PIN AU14       [get_ports {c1_ddr4_dq[12]}]
set_property PACKAGE_PIN BA11       [get_ports {c1_ddr4_dq[15]}]
set_property PACKAGE_PIN AY11       [get_ports {c1_ddr4_dq[13]}]
set_property PACKAGE_PIN AY12       [get_ports {c1_ddr4_dqs_c[3]}]
set_property PACKAGE_PIN AY13       [get_ports {c1_ddr4_dqs_t[3]}]
set_property PACKAGE_PIN BB12       [get_ports {c1_ddr4_dq[17]}]
set_property PACKAGE_PIN BA12       [get_ports {c1_ddr4_dq[16]}]
set_property PACKAGE_PIN BA13       [get_ports {c1_ddr4_dq[18]}]
set_property PACKAGE_PIN BA14       [get_ports {c1_ddr4_dq[19]}]
set_property PACKAGE_PIN BB10       [get_ports {c1_ddr4_dqs_c[4]}]
set_property PACKAGE_PIN BB11       [get_ports {c1_ddr4_dqs_t[4]}]
set_property PACKAGE_PIN BA7        [get_ports {c1_ddr4_dq[22]}]
set_property PACKAGE_PIN BA8        [get_ports {c1_ddr4_dq[23]}]
set_property PACKAGE_PIN BC9        [get_ports {c1_ddr4_dq[20]}]
set_property PACKAGE_PIN BB9        [get_ports {c1_ddr4_dq[21]}]
set_property PACKAGE_PIN BA9        [get_ports {c1_ddr4_dqs_c[5]}]
set_property PACKAGE_PIN BA10       [get_ports {c1_ddr4_dqs_t[5]}]
set_property PACKAGE_PIN BD8        [get_ports {c1_ddr4_dq[3]}]
set_property PACKAGE_PIN BD9        [get_ports {c1_ddr4_dq[0]}]
set_property PACKAGE_PIN BD7        [get_ports {c1_ddr4_dq[1]}]
set_property PACKAGE_PIN BC7        [get_ports {c1_ddr4_dq[2]}]
set_property PACKAGE_PIN BF9        [get_ports {c1_ddr4_dqs_c[0]}]
set_property PACKAGE_PIN BF10       [get_ports {c1_ddr4_dqs_t[0]}]
set_property PACKAGE_PIN BF7        [get_ports {c1_ddr4_dq[7]}]
set_property PACKAGE_PIN BE7        [get_ports {c1_ddr4_dq[6]}]
set_property PACKAGE_PIN BE10       [get_ports {c1_ddr4_dq[5]}]
set_property PACKAGE_PIN BD10       [get_ports {c1_ddr4_dq[4]}]
set_property PACKAGE_PIN BF8        [get_ports {c1_ddr4_dqs_c[1]}]
set_property PACKAGE_PIN BE8        [get_ports {c1_ddr4_dqs_t[1]}]
set_property PACKAGE_PIN AN16       [get_ports {c1_ddr4_dq[59]}]
set_property PACKAGE_PIN AN17       [get_ports {c1_ddr4_dq[58]}]
set_property PACKAGE_PIN AM15       [get_ports {c1_ddr4_dq[56]}]
set_property PACKAGE_PIN AL15       [get_ports {c1_ddr4_dq[57]}]
set_property PACKAGE_PIN AR16       [get_ports {c1_ddr4_dqs_c[14]}]
set_property PACKAGE_PIN AP16       [get_ports {c1_ddr4_dqs_t[14]}]
set_property PACKAGE_PIN AL16       [get_ports {c1_ddr4_dq[63]}]
set_property PACKAGE_PIN AL17       [get_ports {c1_ddr4_dq[62]}]
set_property PACKAGE_PIN AR18       [get_ports {c1_ddr4_dq[60]}]
set_property PACKAGE_PIN AP18       [get_ports {c1_ddr4_dq[61]}]
set_property PACKAGE_PIN AM16       [get_ports {c1_ddr4_dqs_c[15]}]
set_property PACKAGE_PIN AM17       [get_ports {c1_ddr4_dqs_t[15]}]
set_property PACKAGE_PIN AR17       [get_ports {c1_ddr4_reset_n}]
set_property PACKAGE_PIN AV16       [get_ports {c1_ddr4_dq[48]}]
set_property PACKAGE_PIN AV17       [get_ports {c1_ddr4_dq[49]}]
set_property PACKAGE_PIN AU16       [get_ports {c1_ddr4_dq[50]}]
set_property PACKAGE_PIN AU17       [get_ports {c1_ddr4_dq[51]}]
set_property PACKAGE_PIN AW18       [get_ports {c1_ddr4_dqs_c[12]}]
set_property PACKAGE_PIN AV18       [get_ports {c1_ddr4_dqs_t[12]}]
set_property PACKAGE_PIN AT17       [get_ports {c1_ddr4_dq[55]}]
set_property PACKAGE_PIN AT18       [get_ports {c1_ddr4_dq[54]}]
set_property PACKAGE_PIN BB16       [get_ports {c1_ddr4_dq[53]}]
set_property PACKAGE_PIN BB17       [get_ports {c1_ddr4_dq[52]}]
set_property PACKAGE_PIN AY16       [get_ports {c1_ddr4_dqs_c[13]}]
set_property PACKAGE_PIN AW16       [get_ports {c1_ddr4_dqs_t[13]}]
set_property PACKAGE_PIN BA17       [get_ports {c1_ddr4_dq[41]}]
set_property PACKAGE_PIN BA18       [get_ports {c1_ddr4_dq[43]}]
set_property PACKAGE_PIN AY17       [get_ports {c1_ddr4_dq[40]}]
set_property PACKAGE_PIN AY18       [get_ports {c1_ddr4_dq[42]}]
set_property PACKAGE_PIN BC12       [get_ports {c1_ddr4_dqs_c[10]}]
set_property PACKAGE_PIN BC13       [get_ports {c1_ddr4_dqs_t[10]}]
set_property PACKAGE_PIN BB15       [get_ports {c1_ddr4_dq[45]}]
set_property PACKAGE_PIN BA15       [get_ports {c1_ddr4_dq[44]}]
set_property PACKAGE_PIN BD11       [get_ports {c1_ddr4_dq[47]}]
set_property PACKAGE_PIN BC11       [get_ports {c1_ddr4_dq[46]}]
set_property PACKAGE_PIN BC14       [get_ports {c1_ddr4_dqs_c[11]}]
set_property PACKAGE_PIN BB14       [get_ports {c1_ddr4_dqs_t[11]}]
set_property PACKAGE_PIN BF12       [get_ports {c1_ddr4_dq[34]}]
set_property PACKAGE_PIN BE13       [get_ports {c1_ddr4_dq[32]}]
set_property PACKAGE_PIN BD13       [get_ports {c1_ddr4_dq[35]}]
set_property PACKAGE_PIN BD14       [get_ports {c1_ddr4_dq[33]}]
set_property PACKAGE_PIN BE11       [get_ports {c1_ddr4_dqs_c[8]}]
set_property PACKAGE_PIN BE12       [get_ports {c1_ddr4_dqs_t[8]}]
set_property PACKAGE_PIN BD15       [get_ports {c1_ddr4_dq[36]}]
set_property PACKAGE_PIN BD16       [get_ports {c1_ddr4_dq[37]}]
set_property PACKAGE_PIN BF13       [get_ports {c1_ddr4_dq[39]}]
set_property PACKAGE_PIN BF14       [get_ports {c1_ddr4_dq[38]}]
set_property PACKAGE_PIN BF15       [get_ports {c1_ddr4_dqs_c[9]}]
set_property PACKAGE_PIN BE15       [get_ports {c1_ddr4_dqs_t[9]}]
set_property PACKAGE_PIN AP26       [get_ports {c1_ddr4_ba[1]}]
set_property PACKAGE_PIN AN26       [get_ports {c1_ddr4_adr[3]}]
set_property PACKAGE_PIN AM26       [get_ports {c1_ddr4_adr[10]}]
set_property PACKAGE_PIN AM25       [get_ports {c1_ddr4_adr[15]}]
set_property PACKAGE_PIN AL25       [get_ports {c1_ddr4_adr[14]}]
set_property PACKAGE_PIN AL24       [get_ports {c1_ddr4_adr[13]}]
set_property PACKAGE_PIN AN24       [get_ports {c1_ddr4_adr[0]}]
set_property PACKAGE_PIN AN23       [get_ports {c1_ddr4_adr[16]}]
set_property PACKAGE_PIN AU24       [get_ports {c1_ddr4_ba[0]}]
set_property PACKAGE_PIN AT24       [get_ports {c1_ddr4_adr[1]}]
set_property PACKAGE_PIN AT23       [get_ports {c1_ddr4_par}]
set_property PACKAGE_PIN AU25       [get_ports {c1_ddr4_ck_c[0]}]
set_property PACKAGE_PIN AT25       [get_ports {c1_ddr4_ck_t[0]}]
set_property PACKAGE_PIN AV24       [get_ports {c1_ddr4_adr[6]}]
set_property PACKAGE_PIN AV23       [get_ports {c1_ddr4_cs_n[0]}]
set_property PACKAGE_PIN AW26       [get_ports {c1_ddr4_bg[1]}]
set_property PACKAGE_PIN AW25       [get_ports {c1_ddr4_act_n}]
set_property PACKAGE_PIN BA25       [get_ports {c1_ddr4_adr[11]}]
set_property PACKAGE_PIN AW24       [get_ports {c1_ddr4_adr[2]}]
set_property PACKAGE_PIN AW23       [get_ports {c1_ddr4_odt[0]}]
set_property PACKAGE_PIN AY25       [get_ports {c1_ddr4_adr[8]}]
set_property PACKAGE_PIN AY23       [get_ports {c1_ddr4_adr[5]}]
set_property PACKAGE_PIN AY22       [get_ports {c1_ddr4_adr[4]}]
set_property PACKAGE_PIN BB25       [get_ports {c1_ddr4_cke[0]}]
set_property PACKAGE_PIN BA23       [get_ports {c1_ddr4_adr[9]}]
set_property PACKAGE_PIN BA22       [get_ports {c1_ddr4_adr[7]}]
set_property PACKAGE_PIN BC22       [get_ports {c1_ddr4_bg[0]}]
set_property PACKAGE_PIN BB22       [get_ports {c1_ddr4_adr[12]}]
set_property PACKAGE_PIN BE25       [get_ports {c1_ddr4_dq[67]}]
set_property PACKAGE_PIN BD25       [get_ports {c1_ddr4_dq[66]}]
set_property PACKAGE_PIN BF25       [get_ports {c1_ddr4_dq[64]}]
set_property PACKAGE_PIN BF24       [get_ports {c1_ddr4_dq[65]}]
set_property PACKAGE_PIN BD24       [get_ports {c1_ddr4_dqs_c[16]}]
set_property PACKAGE_PIN BC24       [get_ports {c1_ddr4_dqs_t[16]}]
set_property PACKAGE_PIN BF23       [get_ports {c1_ddr4_dq[70]}]
set_property PACKAGE_PIN BE23       [get_ports {c1_ddr4_dq[71]}]
set_property PACKAGE_PIN BD23       [get_ports {c1_ddr4_dq[68]}]
set_property PACKAGE_PIN BC23       [get_ports {c1_ddr4_dq[69]}]
set_property PACKAGE_PIN BF22       [get_ports {c1_ddr4_dqs_c[17]}]
set_property PACKAGE_PIN BE22       [get_ports {c1_ddr4_dqs_t[17]}]

############################################################################################################################
# These constraints were originally from the VCU1525 DSA

# RESET_GATE (for DDR4 Self Refresh)
set_property LOC AU21  [get_ports RESET_GATE]
set_property PULLTYPE NONE [get_ports [list RESET_GATE]]
set_property IOSTANDARD LVCMOS12 [get_ports RESET_GATE]


set_property DRIVE 4 [get_ports BMC_GPIO_tri_io[*]]
set_property IOSTANDARD LVCMOS12 [get_ports BMC_GPIO_tri_io[*]]
set_property SLEW SLOW [get_ports BMC_GPIO_tri_io[*]]
set_property PACKAGE_PIN AN21 [get_ports BMC_GPIO_tri_io[3]]
set_property PACKAGE_PIN AM21 [get_ports BMC_GPIO_tri_io[2]]
set_property PACKAGE_PIN AM20 [get_ports BMC_GPIO_tri_io[1]]
set_property PACKAGE_PIN AR20 [get_ports BMC_GPIO_tri_io[0]]

set_property DRIVE 4 [get_ports BMC_UART_txd]
set_property IOSTANDARD LVCMOS12 [get_ports BMC_UART_txd]
set_property SLEW SLOW [get_ports BMC_UART_txd]
set_property PACKAGE_PIN BB19 [get_ports BMC_UART_txd]

set_property IOSTANDARD LVCMOS12 [get_ports BMC_UART_rxd]
set_property PACKAGE_PIN BA19 [get_ports BMC_UART_rxd]





# AXI IIC controller
set_property DRIVE 8 [get_ports iic_scl_io]
set_property IOSTANDARD LVCMOS12 [get_ports iic_scl_io]
set_property SLEW SLOW [get_ports iic_scl_io]
set_property PACKAGE_PIN BF20 [get_ports iic_scl_io]
set_property DRIVE 8 [get_ports iic_sda_io]
set_property IOSTANDARD LVCMOS12 [get_ports iic_sda_io]
set_property SLEW SLOW [get_ports iic_sda_io]
set_property PACKAGE_PIN BF17 [get_ports iic_sda_io]


# AXI QSPI constraints
set tdata_trace_delay_max 0.47
set tdata_trace_delay_min 0.35
set tclk_trace_delay_max 0.37
set tclk_trace_delay_min 0.31
set tco_max 7.7
set tco_min 0.25
set tsu 1.75
set th 2.5
create_generated_clock -name clk_sck -source [get_pins -hierarchical *flash_programmer/ext_spi_clk] [get_pins -hierarchical *inst/CCLK] -edges {1 3 5}
set_input_delay -clock clk_sck -max [expr $tco_max + $tdata_trace_delay_max + $tclk_trace_delay_max] [get_pins -hierarchical *STARTUP*/DATA_IN[*]] -clock_fall;
set_input_delay -clock clk_sck -min [expr $tco_min + $tdata_trace_delay_min + $tclk_trace_delay_min] [get_pins -hierarchical *STARTUP*/DATA_IN[*]] -clock_fall;
set_multicycle_path 2 -setup -from clk_sck -to [get_clocks -of_objects [get_pins -hierarchical *flash_programmer/ext_spi_clk]]
set_multicycle_path 1 -hold -end -from clk_sck -to [get_clocks -of_objects [get_pins -hierarchical *flash_programmer/ext_spi_clk]]
set_output_delay -clock clk_sck -max [expr $tsu + $tdata_trace_delay_max - $tclk_trace_delay_min] [get_pins -hierarchical *STARTUP*/DATA_OUT[*]];
set_output_delay -clock clk_sck -min [expr $tdata_trace_delay_min -$th - $tclk_trace_delay_max] [get_pins -hierarchical *STARTUP*/DATA_OUT[*]];
set_multicycle_path 1 -hold -from [get_clocks -of_objects [get_pins -hierarchical *flash_programmer/ext_spi_clk]] -to clk_sck
# The above constraints were originally from the VCU1525 DSA
############################################################################################################################
