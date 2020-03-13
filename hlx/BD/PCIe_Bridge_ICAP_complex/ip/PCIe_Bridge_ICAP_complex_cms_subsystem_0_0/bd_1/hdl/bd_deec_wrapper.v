//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_deec_wrapper.bd
//Design : bd_deec_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_deec_wrapper
   (aclk_ctrl,
    aresetn_ctrl,
    hbm_temp_1,
    hbm_temp_2,
    interrupt_hbm_cattrip,
    interrupt_host,
    mdm_debug_sys_rst,
    mdm_mbdebug_capture,
    mdm_mbdebug_clk,
    mdm_mbdebug_disable,
    mdm_mbdebug_reg_en,
    mdm_mbdebug_rst,
    mdm_mbdebug_shift,
    mdm_mbdebug_tdi,
    mdm_mbdebug_tdo,
    mdm_mbdebug_update,
    qsfp0_int_l,
    qsfp0_lpmode,
    qsfp0_modprs_l,
    qsfp0_modsel_l,
    qsfp0_reset_l,
    qsfp1_int_l,
    qsfp1_lpmode,
    qsfp1_modprs_l,
    qsfp1_modsel_l,
    qsfp1_reset_l,
    s_axi_ctrl_mgmt_araddr,
    s_axi_ctrl_mgmt_arprot,
    s_axi_ctrl_mgmt_arready,
    s_axi_ctrl_mgmt_arvalid,
    s_axi_ctrl_mgmt_awaddr,
    s_axi_ctrl_mgmt_awprot,
    s_axi_ctrl_mgmt_awready,
    s_axi_ctrl_mgmt_awvalid,
    s_axi_ctrl_mgmt_bready,
    s_axi_ctrl_mgmt_bresp,
    s_axi_ctrl_mgmt_bvalid,
    s_axi_ctrl_mgmt_rdata,
    s_axi_ctrl_mgmt_rready,
    s_axi_ctrl_mgmt_rresp,
    s_axi_ctrl_mgmt_rvalid,
    s_axi_ctrl_mgmt_wdata,
    s_axi_ctrl_mgmt_wready,
    s_axi_ctrl_mgmt_wstrb,
    s_axi_ctrl_mgmt_wvalid,
    satellite_gpio_tri_io,
    satellite_uart_rxd,
    satellite_uart_txd);
  input aclk_ctrl;
  input aresetn_ctrl;
  input [6:0]hbm_temp_1;
  input [6:0]hbm_temp_2;
  input [0:0]interrupt_hbm_cattrip;
  output interrupt_host;
  input mdm_debug_sys_rst;
  input mdm_mbdebug_capture;
  input mdm_mbdebug_clk;
  input mdm_mbdebug_disable;
  input [0:7]mdm_mbdebug_reg_en;
  input mdm_mbdebug_rst;
  input mdm_mbdebug_shift;
  input mdm_mbdebug_tdi;
  output mdm_mbdebug_tdo;
  input mdm_mbdebug_update;
  input [0:0]qsfp0_int_l;
  output [0:0]qsfp0_lpmode;
  input [0:0]qsfp0_modprs_l;
  output [0:0]qsfp0_modsel_l;
  output [0:0]qsfp0_reset_l;
  input [0:0]qsfp1_int_l;
  output [0:0]qsfp1_lpmode;
  input [0:0]qsfp1_modprs_l;
  output [0:0]qsfp1_modsel_l;
  output [0:0]qsfp1_reset_l;
  input [17:0]s_axi_ctrl_mgmt_araddr;
  input [2:0]s_axi_ctrl_mgmt_arprot;
  output [0:0]s_axi_ctrl_mgmt_arready;
  input [0:0]s_axi_ctrl_mgmt_arvalid;
  input [17:0]s_axi_ctrl_mgmt_awaddr;
  input [2:0]s_axi_ctrl_mgmt_awprot;
  output [0:0]s_axi_ctrl_mgmt_awready;
  input [0:0]s_axi_ctrl_mgmt_awvalid;
  input [0:0]s_axi_ctrl_mgmt_bready;
  output [1:0]s_axi_ctrl_mgmt_bresp;
  output [0:0]s_axi_ctrl_mgmt_bvalid;
  output [31:0]s_axi_ctrl_mgmt_rdata;
  input [0:0]s_axi_ctrl_mgmt_rready;
  output [1:0]s_axi_ctrl_mgmt_rresp;
  output [0:0]s_axi_ctrl_mgmt_rvalid;
  input [31:0]s_axi_ctrl_mgmt_wdata;
  output [0:0]s_axi_ctrl_mgmt_wready;
  input [3:0]s_axi_ctrl_mgmt_wstrb;
  input [0:0]s_axi_ctrl_mgmt_wvalid;
  inout [3:0]satellite_gpio_tri_io;
  input satellite_uart_rxd;
  output satellite_uart_txd;

  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [6:0]hbm_temp_1;
  wire [6:0]hbm_temp_2;
  wire [0:0]interrupt_hbm_cattrip;
  wire interrupt_host;
  wire mdm_debug_sys_rst;
  wire mdm_mbdebug_capture;
  wire mdm_mbdebug_clk;
  wire mdm_mbdebug_disable;
  wire [0:7]mdm_mbdebug_reg_en;
  wire mdm_mbdebug_rst;
  wire mdm_mbdebug_shift;
  wire mdm_mbdebug_tdi;
  wire mdm_mbdebug_tdo;
  wire mdm_mbdebug_update;
  wire [0:0]qsfp0_int_l;
  wire [0:0]qsfp0_lpmode;
  wire [0:0]qsfp0_modprs_l;
  wire [0:0]qsfp0_modsel_l;
  wire [0:0]qsfp0_reset_l;
  wire [0:0]qsfp1_int_l;
  wire [0:0]qsfp1_lpmode;
  wire [0:0]qsfp1_modprs_l;
  wire [0:0]qsfp1_modsel_l;
  wire [0:0]qsfp1_reset_l;
  wire [17:0]s_axi_ctrl_mgmt_araddr;
  wire [2:0]s_axi_ctrl_mgmt_arprot;
  wire [0:0]s_axi_ctrl_mgmt_arready;
  wire [0:0]s_axi_ctrl_mgmt_arvalid;
  wire [17:0]s_axi_ctrl_mgmt_awaddr;
  wire [2:0]s_axi_ctrl_mgmt_awprot;
  wire [0:0]s_axi_ctrl_mgmt_awready;
  wire [0:0]s_axi_ctrl_mgmt_awvalid;
  wire [0:0]s_axi_ctrl_mgmt_bready;
  wire [1:0]s_axi_ctrl_mgmt_bresp;
  wire [0:0]s_axi_ctrl_mgmt_bvalid;
  wire [31:0]s_axi_ctrl_mgmt_rdata;
  wire [0:0]s_axi_ctrl_mgmt_rready;
  wire [1:0]s_axi_ctrl_mgmt_rresp;
  wire [0:0]s_axi_ctrl_mgmt_rvalid;
  wire [31:0]s_axi_ctrl_mgmt_wdata;
  wire [0:0]s_axi_ctrl_mgmt_wready;
  wire [3:0]s_axi_ctrl_mgmt_wstrb;
  wire [0:0]s_axi_ctrl_mgmt_wvalid;
  wire [0:0]satellite_gpio_tri_i_0;
  wire [1:1]satellite_gpio_tri_i_1;
  wire [2:2]satellite_gpio_tri_i_2;
  wire [3:3]satellite_gpio_tri_i_3;
  wire [0:0]satellite_gpio_tri_io_0;
  wire [1:1]satellite_gpio_tri_io_1;
  wire [2:2]satellite_gpio_tri_io_2;
  wire [3:3]satellite_gpio_tri_io_3;
  wire [0:0]satellite_gpio_tri_o_0;
  wire [1:1]satellite_gpio_tri_o_1;
  wire [2:2]satellite_gpio_tri_o_2;
  wire [3:3]satellite_gpio_tri_o_3;
  wire [0:0]satellite_gpio_tri_t_0;
  wire [1:1]satellite_gpio_tri_t_1;
  wire [2:2]satellite_gpio_tri_t_2;
  wire [3:3]satellite_gpio_tri_t_3;
  wire satellite_uart_rxd;
  wire satellite_uart_txd;

  bd_deec bd_deec_i
       (.aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .hbm_temp_1(hbm_temp_1),
        .hbm_temp_2(hbm_temp_2),
        .interrupt_hbm_cattrip(interrupt_hbm_cattrip),
        .interrupt_host(interrupt_host),
        .mdm_debug_sys_rst(mdm_debug_sys_rst),
        .mdm_mbdebug_capture(mdm_mbdebug_capture),
        .mdm_mbdebug_clk(mdm_mbdebug_clk),
        .mdm_mbdebug_disable(mdm_mbdebug_disable),
        .mdm_mbdebug_reg_en(mdm_mbdebug_reg_en),
        .mdm_mbdebug_rst(mdm_mbdebug_rst),
        .mdm_mbdebug_shift(mdm_mbdebug_shift),
        .mdm_mbdebug_tdi(mdm_mbdebug_tdi),
        .mdm_mbdebug_tdo(mdm_mbdebug_tdo),
        .mdm_mbdebug_update(mdm_mbdebug_update),
        .qsfp0_int_l(qsfp0_int_l),
        .qsfp0_lpmode(qsfp0_lpmode),
        .qsfp0_modprs_l(qsfp0_modprs_l),
        .qsfp0_modsel_l(qsfp0_modsel_l),
        .qsfp0_reset_l(qsfp0_reset_l),
        .qsfp1_int_l(qsfp1_int_l),
        .qsfp1_lpmode(qsfp1_lpmode),
        .qsfp1_modprs_l(qsfp1_modprs_l),
        .qsfp1_modsel_l(qsfp1_modsel_l),
        .qsfp1_reset_l(qsfp1_reset_l),
        .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr),
        .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_mgmt_arprot),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid),
        .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr),
        .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_mgmt_awprot),
        .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready),
        .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid),
        .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready),
        .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp),
        .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid),
        .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata),
        .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready),
        .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp),
        .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid),
        .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata),
        .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready),
        .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb),
        .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid),
        .satellite_gpio_tri_i({satellite_gpio_tri_i_3,satellite_gpio_tri_i_2,satellite_gpio_tri_i_1,satellite_gpio_tri_i_0}),
        .satellite_gpio_tri_o({satellite_gpio_tri_o_3,satellite_gpio_tri_o_2,satellite_gpio_tri_o_1,satellite_gpio_tri_o_0}),
        .satellite_gpio_tri_t({satellite_gpio_tri_t_3,satellite_gpio_tri_t_2,satellite_gpio_tri_t_1,satellite_gpio_tri_t_0}),
        .satellite_uart_rxd(satellite_uart_rxd),
        .satellite_uart_txd(satellite_uart_txd));
  IOBUF satellite_gpio_tri_iobuf_0
       (.I(satellite_gpio_tri_o_0),
        .IO(satellite_gpio_tri_io[0]),
        .O(satellite_gpio_tri_i_0),
        .T(satellite_gpio_tri_t_0));
  IOBUF satellite_gpio_tri_iobuf_1
       (.I(satellite_gpio_tri_o_1),
        .IO(satellite_gpio_tri_io[1]),
        .O(satellite_gpio_tri_i_1),
        .T(satellite_gpio_tri_t_1));
  IOBUF satellite_gpio_tri_iobuf_2
       (.I(satellite_gpio_tri_o_2),
        .IO(satellite_gpio_tri_io[2]),
        .O(satellite_gpio_tri_i_2),
        .T(satellite_gpio_tri_t_2));
  IOBUF satellite_gpio_tri_iobuf_3
       (.I(satellite_gpio_tri_o_3),
        .IO(satellite_gpio_tri_io[3]),
        .O(satellite_gpio_tri_i_3),
        .T(satellite_gpio_tri_t_3));
endmodule
