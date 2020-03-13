// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

module reset_module (
  input AXI_RESET_N,
  input CLK_IN_125M,
  input CLK_IN_250M,
  input CLK_IN_300M,
  input CLK_IN_400M,  
  input CLK_IN_PROG,
  
  output [0:3] CLK_IN_125M_rst_n,
  output [0:3] CLK_IN_125M_rst,

  output [0:3] CLK_IN_250M_rst_n,
  output [0:3] CLK_IN_250M_rst,

  output [0:3] CLK_IN_300M_rst_n,
  output [0:3] CLK_IN_300M_rst,

  output [0:3] CLK_IN_400M_rst_n,
  output [0:3] CLK_IN_400M_rst,

  output [0:3] CLK_IN_PROG_rst_n,
  output [0:3] CLK_IN_PROG_rst
  

  );


proc_sys_reset_module CLK_IN_125M (
  .slowest_sync_clk(CLK_IN_125M),          // input wire slowest_sync_clk
  .ext_reset_in(AXI_RESET_N),                  // input wire ext_reset_in
  .aux_reset_in(1'b0),                  // input wire aux_reset_in
  .mb_debug_sys_rst(1'b0),          // input wire mb_debug_sys_rst
  .dcm_locked(1'b1),                      // input wire dcm_locked
  .mb_reset(),                          // output wire mb_reset
  .bus_struct_reset(),          // output wire [0 : 0] bus_struct_reset
  .peripheral_reset(CLK_IN_125M_rst),          // output wire [0 : 3] peripheral_reset
  .interconnect_aresetn(),  // output wire [0 : 0] interconnect_aresetn
  .peripheral_aresetn(CLK_IN_125M_rst_n)      // output wire [0 : 3] peripheral_aresetn
);

proc_sys_reset_module CLK_IN_250M (
  .slowest_sync_clk(CLK_IN_250M),          // input wire slowest_sync_clk
  .ext_reset_in(AXI_RESET_N),                  // input wire ext_reset_in
  .aux_reset_in(1'b0),                  // input wire aux_reset_in
  .mb_debug_sys_rst(1'b0),          // input wire mb_debug_sys_rst
  .dcm_locked(1'b1),                      // input wire dcm_locked
  .mb_reset(),                          // output wire mb_reset
  .bus_struct_reset(),          // output wire [0 : 0] bus_struct_reset
  .peripheral_reset(CLK_IN_250M_rst),          // output wire [0 : 3] peripheral_reset
  .interconnect_aresetn(),  // output wire [0 : 0] interconnect_aresetn
  .peripheral_aresetn(CLK_IN_250M_rst_n)      // output wire [0 : 3] peripheral_aresetn
);

proc_sys_reset_module CLK_IN_300M (
  .slowest_sync_clk(CLK_IN_300M),          // input wire slowest_sync_clk
  .ext_reset_in(AXI_RESET_N),                  // input wire ext_reset_in
  .aux_reset_in(1'b0),                  // input wire aux_reset_in
  .mb_debug_sys_rst(1'b0),          // input wire mb_debug_sys_rst
  .dcm_locked(1'b1),                      // input wire dcm_locked
  .mb_reset(),                          // output wire mb_reset
  .bus_struct_reset(),          // output wire [0 : 0] bus_struct_reset
  .peripheral_reset(CLK_IN_300M_rst),          // output wire [0 : 3] peripheral_reset
  .interconnect_aresetn(),  // output wire [0 : 0] interconnect_aresetn
  .peripheral_aresetn(CLK_IN_300M_rst_n)      // output wire [0 : 3] peripheral_aresetn
);

proc_sys_reset_module CLK_IN_400M (
  .slowest_sync_clk(CLK_IN_400M),          // input wire slowest_sync_clk
  .ext_reset_in(AXI_RESET_N),                  // input wire ext_reset_in
  .aux_reset_in(1'b0),                  // input wire aux_reset_in
  .mb_debug_sys_rst(1'b0),          // input wire mb_debug_sys_rst
  .dcm_locked(1'b1),                      // input wire dcm_locked
  .mb_reset(),                          // output wire mb_reset
  .bus_struct_reset(),          // output wire [0 : 0] bus_struct_reset
  .peripheral_reset(CLK_IN_400M_rst),          // output wire [0 : 3] peripheral_reset
  .interconnect_aresetn(),  // output wire [0 : 0] interconnect_aresetn
  .peripheral_aresetn(CLK_IN_400M_rst_n)      // output wire [0 : 3] peripheral_aresetn
);

proc_sys_reset_module CLK_IN_PROG (
  .slowest_sync_clk(CLK_IN_PROG),          // input wire slowest_sync_clk
  .ext_reset_in(AXI_RESET_N),                  // input wire ext_reset_in
  .aux_reset_in(1'b0),                  // input wire aux_reset_in
  .mb_debug_sys_rst(1'b0),          // input wire mb_debug_sys_rst
  .dcm_locked(1'b1),                      // input wire dcm_locked
  .mb_reset(),                          // output wire mb_reset
  .bus_struct_reset(),          // output wire [0 : 0] bus_struct_reset
  .peripheral_reset(CLK_IN_PROG_rst),          // output wire [0 : 3] peripheral_reset
  .interconnect_aresetn(),  // output wire [0 : 0] interconnect_aresetn
  .peripheral_aresetn(CLK_IN_PROG_rst_n)      // output wire [0 : 3] peripheral_aresetn
);

endmodule
