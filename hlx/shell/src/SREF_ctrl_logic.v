// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

module SREF_ctrl_logic (
    input wire ddr4_app_sref_ack,
    output wire ddr4_app_xsdb_select,
    output wire ddr4_app_mem_init_skip,
    output wire ddr4_app_restore_complete,
    output wire ddr4_app_sref_req,
    input wire [7:0] DDR_SREF_CTRL_IN,
    output wire [7:0] DDR_SREF_CTRL_OUT
);

  assign DDR_SREF_CTRL_OUT[7] = ddr4_app_sref_ack;
  assign DDR_SREF_CTRL_OUT[6:5] = 2'b00; 
  assign DDR_SREF_CTRL_OUT[4:0] = DDR_SREF_CTRL_OUT[4:0];

  assign ddr4_app_xsdb_select = DDR_SREF_CTRL_IN[4];
  assign ddr4_app_mem_init_skip = DDR_SREF_CTRL_IN[3];
  assign ddr4_app_restore_complete = DDR_SREF_CTRL_IN[2];
  assign ddr4_app_sref_req = DDR_SREF_CTRL_IN[0];


endmodule
