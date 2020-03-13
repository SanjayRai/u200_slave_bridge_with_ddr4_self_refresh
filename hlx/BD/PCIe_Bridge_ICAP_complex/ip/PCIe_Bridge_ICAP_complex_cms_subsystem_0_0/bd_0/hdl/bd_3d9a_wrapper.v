//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_3d9a_wrapper.bd
//Design : bd_3d9a_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_3d9a_wrapper
   (aclk_ctrl,
    aresetn_ctrl,
    interrupt_host,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rready,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wready,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    satellite_gpio_tri_io,
    satellite_uart_rxd,
    satellite_uart_txd);
  input aclk_ctrl;
  input aresetn_ctrl;
  output interrupt_host;
  input [17:0]s_axi_ctrl_araddr;
  input [2:0]s_axi_ctrl_arprot;
  output [0:0]s_axi_ctrl_arready;
  input [0:0]s_axi_ctrl_arvalid;
  input [17:0]s_axi_ctrl_awaddr;
  input [2:0]s_axi_ctrl_awprot;
  output [0:0]s_axi_ctrl_awready;
  input [0:0]s_axi_ctrl_awvalid;
  input [0:0]s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  output [0:0]s_axi_ctrl_bvalid;
  output [31:0]s_axi_ctrl_rdata;
  input [0:0]s_axi_ctrl_rready;
  output [1:0]s_axi_ctrl_rresp;
  output [0:0]s_axi_ctrl_rvalid;
  input [31:0]s_axi_ctrl_wdata;
  output [0:0]s_axi_ctrl_wready;
  input [3:0]s_axi_ctrl_wstrb;
  input [0:0]s_axi_ctrl_wvalid;
  inout [3:0]satellite_gpio_tri_io;
  input satellite_uart_rxd;
  output satellite_uart_txd;

  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire interrupt_host;
  wire [17:0]s_axi_ctrl_araddr;
  wire [2:0]s_axi_ctrl_arprot;
  wire [0:0]s_axi_ctrl_arready;
  wire [0:0]s_axi_ctrl_arvalid;
  wire [17:0]s_axi_ctrl_awaddr;
  wire [2:0]s_axi_ctrl_awprot;
  wire [0:0]s_axi_ctrl_awready;
  wire [0:0]s_axi_ctrl_awvalid;
  wire [0:0]s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire [0:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire [0:0]s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire [0:0]s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire [0:0]s_axi_ctrl_wready;
  wire [3:0]s_axi_ctrl_wstrb;
  wire [0:0]s_axi_ctrl_wvalid;
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

  bd_3d9a bd_3d9a_i
       (.aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .interrupt_host(interrupt_host),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arprot(s_axi_ctrl_arprot),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awprot(s_axi_ctrl_awprot),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wstrb(s_axi_ctrl_wstrb),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
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
