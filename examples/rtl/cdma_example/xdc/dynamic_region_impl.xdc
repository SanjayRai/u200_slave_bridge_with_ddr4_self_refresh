#Add dynamic region floorplan + dynamic region shell timing constaints in this file. 

#SLR Pblocks

create_pblock pblock_dynamic_SLR2
resize_pblock [get_pblocks pblock_dynamic_SLR2] -add {CLOCKREGION_X0Y10:CLOCKREGION_X5Y14}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR2]
set_property PARENT pblock_dynamic_region  [get_pblocks pblock_dynamic_SLR2] -quiet
#add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells -of [get_pins -leaf -of [get_nets U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3/inst/u_ddr4_infrastructure/div_clk]]] -quiet

create_pblock pblock_dynamic_SLR1
resize_pblock [get_pblocks pblock_dynamic_SLR1] -add {CLOCKREGION_X0Y5:CLOCKREGION_X3Y9}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR1]
set_property PARENT pblock_dynamic_region  [get_pblocks pblock_dynamic_SLR1]
#add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] [get_cells -of [get_pins -leaf -of [get_nets U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2/inst/u_ddr4_infrastructure/div_clk]]]

create_pblock pblock_dynamic_SLR0
resize_pblock [get_pblocks pblock_dynamic_SLR0] -add {CLOCKREGION_X0Y0:CLOCKREGION_X5Y4}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR0]
set_property PARENT pblock_dynamic_region  [get_pblocks pblock_dynamic_SLR0]
#add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells -of [get_pins -leaf -of [get_nets U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0/inst/u_ddr4_infrastructure/div_clk]]]


#Relax DDR4 IPs

create_pblock pblock_dynamic_SLR2_ddr4_mem03
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2_ddr4_mem03] [get_cells U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/ddr4_3] 
resize_pblock [get_pblocks pblock_dynamic_SLR2_ddr4_mem03] -add {CLOCKREGION_X3Y11:CLOCKREGION_X4Y13}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR2_ddr4_mem03]
set_property PARENT pblock_dynamic_SLR2 [get_pblocks pblock_dynamic_SLR2_ddr4_mem03]

create_pblock pblock_dynamic_SLR1_ddr4_mem02
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1_ddr4_mem02] [get_cells U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_2/ddr4_2]
resize_pblock [get_pblocks pblock_dynamic_SLR1_ddr4_mem02] -add {CLOCKREGION_X1Y7:CLOCKREGION_X2Y9}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR1_ddr4_mem02]
set_property PARENT pblock_dynamic_SLR1 [get_pblocks pblock_dynamic_SLR1_ddr4_mem02]

create_pblock pblock_dynamic_SLR0_ddr4_mem00
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0_ddr4_mem00] [get_cells  U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/ddr4_0]
resize_pblock [get_pblocks pblock_dynamic_SLR0_ddr4_mem00] -add {CLOCKREGION_X1Y1:CLOCKREGION_X2Y3}
set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_SLR0_ddr4_mem00]
set_property PARENT pblock_dynamic_SLR0 [get_pblocks pblock_dynamic_SLR0_ddr4_mem00]

#Loc IPs in the correct SLR based upon DDR4 locs, loc register slice SRL for AXI4MM and AXI4Lite for MIG0/MIG3
#Top
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells [list U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/MIG_CLOCK_CONV_3/axi_clock_converter_1 U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_3/MIG_CLOCK_CONV_3/axi_register_slice_3]]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells [list U_dynamic_region/dyn_axi4mm_slr_reg_slice_mig3/inst/*.slr_slave_*]]

add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells [list U_dynamic_region/dyn_axi4lite_slr_reg_slice_mig3/inst/*.slr_slave_*]]


#Middle
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] [get_cells [list U_dynamic_region/dyn_axi4mm_slr_reg_slice_mig0/inst/*.slr_master_*]]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] [get_cells [list U_dynamic_region/dyn_axi4mm_slr_reg_slice_mig3/inst/*.slr_master_*]]

add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] [get_cells [list U_dynamic_region/dyn_axi4lite_slr_reg_slice_mig0/inst/*.slr_master_*]]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] [get_cells [list U_dynamic_region/dyn_axi4lite_slr_reg_slice_mig3/inst/*.slr_master_*]]

#Bottom
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells [list U_dynamic_region/dynamic_region_ddr4_i/DDR_SUB_SYS/PR_DDR4_MIG_0/MIG_CLOCK_CONV_0]]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells [list U_dynamic_region/dyn_axi4mm_slr_reg_slice_mig0/inst/*.slr_slave_*]]

add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells [list U_dynamic_region/dyn_axi4lite_slr_reg_slice_mig0/inst/*.slr_slave_*]]



