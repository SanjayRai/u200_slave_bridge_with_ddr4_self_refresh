// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

module dynamic_region_cdma (
  input AXI_RESET_N,
  input rst_main_n,
  input CLK_IN_125M,
  input CLK_IN_250M,
  input CLK_IN_300M,
  input CLK_IN_400M,  
  input CLK_IN_PROG,
  input c1_init_calib_complete,
  input c0_sys_clk_n,
  input c0_sys_clk_p,
  input c2_sys_clk_n,
  input c2_sys_clk_p,
  input c3_sys_clk_n,
  input c3_sys_clk_p,
  output c0_ddr4_act_n,
  output [16:0]c0_ddr4_adr,
  output [1:0]c0_ddr4_ba,
  output [1:0]c0_ddr4_bg,
  output [0:0]c0_ddr4_ck_c,
  output [0:0]c0_ddr4_ck_t,
  output [0:0]c0_ddr4_cke,
  output [0:0]c0_ddr4_cs_n,
  inout [71:0]c0_ddr4_dq,
  inout [17:0]c0_ddr4_dqs_c,
  inout [17:0]c0_ddr4_dqs_t,
  output [0:0]c0_ddr4_odt,
  output c0_ddr4_par,
  output c0_ddr4_reset_n,
  output c0_init_calib_complete,
  input c0_ddr4_app_mem_init_skip,
  input c0_ddr4_app_restore_complete,
  output c0_ddr4_app_sref_ack,
  input c0_ddr4_app_sref_req,
  input c0_ddr4_app_xsdb_select,
  output c2_ddr4_act_n,
  output [16:0]c2_ddr4_adr,
  output [1:0]c2_ddr4_ba,
  output [1:0]c2_ddr4_bg,
  output [0:0]c2_ddr4_ck_c,
  output [0:0]c2_ddr4_ck_t,
  output [0:0]c2_ddr4_cke,
  output [0:0]c2_ddr4_cs_n,
  inout [71:0]c2_ddr4_dq,
  inout [17:0]c2_ddr4_dqs_c,
  inout [17:0]c2_ddr4_dqs_t,
  output [0:0]c2_ddr4_odt,
  output c2_ddr4_par,
  output c2_ddr4_reset_n,
  output c2_init_calib_complete,
  input c2_ddr4_app_mem_init_skip,
  input c2_ddr4_app_restore_complete,
  output c2_ddr4_app_sref_ack,
  input c2_ddr4_app_sref_req,
  input c2_ddr4_app_xsdb_select,
  output c3_ddr4_act_n,
  output [16:0]c3_ddr4_adr,
  output [1:0]c3_ddr4_ba,
  output [1:0]c3_ddr4_bg,
  output [0:0]c3_ddr4_ck_c,
  output [0:0]c3_ddr4_ck_t,
  output [0:0]c3_ddr4_cke,
  output [0:0]c3_ddr4_cs_n,
  inout [71:0]c3_ddr4_dq,
  inout [17:0]c3_ddr4_dqs_c,
  inout [17:0]c3_ddr4_dqs_t,
  output [0:0]c3_ddr4_odt,
  output c3_ddr4_par,
  output c3_ddr4_reset_n,
  output c3_init_calib_complete,
  input c3_ddr4_app_mem_init_skip,
  input c3_ddr4_app_restore_complete,
  output c3_ddr4_app_sref_ack,
  input c3_ddr4_app_sref_req,
  input c3_ddr4_app_xsdb_select,
  input sys_rst_ddr_0,
  input sys_rst_ddr_2,
  input sys_rst_ddr_3,
  hlx_AXI_MM_intfc.master M_AXI_NORTH_TO_STATIC,
  hlx_AXI_MM_intfc.master M_AXI_MM_PCIM,
  hlx_AXI_LITE_intfc.slave S_AXI_LITE_FROM_STATIC,
  input wire  S_BSCAN_bscanid_en,
  input wire  S_BSCAN_capture,
  input wire  S_BSCAN_drck,
  input wire  S_BSCAN_reset,
  input wire  S_BSCAN_runtest,
  input wire  S_BSCAN_sel,
  input wire  S_BSCAN_shift,
  input wire  S_BSCAN_tck,
  input wire  S_BSCAN_tdi,
  output wire S_BSCAN_tdo,
  input wire  S_BSCAN_tms,
  input wire  S_BSCAN_update
  );

  hlx_AXI_LITE_intfc M_AXI_LITE_TO_DYNAMIC();
  hlx_AXI_LITE_intfc MIG0_AXI4LITE ();
  hlx_AXI_LITE_intfc MIG2_AXI4LITE ();
  hlx_AXI_LITE_intfc MIG3_AXI4LITE ();

  hlx_AXI_MM_intfc AXI_MM_MIG0 ();
  hlx_AXI_MM_intfc AXI_MM_MIG0_REG_SLICE ();
  hlx_AXI_LITE_intfc MIG0_AXI4_LITE_SLR_REG_SLICE ();
  
  hlx_AXI_MM_intfc AXI_MM_MIG2 ();
  hlx_AXI_MM_intfc AXI_MM_MIG3 ();
  hlx_AXI_MM_intfc AXI_MM_MIG3_REG_SLICE ();
  hlx_AXI_LITE_intfc MIG3_AXI4_LITE_SLR_REG_SLICE ();
  
  hlx_AXI_MM_intfc AXI_MM_PCIM ();

  hlx_AXI_MM_intfc AXI_CDMA_MM ();

  hlx_AXI_MM_intfc AXI_CDMA_AXI4MM_REG_SLICE ();
  hlx_AXI_MM_intfc AXI_CDMA_MM_CC ();
  
  hlx_AXI_LITE_intfc AXI_CDMA_AXI4LITE_REG_SLICE ();
  hlx_AXI_LITE_intfc AXI_CDMA_LITE_CC ();


  wire [0:3] CLK_IN_125M_rst_n;
  wire [0:3] CLK_IN_250M_rst_n;
  wire [0:3] CLK_IN_300M_rst_n;
  wire [0:3] CLK_IN_400M_rst_n;
  wire [0:3] CLK_IN_PROG_rst_n;

  wire [0:3] CLK_IN_125M_rst;
  wire [0:3] CLK_IN_250M_rst;
  wire [0:3] CLK_IN_300M_rst;
  wire [0:3] CLK_IN_400M_rst;
  wire [0:3] CLK_IN_PROG_rst;

 wire i_sys_rst_ddr_0;
 wire i_sys_rst_ddr_2;
 wire i_sys_rst_ddr_3;

  assign i_sys_rst_ddr_0 = ~sys_rst_ddr_0;
  assign i_sys_rst_ddr_2 = ~sys_rst_ddr_2;
  assign i_sys_rst_ddr_3 = ~sys_rst_ddr_3;
  
  (* dont_touch = "yes" *) reg [15:0] dummy_count_300M = 16'd0;
  (* dont_touch = "yes" *) reg [15:0] dummy_count_400M = 16'd0;
  (* dont_touch = "yes" *) wire shell_init_calib_complete;
  
 (* dont_touch = "yes" *) assign shell_init_calib_complete = c1_init_calib_complete;
 
 always @(posedge CLK_IN_300M) begin
      (* dont_touch = "yes" *)  dummy_count_300M <= dummy_count_300M + 1'b1;
 end
 
 always @(posedge CLK_IN_400M) begin
      (* dont_touch = "yes" *)  dummy_count_400M <= dummy_count_400M + 1'b1;
 end
 



  reset_module reset_module_i
       (.AXI_RESET_N(rst_main_n),
        .CLK_IN_125M(CLK_IN_125M),
        .CLK_IN_250M(CLK_IN_250M),
        .CLK_IN_300M(CLK_IN_300M),
        .CLK_IN_400M(CLK_IN_400M),
        .CLK_IN_PROG(CLK_IN_PROG),
        .CLK_IN_125M_rst_n(CLK_IN_125M_rst_n),
        .CLK_IN_125M_rst(CLK_IN_125M_rst),
        .CLK_IN_250M_rst_n(CLK_IN_250M_rst_n),
        .CLK_IN_250M_rst(CLK_IN_250M_rst),     
        .CLK_IN_300M_rst_n(CLK_IN_300M_rst_n),
        .CLK_IN_300M_rst(CLK_IN_300M_rst),   
        .CLK_IN_400M_rst_n(CLK_IN_400M_rst_n),
        .CLK_IN_400M_rst(CLK_IN_400M_rst),        
        .CLK_IN_PROG_rst_n(CLK_IN_PROG_rst_n),
        .CLK_IN_PROG_rst(CLK_IN_PROG_rst)      
        );
        
  dynamic_region_ddr4 dynamic_region_ddr4_i
       (.AXI_RESET_N(AXI_RESET_N),
        .C0_SYS_CLK_clk_n(c0_sys_clk_n),
        .C0_SYS_CLK_clk_p(c0_sys_clk_p),
        .C2_SYS_CLK_clk_n(c2_sys_clk_n),
        .C2_SYS_CLK_clk_p(c2_sys_clk_p),
        .C3_SYS_CLK_clk_n(c3_sys_clk_n),
        .C3_SYS_CLK_clk_p(c3_sys_clk_p),
        .CLK_IN_250(CLK_IN_250M),
        .MIG0_DDR4_S_AXI_CTRL_araddr(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_araddr),
        .MIG0_DDR4_S_AXI_CTRL_arprot(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arprot),
        .MIG0_DDR4_S_AXI_CTRL_arready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arready),
        .MIG0_DDR4_S_AXI_CTRL_arvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arvalid),
        .MIG0_DDR4_S_AXI_CTRL_awaddr(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awaddr),
        .MIG0_DDR4_S_AXI_CTRL_awprot(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awprot),
        .MIG0_DDR4_S_AXI_CTRL_awready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awready),
        .MIG0_DDR4_S_AXI_CTRL_awvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awvalid),
        .MIG0_DDR4_S_AXI_CTRL_bready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bready),
        .MIG0_DDR4_S_AXI_CTRL_bresp(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bresp),
        .MIG0_DDR4_S_AXI_CTRL_bvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bvalid),
        .MIG0_DDR4_S_AXI_CTRL_rdata(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rdata),
        .MIG0_DDR4_S_AXI_CTRL_rready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rready),
        .MIG0_DDR4_S_AXI_CTRL_rresp(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rresp),
        .MIG0_DDR4_S_AXI_CTRL_rvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rvalid),
        .MIG0_DDR4_S_AXI_CTRL_wdata(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wdata),
        .MIG0_DDR4_S_AXI_CTRL_wready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wready),
        .MIG0_DDR4_S_AXI_CTRL_wstrb(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wstrb),
        .MIG0_DDR4_S_AXI_CTRL_wvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wvalid),
        .MIG2_DDR4_S_AXI_CTRL_araddr(MIG2_AXI4LITE.AXI_LITE_araddr),
        .MIG2_DDR4_S_AXI_CTRL_arprot(MIG2_AXI4LITE.AXI_LITE_arprot),
        .MIG2_DDR4_S_AXI_CTRL_arready(MIG2_AXI4LITE.AXI_LITE_arready),
        .MIG2_DDR4_S_AXI_CTRL_arvalid(MIG2_AXI4LITE.AXI_LITE_arvalid),
        .MIG2_DDR4_S_AXI_CTRL_awaddr(MIG2_AXI4LITE.AXI_LITE_awaddr),
        .MIG2_DDR4_S_AXI_CTRL_awprot(MIG2_AXI4LITE.AXI_LITE_awprot),
        .MIG2_DDR4_S_AXI_CTRL_awready(MIG2_AXI4LITE.AXI_LITE_awready),
        .MIG2_DDR4_S_AXI_CTRL_awvalid(MIG2_AXI4LITE.AXI_LITE_awvalid),
        .MIG2_DDR4_S_AXI_CTRL_bready(MIG2_AXI4LITE.AXI_LITE_bready),
        .MIG2_DDR4_S_AXI_CTRL_bresp(MIG2_AXI4LITE.AXI_LITE_bresp),
        .MIG2_DDR4_S_AXI_CTRL_bvalid(MIG2_AXI4LITE.AXI_LITE_bvalid),
        .MIG2_DDR4_S_AXI_CTRL_rdata(MIG2_AXI4LITE.AXI_LITE_rdata),
        .MIG2_DDR4_S_AXI_CTRL_rready(MIG2_AXI4LITE.AXI_LITE_rready),
        .MIG2_DDR4_S_AXI_CTRL_rresp(MIG2_AXI4LITE.AXI_LITE_rresp),
        .MIG2_DDR4_S_AXI_CTRL_rvalid(MIG2_AXI4LITE.AXI_LITE_rvalid),
        .MIG2_DDR4_S_AXI_CTRL_wdata(MIG2_AXI4LITE.AXI_LITE_wdata),
        .MIG2_DDR4_S_AXI_CTRL_wready(MIG2_AXI4LITE.AXI_LITE_wready),
        .MIG2_DDR4_S_AXI_CTRL_wstrb(MIG2_AXI4LITE.AXI_LITE_wstrb),
        .MIG2_DDR4_S_AXI_CTRL_wvalid(MIG2_AXI4LITE.AXI_LITE_wvalid),
        .MIG3_DDR4_S_AXI_CTRL_araddr(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_araddr),
        .MIG3_DDR4_S_AXI_CTRL_arprot(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arprot),
        .MIG3_DDR4_S_AXI_CTRL_arready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arready),
        .MIG3_DDR4_S_AXI_CTRL_arvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arvalid),
        .MIG3_DDR4_S_AXI_CTRL_awaddr(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awaddr),
        .MIG3_DDR4_S_AXI_CTRL_awprot(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awprot),
        .MIG3_DDR4_S_AXI_CTRL_awready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awready),
        .MIG3_DDR4_S_AXI_CTRL_awvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awvalid),
        .MIG3_DDR4_S_AXI_CTRL_bready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bready),
        .MIG3_DDR4_S_AXI_CTRL_bresp(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bresp),
        .MIG3_DDR4_S_AXI_CTRL_bvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bvalid),
        .MIG3_DDR4_S_AXI_CTRL_rdata(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rdata),
        .MIG3_DDR4_S_AXI_CTRL_rready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rready),
        .MIG3_DDR4_S_AXI_CTRL_rresp(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rresp),
        .MIG3_DDR4_S_AXI_CTRL_rvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rvalid),
        .MIG3_DDR4_S_AXI_CTRL_wdata(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wdata),
        .MIG3_DDR4_S_AXI_CTRL_wready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wready),
        .MIG3_DDR4_S_AXI_CTRL_wstrb(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wstrb),
        .MIG3_DDR4_S_AXI_CTRL_wvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wvalid),
        .S_AXI_MM_MIG0_araddr(AXI_MM_MIG0_REG_SLICE.AXI_araddr),
        .S_AXI_MM_MIG0_arburst(AXI_MM_MIG0_REG_SLICE.AXI_arburst),
        .S_AXI_MM_MIG0_arcache(AXI_MM_MIG0_REG_SLICE.AXI_arcache),
        .S_AXI_MM_MIG0_arid(AXI_MM_MIG0_REG_SLICE.AXI_arid),
        .S_AXI_MM_MIG0_arlen(AXI_MM_MIG0_REG_SLICE.AXI_arlen),
        .S_AXI_MM_MIG0_arlock(AXI_MM_MIG0_REG_SLICE.AXI_arlock),
        .S_AXI_MM_MIG0_arprot(AXI_MM_MIG0_REG_SLICE.AXI_arprot),
        .S_AXI_MM_MIG0_arqos(AXI_MM_MIG0_REG_SLICE.AXI_arqos),
        .S_AXI_MM_MIG0_arready(AXI_MM_MIG0_REG_SLICE.AXI_arready),
        .S_AXI_MM_MIG0_arregion(AXI_MM_MIG0_REG_SLICE.AXI_arregion),
        .S_AXI_MM_MIG0_arsize(AXI_MM_MIG0_REG_SLICE.AXI_arsize),
        .S_AXI_MM_MIG0_arvalid(AXI_MM_MIG0_REG_SLICE.AXI_arvalid),
        .S_AXI_MM_MIG0_awaddr(AXI_MM_MIG0_REG_SLICE.AXI_awaddr),
        .S_AXI_MM_MIG0_awburst(AXI_MM_MIG0_REG_SLICE.AXI_awburst),
        .S_AXI_MM_MIG0_awcache(AXI_MM_MIG0_REG_SLICE.AXI_awcache),
        .S_AXI_MM_MIG0_awid(AXI_MM_MIG0_REG_SLICE.AXI_awid),
        .S_AXI_MM_MIG0_awlen(AXI_MM_MIG0_REG_SLICE.AXI_awlen),
        .S_AXI_MM_MIG0_awlock(AXI_MM_MIG0_REG_SLICE.AXI_awlock),
        .S_AXI_MM_MIG0_awprot(AXI_MM_MIG0_REG_SLICE.AXI_awprot),
        .S_AXI_MM_MIG0_awqos(AXI_MM_MIG0_REG_SLICE.AXI_awqos),
        .S_AXI_MM_MIG0_awready(AXI_MM_MIG0_REG_SLICE.AXI_awready),
        .S_AXI_MM_MIG0_awregion(AXI_MM_MIG0_REG_SLICE.AXI_awregion),
        .S_AXI_MM_MIG0_awsize(AXI_MM_MIG0_REG_SLICE.AXI_awsize),
        .S_AXI_MM_MIG0_awvalid(AXI_MM_MIG0_REG_SLICE.AXI_awvalid),
        .S_AXI_MM_MIG0_bid(AXI_MM_MIG0_REG_SLICE.AXI_bid),
        .S_AXI_MM_MIG0_bready(AXI_MM_MIG0_REG_SLICE.AXI_bready),
        .S_AXI_MM_MIG0_bresp(AXI_MM_MIG0_REG_SLICE.AXI_bresp),
        .S_AXI_MM_MIG0_bvalid(AXI_MM_MIG0_REG_SLICE.AXI_bvalid),
        .S_AXI_MM_MIG0_rdata(AXI_MM_MIG0_REG_SLICE.AXI_rdata),
        .S_AXI_MM_MIG0_rid(AXI_MM_MIG0_REG_SLICE.AXI_rid),
        .S_AXI_MM_MIG0_rlast(AXI_MM_MIG0_REG_SLICE.AXI_rlast),
        .S_AXI_MM_MIG0_rready(AXI_MM_MIG0_REG_SLICE.AXI_rready),
        .S_AXI_MM_MIG0_rresp(AXI_MM_MIG0_REG_SLICE.AXI_rresp),
        .S_AXI_MM_MIG0_rvalid(AXI_MM_MIG0_REG_SLICE.AXI_rvalid),
        .S_AXI_MM_MIG0_wdata(AXI_MM_MIG0_REG_SLICE.AXI_wdata),
        .S_AXI_MM_MIG0_wlast(AXI_MM_MIG0_REG_SLICE.AXI_wlast),
        .S_AXI_MM_MIG0_wready(AXI_MM_MIG0_REG_SLICE.AXI_wready),
        .S_AXI_MM_MIG0_wstrb(AXI_MM_MIG0_REG_SLICE.AXI_wstrb),
        .S_AXI_MM_MIG0_wvalid(AXI_MM_MIG0_REG_SLICE.AXI_wvalid),
        .S_AXI_MM_MIG2_araddr(AXI_MM_MIG2.AXI_araddr),
        .S_AXI_MM_MIG2_arburst(AXI_MM_MIG2.AXI_arburst),
        .S_AXI_MM_MIG2_arcache(AXI_MM_MIG2.AXI_arcache),
        .S_AXI_MM_MIG2_arid(AXI_MM_MIG2.AXI_arid),
        .S_AXI_MM_MIG2_arlen(AXI_MM_MIG2.AXI_arlen),
        .S_AXI_MM_MIG2_arlock(AXI_MM_MIG2.AXI_arlock),
        .S_AXI_MM_MIG2_arprot(AXI_MM_MIG2.AXI_arprot),
        .S_AXI_MM_MIG2_arqos(AXI_MM_MIG2.AXI_arqos),
        .S_AXI_MM_MIG2_arready(AXI_MM_MIG2.AXI_arready),
        .S_AXI_MM_MIG2_arregion(AXI_MM_MIG2.AXI_arregion),
        .S_AXI_MM_MIG2_arsize(AXI_MM_MIG2.AXI_arsize),
        .S_AXI_MM_MIG2_arvalid(AXI_MM_MIG2.AXI_arvalid),
        .S_AXI_MM_MIG2_awaddr(AXI_MM_MIG2.AXI_awaddr),
        .S_AXI_MM_MIG2_awburst(AXI_MM_MIG2.AXI_awburst),
        .S_AXI_MM_MIG2_awcache(AXI_MM_MIG2.AXI_awcache),
        .S_AXI_MM_MIG2_awid(AXI_MM_MIG2.AXI_awid),
        .S_AXI_MM_MIG2_awlen(AXI_MM_MIG2.AXI_awlen),
        .S_AXI_MM_MIG2_awlock(AXI_MM_MIG2.AXI_awlock),
        .S_AXI_MM_MIG2_awprot(AXI_MM_MIG2.AXI_awprot),
        .S_AXI_MM_MIG2_awqos(AXI_MM_MIG2.AXI_awqos),
        .S_AXI_MM_MIG2_awready(AXI_MM_MIG2.AXI_awready),
        .S_AXI_MM_MIG2_awregion(AXI_MM_MIG2.AXI_awregion),
        .S_AXI_MM_MIG2_awsize(AXI_MM_MIG2.AXI_awsize),
        .S_AXI_MM_MIG2_awvalid(AXI_MM_MIG2.AXI_awvalid),
        .S_AXI_MM_MIG2_bid(AXI_MM_MIG2.AXI_bid),
        .S_AXI_MM_MIG2_bready(AXI_MM_MIG2.AXI_bready),
        .S_AXI_MM_MIG2_bresp(AXI_MM_MIG2.AXI_bresp),
        .S_AXI_MM_MIG2_bvalid(AXI_MM_MIG2.AXI_bvalid),
        .S_AXI_MM_MIG2_rdata(AXI_MM_MIG2.AXI_rdata),
        .S_AXI_MM_MIG2_rid(AXI_MM_MIG2.AXI_rid),
        .S_AXI_MM_MIG2_rlast(AXI_MM_MIG2.AXI_rlast),
        .S_AXI_MM_MIG2_rready(AXI_MM_MIG2.AXI_rready),
        .S_AXI_MM_MIG2_rresp(AXI_MM_MIG2.AXI_rresp),
        .S_AXI_MM_MIG2_rvalid(AXI_MM_MIG2.AXI_rvalid),
        .S_AXI_MM_MIG2_wdata(AXI_MM_MIG2.AXI_wdata),
        .S_AXI_MM_MIG2_wlast(AXI_MM_MIG2.AXI_wlast),
        .S_AXI_MM_MIG2_wready(AXI_MM_MIG2.AXI_wready),
        .S_AXI_MM_MIG2_wstrb(AXI_MM_MIG2.AXI_wstrb),
        .S_AXI_MM_MIG2_wvalid(AXI_MM_MIG2.AXI_wvalid),
        .S_AXI_MM_MIG3_araddr(AXI_MM_MIG3_REG_SLICE.AXI_araddr),
        .S_AXI_MM_MIG3_arburst(AXI_MM_MIG3_REG_SLICE.AXI_arburst),
        .S_AXI_MM_MIG3_arcache(AXI_MM_MIG3_REG_SLICE.AXI_arcache),
        .S_AXI_MM_MIG3_arid(AXI_MM_MIG3_REG_SLICE.AXI_arid),
        .S_AXI_MM_MIG3_arlen(AXI_MM_MIG3_REG_SLICE.AXI_arlen),
        .S_AXI_MM_MIG3_arlock(AXI_MM_MIG3_REG_SLICE.AXI_arlock),
        .S_AXI_MM_MIG3_arprot(AXI_MM_MIG3_REG_SLICE.AXI_arprot),
        .S_AXI_MM_MIG3_arqos(AXI_MM_MIG3_REG_SLICE.AXI_arqos),
        .S_AXI_MM_MIG3_arready(AXI_MM_MIG3_REG_SLICE.AXI_arready),
        .S_AXI_MM_MIG3_arregion(AXI_MM_MIG3_REG_SLICE.AXI_arregion),
        .S_AXI_MM_MIG3_arsize(AXI_MM_MIG3_REG_SLICE.AXI_arsize),
        .S_AXI_MM_MIG3_arvalid(AXI_MM_MIG3_REG_SLICE.AXI_arvalid),
        .S_AXI_MM_MIG3_awaddr(AXI_MM_MIG3_REG_SLICE.AXI_awaddr),
        .S_AXI_MM_MIG3_awburst(AXI_MM_MIG3_REG_SLICE.AXI_awburst),
        .S_AXI_MM_MIG3_awcache(AXI_MM_MIG3_REG_SLICE.AXI_awcache),
        .S_AXI_MM_MIG3_awid(AXI_MM_MIG3_REG_SLICE.AXI_awid),
        .S_AXI_MM_MIG3_awlen(AXI_MM_MIG3_REG_SLICE.AXI_awlen),
        .S_AXI_MM_MIG3_awlock(AXI_MM_MIG3_REG_SLICE.AXI_awlock),
        .S_AXI_MM_MIG3_awprot(AXI_MM_MIG3_REG_SLICE.AXI_awprot),
        .S_AXI_MM_MIG3_awqos(AXI_MM_MIG3_REG_SLICE.AXI_awqos),
        .S_AXI_MM_MIG3_awready(AXI_MM_MIG3_REG_SLICE.AXI_awready),
        .S_AXI_MM_MIG3_awregion(AXI_MM_MIG3_REG_SLICE.AXI_awregion),
        .S_AXI_MM_MIG3_awsize(AXI_MM_MIG3_REG_SLICE.AXI_awsize),
        .S_AXI_MM_MIG3_awvalid(AXI_MM_MIG3_REG_SLICE.AXI_awvalid),
        .S_AXI_MM_MIG3_bid(AXI_MM_MIG3_REG_SLICE.AXI_bid),
        .S_AXI_MM_MIG3_bready(AXI_MM_MIG3_REG_SLICE.AXI_bready),
        .S_AXI_MM_MIG3_bresp(AXI_MM_MIG3_REG_SLICE.AXI_bresp),
        .S_AXI_MM_MIG3_bvalid(AXI_MM_MIG3_REG_SLICE.AXI_bvalid),
        .S_AXI_MM_MIG3_rdata(AXI_MM_MIG3_REG_SLICE.AXI_rdata),
        .S_AXI_MM_MIG3_rid(AXI_MM_MIG3_REG_SLICE.AXI_rid),
        .S_AXI_MM_MIG3_rlast(AXI_MM_MIG3_REG_SLICE.AXI_rlast),
        .S_AXI_MM_MIG3_rready(AXI_MM_MIG3_REG_SLICE.AXI_rready),
        .S_AXI_MM_MIG3_rresp(AXI_MM_MIG3_REG_SLICE.AXI_rresp),
        .S_AXI_MM_MIG3_rvalid(AXI_MM_MIG3_REG_SLICE.AXI_rvalid),
        .S_AXI_MM_MIG3_wdata(AXI_MM_MIG3_REG_SLICE.AXI_wdata),
        .S_AXI_MM_MIG3_wlast(AXI_MM_MIG3_REG_SLICE.AXI_wlast),
        .S_AXI_MM_MIG3_wready(AXI_MM_MIG3_REG_SLICE.AXI_wready),
        .S_AXI_MM_MIG3_wstrb(AXI_MM_MIG3_REG_SLICE.AXI_wstrb),
        .S_AXI_MM_MIG3_wvalid(AXI_MM_MIG3_REG_SLICE.AXI_wvalid),  
        .c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_app_mem_init_skip(c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(c0_ddr4_app_restore_complete),
        .c0_ddr4_app_sref_ack(c0_ddr4_app_sref_ack),
        .c0_ddr4_app_sref_req(c0_ddr4_app_sref_req),
        .c0_ddr4_app_xsdb_select(c0_ddr4_app_xsdb_select),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_par(c0_ddr4_par),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .c0_init_calib_complete(c0_init_calib_complete),
        .c2_ddr4_act_n(c2_ddr4_act_n),
        .c2_ddr4_adr(c2_ddr4_adr),
        .c2_ddr4_app_mem_init_skip(c2_ddr4_app_mem_init_skip),
        .c2_ddr4_app_restore_complete(c2_ddr4_app_restore_complete),
        .c2_ddr4_app_sref_ack(c2_ddr4_app_sref_ack),
        .c2_ddr4_app_sref_req(c2_ddr4_app_sref_req),
        .c2_ddr4_app_xsdb_select(c2_ddr4_app_xsdb_select),
        .c2_ddr4_ba(c2_ddr4_ba),
        .c2_ddr4_bg(c2_ddr4_bg),
        .c2_ddr4_ck_c(c2_ddr4_ck_c),
        .c2_ddr4_ck_t(c2_ddr4_ck_t),
        .c2_ddr4_cke(c2_ddr4_cke),
        .c2_ddr4_cs_n(c2_ddr4_cs_n),
        .c2_ddr4_dq(c2_ddr4_dq),
        .c2_ddr4_dqs_c(c2_ddr4_dqs_c),
        .c2_ddr4_dqs_t(c2_ddr4_dqs_t),
        .c2_ddr4_odt(c2_ddr4_odt),
        .c2_ddr4_par(c2_ddr4_par),
        .c2_ddr4_reset_n(c2_ddr4_reset_n),
        .c2_init_calib_complete(c2_init_calib_complete),
        .c3_ddr4_act_n(c3_ddr4_act_n),
        .c3_ddr4_adr(c3_ddr4_adr),
        .c3_ddr4_app_mem_init_skip(c3_ddr4_app_mem_init_skip),
        .c3_ddr4_app_restore_complete(c3_ddr4_app_restore_complete),
        .c3_ddr4_app_sref_ack(c3_ddr4_app_sref_ack),
        .c3_ddr4_app_sref_req(c3_ddr4_app_sref_req),
        .c3_ddr4_app_xsdb_select(c3_ddr4_app_xsdb_select),
        .c3_ddr4_ba(c3_ddr4_ba),
        .c3_ddr4_bg(c3_ddr4_bg),
        .c3_ddr4_ck_c(c3_ddr4_ck_c),
        .c3_ddr4_ck_t(c3_ddr4_ck_t),
        .c3_ddr4_cke(c3_ddr4_cke),
        .c3_ddr4_cs_n(c3_ddr4_cs_n),
        .c3_ddr4_dq(c3_ddr4_dq),
        .c3_ddr4_dqs_c(c3_ddr4_dqs_c),
        .c3_ddr4_dqs_t(c3_ddr4_dqs_t),
        .c3_ddr4_odt(c3_ddr4_odt),
        .c3_ddr4_par(c3_ddr4_par),
        .c3_ddr4_reset_n(c3_ddr4_reset_n),
        .c3_init_calib_complete(c3_init_calib_complete),
        .sys_rst_ddr_0(i_sys_rst_ddr_0),
        .sys_rst_ddr_2(i_sys_rst_ddr_2),
        .sys_rst_ddr_3(i_sys_rst_ddr_3));

  axi_ic_axi4lite axi_ic_axi4lite_i
       (.AXI_RESET_N(AXI_RESET_N),
        .CLK_IN_250(CLK_IN_250M),
        .MIG0_M_AXI_LITE_araddr(MIG0_AXI4LITE.AXI_LITE_araddr),
        .MIG0_M_AXI_LITE_arprot(MIG0_AXI4LITE.AXI_LITE_arprot),
        .MIG0_M_AXI_LITE_arready(MIG0_AXI4LITE.AXI_LITE_arready),
        .MIG0_M_AXI_LITE_arvalid(MIG0_AXI4LITE.AXI_LITE_arvalid),
        .MIG0_M_AXI_LITE_awaddr(MIG0_AXI4LITE.AXI_LITE_awaddr),
        .MIG0_M_AXI_LITE_awprot(MIG0_AXI4LITE.AXI_LITE_awprot),
        .MIG0_M_AXI_LITE_awready(MIG0_AXI4LITE.AXI_LITE_awready),
        .MIG0_M_AXI_LITE_awvalid(MIG0_AXI4LITE.AXI_LITE_awvalid),
        .MIG0_M_AXI_LITE_bready(MIG0_AXI4LITE.AXI_LITE_bready),
        .MIG0_M_AXI_LITE_bresp(MIG0_AXI4LITE.AXI_LITE_bresp),
        .MIG0_M_AXI_LITE_bvalid(MIG0_AXI4LITE.AXI_LITE_bvalid),
        .MIG0_M_AXI_LITE_rdata(MIG0_AXI4LITE.AXI_LITE_rdata),
        .MIG0_M_AXI_LITE_rready(MIG0_AXI4LITE.AXI_LITE_rready),
        .MIG0_M_AXI_LITE_rresp(MIG0_AXI4LITE.AXI_LITE_rresp),
        .MIG0_M_AXI_LITE_rvalid(MIG0_AXI4LITE.AXI_LITE_rvalid),
        .MIG0_M_AXI_LITE_wdata(MIG0_AXI4LITE.AXI_LITE_wdata),
        .MIG0_M_AXI_LITE_wready(MIG0_AXI4LITE.AXI_LITE_wready),
        .MIG0_M_AXI_LITE_wstrb(MIG0_AXI4LITE.AXI_LITE_wstrb),
        .MIG0_M_AXI_LITE_wvalid(MIG0_AXI4LITE.AXI_LITE_wvalid),
        
        .MIG2_M_AXI_LITE_araddr(MIG2_AXI4LITE.AXI_LITE_araddr),
        .MIG2_M_AXI_LITE_arprot(MIG2_AXI4LITE.AXI_LITE_arprot),
        .MIG2_M_AXI_LITE_arready(MIG2_AXI4LITE.AXI_LITE_arready),
        .MIG2_M_AXI_LITE_arvalid(MIG2_AXI4LITE.AXI_LITE_arvalid),
        .MIG2_M_AXI_LITE_awaddr(MIG2_AXI4LITE.AXI_LITE_awaddr),
        .MIG2_M_AXI_LITE_awprot(MIG2_AXI4LITE.AXI_LITE_awprot),
        .MIG2_M_AXI_LITE_awready(MIG2_AXI4LITE.AXI_LITE_awready),
        .MIG2_M_AXI_LITE_awvalid(MIG2_AXI4LITE.AXI_LITE_awvalid),
        .MIG2_M_AXI_LITE_bready(MIG2_AXI4LITE.AXI_LITE_bready),
        .MIG2_M_AXI_LITE_bresp(MIG2_AXI4LITE.AXI_LITE_bresp),
        .MIG2_M_AXI_LITE_bvalid(MIG2_AXI4LITE.AXI_LITE_bvalid),
        .MIG2_M_AXI_LITE_rdata(MIG2_AXI4LITE.AXI_LITE_rdata),
        .MIG2_M_AXI_LITE_rready(MIG2_AXI4LITE.AXI_LITE_rready),
        .MIG2_M_AXI_LITE_rresp(MIG2_AXI4LITE.AXI_LITE_rresp),
        .MIG2_M_AXI_LITE_rvalid(MIG2_AXI4LITE.AXI_LITE_rvalid),
        .MIG2_M_AXI_LITE_wdata(MIG2_AXI4LITE.AXI_LITE_wdata),
        .MIG2_M_AXI_LITE_wready(MIG2_AXI4LITE.AXI_LITE_wready),
        .MIG2_M_AXI_LITE_wstrb(MIG2_AXI4LITE.AXI_LITE_wstrb),
        .MIG2_M_AXI_LITE_wvalid(MIG2_AXI4LITE.AXI_LITE_wvalid),
        
        .MIG3_M_AXI_LITE_araddr(MIG3_AXI4LITE.AXI_LITE_araddr),
        .MIG3_M_AXI_LITE_arprot(MIG3_AXI4LITE.AXI_LITE_arprot),
        .MIG3_M_AXI_LITE_arready(MIG3_AXI4LITE.AXI_LITE_arready),
        .MIG3_M_AXI_LITE_arvalid(MIG3_AXI4LITE.AXI_LITE_arvalid),
        .MIG3_M_AXI_LITE_awaddr(MIG3_AXI4LITE.AXI_LITE_awaddr),
        .MIG3_M_AXI_LITE_awprot(MIG3_AXI4LITE.AXI_LITE_awprot),
        .MIG3_M_AXI_LITE_awready(MIG3_AXI4LITE.AXI_LITE_awready),
        .MIG3_M_AXI_LITE_awvalid(MIG3_AXI4LITE.AXI_LITE_awvalid),
        .MIG3_M_AXI_LITE_bready(MIG3_AXI4LITE.AXI_LITE_bready),
        .MIG3_M_AXI_LITE_bresp(MIG3_AXI4LITE.AXI_LITE_bresp),
        .MIG3_M_AXI_LITE_bvalid(MIG3_AXI4LITE.AXI_LITE_bvalid),
        .MIG3_M_AXI_LITE_rdata(MIG3_AXI4LITE.AXI_LITE_rdata),
        .MIG3_M_AXI_LITE_rready(MIG3_AXI4LITE.AXI_LITE_rready),
        .MIG3_M_AXI_LITE_rresp(MIG3_AXI4LITE.AXI_LITE_rresp),
        .MIG3_M_AXI_LITE_rvalid(MIG3_AXI4LITE.AXI_LITE_rvalid),
        .MIG3_M_AXI_LITE_wdata(MIG3_AXI4LITE.AXI_LITE_wdata),
        .MIG3_M_AXI_LITE_wready(MIG3_AXI4LITE.AXI_LITE_wready),
        .MIG3_M_AXI_LITE_wstrb(MIG3_AXI4LITE.AXI_LITE_wstrb),
        .MIG3_M_AXI_LITE_wvalid(MIG3_AXI4LITE.AXI_LITE_wvalid),
        
        .M_AXI_LITE_araddr(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_araddr),
        .M_AXI_LITE_arprot(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_arprot),
        .M_AXI_LITE_arready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_arready),
        .M_AXI_LITE_arvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_arvalid),
        .M_AXI_LITE_awaddr(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_awaddr),
        .M_AXI_LITE_awprot(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_awprot),
        .M_AXI_LITE_awready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_awready),
        .M_AXI_LITE_awvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_awvalid),
        .M_AXI_LITE_bready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_bready),
        .M_AXI_LITE_bresp(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_bresp),
        .M_AXI_LITE_bvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_bvalid),
        .M_AXI_LITE_rdata(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_rdata),
        .M_AXI_LITE_rready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_rready),
        .M_AXI_LITE_rresp(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_rresp),
        .M_AXI_LITE_rvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_rvalid),
        .M_AXI_LITE_wdata(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_wdata),
        .M_AXI_LITE_wready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_wready),
        .M_AXI_LITE_wstrb(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_wstrb),
        .M_AXI_LITE_wvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_wvalid),
        
        .S_AXI_LITE_FROM_STATIC_araddr(S_AXI_LITE_FROM_STATIC.AXI_LITE_araddr),
        .S_AXI_LITE_FROM_STATIC_arprot(S_AXI_LITE_FROM_STATIC.AXI_LITE_arprot),
        .S_AXI_LITE_FROM_STATIC_arready(S_AXI_LITE_FROM_STATIC.AXI_LITE_arready),
        .S_AXI_LITE_FROM_STATIC_arvalid(S_AXI_LITE_FROM_STATIC.AXI_LITE_arvalid),
        .S_AXI_LITE_FROM_STATIC_awaddr(S_AXI_LITE_FROM_STATIC.AXI_LITE_awaddr),
        .S_AXI_LITE_FROM_STATIC_awprot(S_AXI_LITE_FROM_STATIC.AXI_LITE_awprot),
        .S_AXI_LITE_FROM_STATIC_awready(S_AXI_LITE_FROM_STATIC.AXI_LITE_awready),
        .S_AXI_LITE_FROM_STATIC_awvalid(S_AXI_LITE_FROM_STATIC.AXI_LITE_awvalid),
        .S_AXI_LITE_FROM_STATIC_bready(S_AXI_LITE_FROM_STATIC.AXI_LITE_bready),
        .S_AXI_LITE_FROM_STATIC_bresp(S_AXI_LITE_FROM_STATIC.AXI_LITE_bresp),
        .S_AXI_LITE_FROM_STATIC_bvalid(S_AXI_LITE_FROM_STATIC.AXI_LITE_bvalid),
        .S_AXI_LITE_FROM_STATIC_rdata(S_AXI_LITE_FROM_STATIC.AXI_LITE_rdata),
        .S_AXI_LITE_FROM_STATIC_rready(S_AXI_LITE_FROM_STATIC.AXI_LITE_rready),
        .S_AXI_LITE_FROM_STATIC_rresp(S_AXI_LITE_FROM_STATIC.AXI_LITE_rresp),
        .S_AXI_LITE_FROM_STATIC_rvalid(S_AXI_LITE_FROM_STATIC.AXI_LITE_rvalid),
        .S_AXI_LITE_FROM_STATIC_wdata(S_AXI_LITE_FROM_STATIC.AXI_LITE_wdata),
        .S_AXI_LITE_FROM_STATIC_wready(S_AXI_LITE_FROM_STATIC.AXI_LITE_wready),
        .S_AXI_LITE_FROM_STATIC_wstrb(S_AXI_LITE_FROM_STATIC.AXI_LITE_wstrb),
        .S_AXI_LITE_FROM_STATIC_wvalid(S_AXI_LITE_FROM_STATIC.AXI_LITE_wvalid));
        
axi4mm_slr_reg_slice dyn_axi4mm_slr_reg_slice_mig0 (
  .aclk(CLK_IN_250M),                      // input wire aclk
  .aresetn(CLK_IN_250M_rst_n[0]),                // input wire aresetn
  .s_axi_awid(AXI_MM_MIG0.AXI_awid),          // input wire [5 : 0] s_axi_awid
  .s_axi_awaddr(AXI_MM_MIG0.AXI_awaddr),      // input wire [63 : 0] s_axi_awaddr
  .s_axi_awlen(AXI_MM_MIG0.AXI_awlen),        // input wire [7 : 0] s_axi_awlen
  .s_axi_awsize(AXI_MM_MIG0.AXI_awsize),      // input wire [2 : 0] s_axi_awsize
  .s_axi_awburst(AXI_MM_MIG0.AXI_awburst),    // input wire [1 : 0] s_axi_awburst
  .s_axi_awlock(AXI_MM_MIG0.AXI_awlock),      // input wire [0 : 0] s_axi_awlock
  .s_axi_awcache(AXI_MM_MIG0.AXI_awcache),    // input wire [3 : 0] s_axi_awcache
  .s_axi_awprot(AXI_MM_MIG0.AXI_awprot),      // input wire [2 : 0] s_axi_awprot
  .s_axi_awregion(AXI_MM_MIG0.AXI_awregion),  // input wire [3 : 0] s_axi_awregion
  .s_axi_awqos(AXI_MM_MIG0.AXI_awqos),        // input wire [3 : 0] s_axi_awqos
  .s_axi_awvalid(AXI_MM_MIG0.AXI_awvalid),    // input wire s_axi_awvalid
  .s_axi_awready(AXI_MM_MIG0.AXI_awready),    // output wire s_axi_awready
  .s_axi_wdata(AXI_MM_MIG0.AXI_wdata),        // input wire [511 : 0] s_axi_wdata
  .s_axi_wstrb(AXI_MM_MIG0.AXI_wstrb),        // input wire [63 : 0] s_axi_wstrb
  .s_axi_wlast(AXI_MM_MIG0.AXI_wlast),        // input wire s_axi_wlast
  .s_axi_wvalid(AXI_MM_MIG0.AXI_wvalid),      // input wire s_axi_wvalid
  .s_axi_wready(AXI_MM_MIG0.AXI_wready),      // output wire s_axi_wready
  .s_axi_bid(AXI_MM_MIG0.AXI_bid),            // output wire [5 : 0] s_axi_bid
  .s_axi_bresp(AXI_MM_MIG0.AXI_bresp),        // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(AXI_MM_MIG0.AXI_bvalid),      // output wire s_axi_bvalid
  .s_axi_bready(AXI_MM_MIG0.AXI_bready),      // input wire s_axi_bready
  .s_axi_arid(AXI_MM_MIG0.AXI_arid),          // input wire [5 : 0] s_axi_arid
  .s_axi_araddr(AXI_MM_MIG0.AXI_araddr),      // input wire [63 : 0] s_axi_araddr
  .s_axi_arlen(AXI_MM_MIG0.AXI_arlen),        // input wire [7 : 0] s_axi_arlen
  .s_axi_arsize(AXI_MM_MIG0.AXI_arsize),      // input wire [2 : 0] s_axi_arsize
  .s_axi_arburst(AXI_MM_MIG0.AXI_arburst),    // input wire [1 : 0] s_axi_arburst
  .s_axi_arlock(AXI_MM_MIG0.AXI_arlock),      // input wire [0 : 0] s_axi_arlock
  .s_axi_arcache(AXI_MM_MIG0.AXI_arcache),    // input wire [3 : 0] s_axi_arcache
  .s_axi_arprot(AXI_MM_MIG0.AXI_arprot),      // input wire [2 : 0] s_axi_arprot
  .s_axi_arregion(AXI_MM_MIG0.AXI_arregion),  // input wire [3 : 0] s_axi_arregion
  .s_axi_arqos(AXI_MM_MIG0.AXI_arqos),        // input wire [3 : 0] s_axi_arqos
  .s_axi_arvalid(AXI_MM_MIG0.AXI_arvalid),    // input wire s_axi_arvalid
  .s_axi_arready(AXI_MM_MIG0.AXI_arready),    // output wire s_axi_arready
  .s_axi_rid(AXI_MM_MIG0.AXI_rid),            // output wire [5 : 0] s_axi_rid
  .s_axi_rdata(AXI_MM_MIG0.AXI_rdata),        // output wire [511 : 0] s_axi_rdata
  .s_axi_rresp(AXI_MM_MIG0.AXI_rresp),        // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast(AXI_MM_MIG0.AXI_rlast),        // output wire s_axi_rlast
  .s_axi_rvalid(AXI_MM_MIG0.AXI_rvalid),      // output wire s_axi_rvalid
  .s_axi_rready(AXI_MM_MIG0.AXI_rready),      // input wire s_axi_rready
  .m_axi_awid(AXI_MM_MIG0_REG_SLICE.AXI_awid),          // output wire [5 : 0] m_axi_awid
  .m_axi_awaddr(AXI_MM_MIG0_REG_SLICE.AXI_awaddr),      // output wire [63 : 0] m_axi_awaddr
  .m_axi_awlen(AXI_MM_MIG0_REG_SLICE.AXI_awlen),        // output wire [7 : 0] m_axi_awlen
  .m_axi_awsize(AXI_MM_MIG0_REG_SLICE.AXI_awsize),      // output wire [2 : 0] m_axi_awsize
  .m_axi_awburst(AXI_MM_MIG0_REG_SLICE.AXI_awburst),    // output wire [1 : 0] m_axi_awburst
  .m_axi_awlock(AXI_MM_MIG0_REG_SLICE.AXI_awlock),      // output wire [0 : 0] m_axi_awlock
  .m_axi_awcache(AXI_MM_MIG0_REG_SLICE.AXI_awcache),    // output wire [3 : 0] m_axi_awcache
  .m_axi_awprot(AXI_MM_MIG0_REG_SLICE.AXI_awprot),      // output wire [2 : 0] m_axi_awprot
  .m_axi_awregion(AXI_MM_MIG0_REG_SLICE.AXI_awregion),  // output wire [3 : 0] m_axi_awregion
  .m_axi_awqos(AXI_MM_MIG0_REG_SLICE.AXI_awqos),        // output wire [3 : 0] m_axi_awqos
  .m_axi_awvalid(AXI_MM_MIG0_REG_SLICE.AXI_awvalid),    // output wire m_axi_awvalid
  .m_axi_awready(AXI_MM_MIG0_REG_SLICE.AXI_awready),    // input wire m_axi_awready
  .m_axi_wdata(AXI_MM_MIG0_REG_SLICE.AXI_wdata),        // output wire [511 : 0] m_axi_wdata
  .m_axi_wstrb(AXI_MM_MIG0_REG_SLICE.AXI_wstrb),        // output wire [63 : 0] m_axi_wstrb
  .m_axi_wlast(AXI_MM_MIG0_REG_SLICE.AXI_wlast),        // output wire m_axi_wlast
  .m_axi_wvalid(AXI_MM_MIG0_REG_SLICE.AXI_wvalid),      // output wire m_axi_wvalid
  .m_axi_wready(AXI_MM_MIG0_REG_SLICE.AXI_wready),      // input wire m_axi_wready
  .m_axi_bid(AXI_MM_MIG0_REG_SLICE.AXI_bid),            // input wire [5 : 0] m_axi_bid
  .m_axi_bresp(AXI_MM_MIG0_REG_SLICE.AXI_bresp),        // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(AXI_MM_MIG0_REG_SLICE.AXI_bvalid),      // input wire m_axi_bvalid
  .m_axi_bready(AXI_MM_MIG0_REG_SLICE.AXI_bready),      // output wire m_axi_bready
  .m_axi_arid(AXI_MM_MIG0_REG_SLICE.AXI_arid),          // output wire [5 : 0] m_axi_arid
  .m_axi_araddr(AXI_MM_MIG0_REG_SLICE.AXI_araddr),      // output wire [63 : 0] m_axi_araddr
  .m_axi_arlen(AXI_MM_MIG0_REG_SLICE.AXI_arlen),        // output wire [7 : 0] m_axi_arlen
  .m_axi_arsize(AXI_MM_MIG0_REG_SLICE.AXI_arsize),      // output wire [2 : 0] m_axi_arsize
  .m_axi_arburst(AXI_MM_MIG0_REG_SLICE.AXI_arburst),    // output wire [1 : 0] m_axi_arburst
  .m_axi_arlock(AXI_MM_MIG0_REG_SLICE.AXI_arlock),      // output wire [0 : 0] m_axi_arlock
  .m_axi_arcache(AXI_MM_MIG0_REG_SLICE.AXI_arcache),    // output wire [3 : 0] m_axi_arcache
  .m_axi_arprot(AXI_MM_MIG0_REG_SLICE.AXI_arprot),      // output wire [2 : 0] m_axi_arprot
  .m_axi_arregion(AXI_MM_MIG0_REG_SLICE.AXI_arregion),  // output wire [3 : 0] m_axi_arregion
  .m_axi_arqos(AXI_MM_MIG0_REG_SLICE.AXI_arqos),        // output wire [3 : 0] m_axi_arqos
  .m_axi_arvalid(AXI_MM_MIG0_REG_SLICE.AXI_arvalid),    // output wire m_axi_arvalid
  .m_axi_arready(AXI_MM_MIG0_REG_SLICE.AXI_arready),    // input wire m_axi_arready
  .m_axi_rid(AXI_MM_MIG0_REG_SLICE.AXI_rid),            // input wire [5 : 0] m_axi_rid
  .m_axi_rdata(AXI_MM_MIG0_REG_SLICE.AXI_rdata),        // input wire [511 : 0] m_axi_rdata
  .m_axi_rresp(AXI_MM_MIG0_REG_SLICE.AXI_rresp),        // input wire [1 : 0] m_axi_rresp
  .m_axi_rlast(AXI_MM_MIG0_REG_SLICE.AXI_rlast),        // input wire m_axi_rlast
  .m_axi_rvalid(AXI_MM_MIG0_REG_SLICE.AXI_rvalid),      // input wire m_axi_rvalid
  .m_axi_rready(AXI_MM_MIG0_REG_SLICE.AXI_rready)      // output wire m_axi_rready
);

axi4mm_slr_reg_slice dyn_axi4mm_slr_reg_slice_mig3 (
  .aclk(CLK_IN_250M),                      // input wire aclk
  .aresetn(CLK_IN_250M_rst_n[0]),                // input wire aresetn
  .s_axi_awid(AXI_MM_MIG3.AXI_awid),          // input wire [5 : 0] s_axi_awid
  .s_axi_awaddr(AXI_MM_MIG3.AXI_awaddr),      // input wire [63 : 0] s_axi_awaddr
  .s_axi_awlen(AXI_MM_MIG3.AXI_awlen),        // input wire [7 : 0] s_axi_awlen
  .s_axi_awsize(AXI_MM_MIG3.AXI_awsize),      // input wire [2 : 0] s_axi_awsize
  .s_axi_awburst(AXI_MM_MIG3.AXI_awburst),    // input wire [1 : 0] s_axi_awburst
  .s_axi_awlock(AXI_MM_MIG3.AXI_awlock),      // input wire [0 : 0] s_axi_awlock
  .s_axi_awcache(AXI_MM_MIG3.AXI_awcache),    // input wire [3 : 0] s_axi_awcache
  .s_axi_awprot(AXI_MM_MIG3.AXI_awprot),      // input wire [2 : 0] s_axi_awprot
  .s_axi_awregion(AXI_MM_MIG3.AXI_awregion),  // input wire [3 : 0] s_axi_awregion
  .s_axi_awqos(AXI_MM_MIG3.AXI_awqos),        // input wire [3 : 0] s_axi_awqos
  .s_axi_awvalid(AXI_MM_MIG3.AXI_awvalid),    // input wire s_axi_awvalid
  .s_axi_awready(AXI_MM_MIG3.AXI_awready),    // output wire s_axi_awready
  .s_axi_wdata(AXI_MM_MIG3.AXI_wdata),        // input wire [511 : 0] s_axi_wdata
  .s_axi_wstrb(AXI_MM_MIG3.AXI_wstrb),        // input wire [63 : 0] s_axi_wstrb
  .s_axi_wlast(AXI_MM_MIG3.AXI_wlast),        // input wire s_axi_wlast
  .s_axi_wvalid(AXI_MM_MIG3.AXI_wvalid),      // input wire s_axi_wvalid
  .s_axi_wready(AXI_MM_MIG3.AXI_wready),      // output wire s_axi_wready
  .s_axi_bid(AXI_MM_MIG3.AXI_bid),            // output wire [5 : 0] s_axi_bid
  .s_axi_bresp(AXI_MM_MIG3.AXI_bresp),        // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(AXI_MM_MIG3.AXI_bvalid),      // output wire s_axi_bvalid
  .s_axi_bready(AXI_MM_MIG3.AXI_bready),      // input wire s_axi_bready
  .s_axi_arid(AXI_MM_MIG3.AXI_arid),          // input wire [5 : 0] s_axi_arid
  .s_axi_araddr(AXI_MM_MIG3.AXI_araddr),      // input wire [63 : 0] s_axi_araddr
  .s_axi_arlen(AXI_MM_MIG3.AXI_arlen),        // input wire [7 : 0] s_axi_arlen
  .s_axi_arsize(AXI_MM_MIG3.AXI_arsize),      // input wire [2 : 0] s_axi_arsize
  .s_axi_arburst(AXI_MM_MIG3.AXI_arburst),    // input wire [1 : 0] s_axi_arburst
  .s_axi_arlock(AXI_MM_MIG3.AXI_arlock),      // input wire [0 : 0] s_axi_arlock
  .s_axi_arcache(AXI_MM_MIG3.AXI_arcache),    // input wire [3 : 0] s_axi_arcache
  .s_axi_arprot(AXI_MM_MIG3.AXI_arprot),      // input wire [2 : 0] s_axi_arprot
  .s_axi_arregion(AXI_MM_MIG3.AXI_arregion),  // input wire [3 : 0] s_axi_arregion
  .s_axi_arqos(AXI_MM_MIG3.AXI_arqos),        // input wire [3 : 0] s_axi_arqos
  .s_axi_arvalid(AXI_MM_MIG3.AXI_arvalid),    // input wire s_axi_arvalid
  .s_axi_arready(AXI_MM_MIG3.AXI_arready),    // output wire s_axi_arready
  .s_axi_rid(AXI_MM_MIG3.AXI_rid),            // output wire [5 : 0] s_axi_rid
  .s_axi_rdata(AXI_MM_MIG3.AXI_rdata),        // output wire [511 : 0] s_axi_rdata
  .s_axi_rresp(AXI_MM_MIG3.AXI_rresp),        // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast(AXI_MM_MIG3.AXI_rlast),        // output wire s_axi_rlast
  .s_axi_rvalid(AXI_MM_MIG3.AXI_rvalid),      // output wire s_axi_rvalid
  .s_axi_rready(AXI_MM_MIG3.AXI_rready),      // input wire s_axi_rready
  .m_axi_awid(AXI_MM_MIG3_REG_SLICE.AXI_awid),          // output wire [5 : 0] m_axi_awid
  .m_axi_awaddr(AXI_MM_MIG3_REG_SLICE.AXI_awaddr),      // output wire [63 : 0] m_axi_awaddr
  .m_axi_awlen(AXI_MM_MIG3_REG_SLICE.AXI_awlen),        // output wire [7 : 0] m_axi_awlen
  .m_axi_awsize(AXI_MM_MIG3_REG_SLICE.AXI_awsize),      // output wire [2 : 0] m_axi_awsize
  .m_axi_awburst(AXI_MM_MIG3_REG_SLICE.AXI_awburst),    // output wire [1 : 0] m_axi_awburst
  .m_axi_awlock(AXI_MM_MIG3_REG_SLICE.AXI_awlock),      // output wire [0 : 0] m_axi_awlock
  .m_axi_awcache(AXI_MM_MIG3_REG_SLICE.AXI_awcache),    // output wire [3 : 0] m_axi_awcache
  .m_axi_awprot(AXI_MM_MIG3_REG_SLICE.AXI_awprot),      // output wire [2 : 0] m_axi_awprot
  .m_axi_awregion(AXI_MM_MIG3_REG_SLICE.AXI_awregion),  // output wire [3 : 0] m_axi_awregion
  .m_axi_awqos(AXI_MM_MIG3_REG_SLICE.AXI_awqos),        // output wire [3 : 0] m_axi_awqos
  .m_axi_awvalid(AXI_MM_MIG3_REG_SLICE.AXI_awvalid),    // output wire m_axi_awvalid
  .m_axi_awready(AXI_MM_MIG3_REG_SLICE.AXI_awready),    // input wire m_axi_awready
  .m_axi_wdata(AXI_MM_MIG3_REG_SLICE.AXI_wdata),        // output wire [511 : 0] m_axi_wdata
  .m_axi_wstrb(AXI_MM_MIG3_REG_SLICE.AXI_wstrb),        // output wire [63 : 0] m_axi_wstrb
  .m_axi_wlast(AXI_MM_MIG3_REG_SLICE.AXI_wlast),        // output wire m_axi_wlast
  .m_axi_wvalid(AXI_MM_MIG3_REG_SLICE.AXI_wvalid),      // output wire m_axi_wvalid
  .m_axi_wready(AXI_MM_MIG3_REG_SLICE.AXI_wready),      // input wire m_axi_wready
  .m_axi_bid(AXI_MM_MIG3_REG_SLICE.AXI_bid),            // input wire [5 : 0] m_axi_bid
  .m_axi_bresp(AXI_MM_MIG3_REG_SLICE.AXI_bresp),        // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(AXI_MM_MIG3_REG_SLICE.AXI_bvalid),      // input wire m_axi_bvalid
  .m_axi_bready(AXI_MM_MIG3_REG_SLICE.AXI_bready),      // output wire m_axi_bready
  .m_axi_arid(AXI_MM_MIG3_REG_SLICE.AXI_arid),          // output wire [5 : 0] m_axi_arid
  .m_axi_araddr(AXI_MM_MIG3_REG_SLICE.AXI_araddr),      // output wire [63 : 0] m_axi_araddr
  .m_axi_arlen(AXI_MM_MIG3_REG_SLICE.AXI_arlen),        // output wire [7 : 0] m_axi_arlen
  .m_axi_arsize(AXI_MM_MIG3_REG_SLICE.AXI_arsize),      // output wire [2 : 0] m_axi_arsize
  .m_axi_arburst(AXI_MM_MIG3_REG_SLICE.AXI_arburst),    // output wire [1 : 0] m_axi_arburst
  .m_axi_arlock(AXI_MM_MIG3_REG_SLICE.AXI_arlock),      // output wire [0 : 0] m_axi_arlock
  .m_axi_arcache(AXI_MM_MIG3_REG_SLICE.AXI_arcache),    // output wire [3 : 0] m_axi_arcache
  .m_axi_arprot(AXI_MM_MIG3_REG_SLICE.AXI_arprot),      // output wire [2 : 0] m_axi_arprot
  .m_axi_arregion(AXI_MM_MIG3_REG_SLICE.AXI_arregion),  // output wire [3 : 0] m_axi_arregion
  .m_axi_arqos(AXI_MM_MIG3_REG_SLICE.AXI_arqos),        // output wire [3 : 0] m_axi_arqos
  .m_axi_arvalid(AXI_MM_MIG3_REG_SLICE.AXI_arvalid),    // output wire m_axi_arvalid
  .m_axi_arready(AXI_MM_MIG3_REG_SLICE.AXI_arready),    // input wire m_axi_arready
  .m_axi_rid(AXI_MM_MIG3_REG_SLICE.AXI_rid),            // input wire [5 : 0] m_axi_rid
  .m_axi_rdata(AXI_MM_MIG3_REG_SLICE.AXI_rdata),        // input wire [511 : 0] m_axi_rdata
  .m_axi_rresp(AXI_MM_MIG3_REG_SLICE.AXI_rresp),        // input wire [1 : 0] m_axi_rresp
  .m_axi_rlast(AXI_MM_MIG3_REG_SLICE.AXI_rlast),        // input wire m_axi_rlast
  .m_axi_rvalid(AXI_MM_MIG3_REG_SLICE.AXI_rvalid),      // input wire m_axi_rvalid
  .m_axi_rready(AXI_MM_MIG3_REG_SLICE.AXI_rready)      // output wire m_axi_rready
);

axi4lite_slr_reg_slice dyn_axi4lite_slr_reg_slice_mig0 (
  .aclk(CLK_IN_250M),                    // input wire aclk
  .aresetn(CLK_IN_250M_rst_n[0]),              // input wire aresetn
  .s_axi_awaddr(MIG0_AXI4LITE.AXI_LITE_awaddr),    // input wire [31 : 0] s_axi_awaddr
  .s_axi_awprot(MIG0_AXI4LITE.AXI_LITE_awprot),    // input wire [2 : 0] s_axi_awprot
  .s_axi_awvalid(MIG0_AXI4LITE.AXI_LITE_awvalid),  // input wire s_axi_awvalid
  .s_axi_awready(MIG0_AXI4LITE.AXI_LITE_awready),  // output wire s_axi_awready
  .s_axi_wdata(MIG0_AXI4LITE.AXI_LITE_wdata),      // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(MIG0_AXI4LITE.AXI_LITE_wstrb),      // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid(MIG0_AXI4LITE.AXI_LITE_wvalid),    // input wire s_axi_wvalid
  .s_axi_wready(MIG0_AXI4LITE.AXI_LITE_wready),    // output wire s_axi_wready
  .s_axi_bresp(MIG0_AXI4LITE.AXI_LITE_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(MIG0_AXI4LITE.AXI_LITE_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready(MIG0_AXI4LITE.AXI_LITE_bready),    // input wire s_axi_bready
  .s_axi_araddr(MIG0_AXI4LITE.AXI_LITE_araddr),    // input wire [31 : 0] s_axi_araddr
  .s_axi_arprot(MIG0_AXI4LITE.AXI_LITE_arprot),    // input wire [2 : 0] s_axi_arprot
  .s_axi_arvalid(MIG0_AXI4LITE.AXI_LITE_arvalid),  // input wire s_axi_arvalid
  .s_axi_arready(MIG0_AXI4LITE.AXI_LITE_arready),  // output wire s_axi_arready
  .s_axi_rdata(MIG0_AXI4LITE.AXI_LITE_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(MIG0_AXI4LITE.AXI_LITE_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid(MIG0_AXI4LITE.AXI_LITE_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready(MIG0_AXI4LITE.AXI_LITE_rready),    // input wire s_axi_rready
  .m_axi_awaddr(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awaddr),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awprot),    // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awvalid),  // output wire m_axi_awvalid
  .m_axi_awready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awready),  // input wire m_axi_awready
  .m_axi_wdata(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wdata),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wstrb),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wvalid),    // output wire m_axi_wvalid
  .m_axi_wready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wready),    // input wire m_axi_wready
  .m_axi_bresp(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bresp),      // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bvalid),    // input wire m_axi_bvalid
  .m_axi_bready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bready),    // output wire m_axi_bready
  .m_axi_araddr(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_araddr),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arprot),    // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arvalid),  // output wire m_axi_arvalid
  .m_axi_arready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arready),  // input wire m_axi_arready
  .m_axi_rdata(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rdata),      // input wire [31 : 0] m_axi_rdata
  .m_axi_rresp(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rresp),      // input wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rvalid),    // input wire m_axi_rvalid
  .m_axi_rready(MIG0_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rready)    // output wire m_axi_rready
);

axi4lite_slr_reg_slice dyn_axi4lite_slr_reg_slice_mig3 (
  .aclk(CLK_IN_250M),                    // input wire aclk
  .aresetn(CLK_IN_250M_rst_n[0]),              // input wire aresetn
  .s_axi_awaddr(MIG3_AXI4LITE.AXI_LITE_awaddr),    // input wire [31 : 0] s_axi_awaddr
  .s_axi_awprot(MIG3_AXI4LITE.AXI_LITE_awprot),    // input wire [2 : 0] s_axi_awprot
  .s_axi_awvalid(MIG3_AXI4LITE.AXI_LITE_awvalid),  // input wire s_axi_awvalid
  .s_axi_awready(MIG3_AXI4LITE.AXI_LITE_awready),  // output wire s_axi_awready
  .s_axi_wdata(MIG3_AXI4LITE.AXI_LITE_wdata),      // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(MIG3_AXI4LITE.AXI_LITE_wstrb),      // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid(MIG3_AXI4LITE.AXI_LITE_wvalid),    // input wire s_axi_wvalid
  .s_axi_wready(MIG3_AXI4LITE.AXI_LITE_wready),    // output wire s_axi_wready
  .s_axi_bresp(MIG3_AXI4LITE.AXI_LITE_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(MIG3_AXI4LITE.AXI_LITE_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready(MIG3_AXI4LITE.AXI_LITE_bready),    // input wire s_axi_bready
  .s_axi_araddr(MIG3_AXI4LITE.AXI_LITE_araddr),    // input wire [31 : 0] s_axi_araddr
  .s_axi_arprot(MIG3_AXI4LITE.AXI_LITE_arprot),    // input wire [2 : 0] s_axi_arprot
  .s_axi_arvalid(MIG3_AXI4LITE.AXI_LITE_arvalid),  // input wire s_axi_arvalid
  .s_axi_arready(MIG3_AXI4LITE.AXI_LITE_arready),  // output wire s_axi_arready
  .s_axi_rdata(MIG3_AXI4LITE.AXI_LITE_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(MIG3_AXI4LITE.AXI_LITE_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid(MIG3_AXI4LITE.AXI_LITE_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready(MIG3_AXI4LITE.AXI_LITE_rready),    // input wire s_axi_rready
  .m_axi_awaddr(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awaddr),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awprot),    // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awvalid),  // output wire m_axi_awvalid
  .m_axi_awready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_awready),  // input wire m_axi_awready
  .m_axi_wdata(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wdata),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wstrb),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wvalid),    // output wire m_axi_wvalid
  .m_axi_wready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_wready),    // input wire m_axi_wready
  .m_axi_bresp(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bresp),      // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bvalid),    // input wire m_axi_bvalid
  .m_axi_bready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_bready),    // output wire m_axi_bready
  .m_axi_araddr(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_araddr),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arprot),    // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arvalid),  // output wire m_axi_arvalid
  .m_axi_arready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_arready),  // input wire m_axi_arready
  .m_axi_rdata(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rdata),      // input wire [31 : 0] m_axi_rdata
  .m_axi_rresp(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rresp),      // input wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rvalid),    // input wire m_axi_rvalid
  .m_axi_rready(MIG3_AXI4_LITE_SLR_REG_SLICE.AXI_LITE_rready)    // output wire m_axi_rready
);

axi_ic_ddr4_pcim axi_ic_ddr4_pcim_i
       (.AXI_RESET_N(AXI_RESET_N),
        .CLK_IN_250(CLK_IN_250M),
        .M_AXI_MM_MIG0_araddr(AXI_MM_MIG0.AXI_araddr),
        .M_AXI_MM_MIG0_arburst(AXI_MM_MIG0.AXI_arburst),
        .M_AXI_MM_MIG0_arcache(AXI_MM_MIG0.AXI_arcache),
        .M_AXI_MM_MIG0_arid(AXI_MM_MIG0.AXI_arid),
        .M_AXI_MM_MIG0_arlen(AXI_MM_MIG0.AXI_arlen),
        .M_AXI_MM_MIG0_arlock(AXI_MM_MIG0.AXI_arlock),
        .M_AXI_MM_MIG0_arprot(AXI_MM_MIG0.AXI_arprot),
        .M_AXI_MM_MIG0_arqos(AXI_MM_MIG0.AXI_arqos),
        .M_AXI_MM_MIG0_arready(AXI_MM_MIG0.AXI_arready),
        .M_AXI_MM_MIG0_arregion(AXI_MM_MIG0.AXI_arregion),
        .M_AXI_MM_MIG0_arsize(AXI_MM_MIG0.AXI_arsize),
        .M_AXI_MM_MIG0_arvalid(AXI_MM_MIG0.AXI_arvalid),
        .M_AXI_MM_MIG0_awaddr(AXI_MM_MIG0.AXI_awaddr),
        .M_AXI_MM_MIG0_awburst(AXI_MM_MIG0.AXI_awburst),
        .M_AXI_MM_MIG0_awcache(AXI_MM_MIG0.AXI_awcache),
        .M_AXI_MM_MIG0_awid(AXI_MM_MIG0.AXI_awid),
        .M_AXI_MM_MIG0_awlen(AXI_MM_MIG0.AXI_awlen),
        .M_AXI_MM_MIG0_awlock(AXI_MM_MIG0.AXI_awlock),
        .M_AXI_MM_MIG0_awprot(AXI_MM_MIG0.AXI_awprot),
        .M_AXI_MM_MIG0_awqos(AXI_MM_MIG0.AXI_awqos),
        .M_AXI_MM_MIG0_awready(AXI_MM_MIG0.AXI_awready),
        .M_AXI_MM_MIG0_awregion(AXI_MM_MIG0.AXI_awregion),
        .M_AXI_MM_MIG0_awsize(AXI_MM_MIG0.AXI_awsize),
        .M_AXI_MM_MIG0_awvalid(AXI_MM_MIG0.AXI_awvalid),
        .M_AXI_MM_MIG0_bid(AXI_MM_MIG0.AXI_bid),
        .M_AXI_MM_MIG0_bready(AXI_MM_MIG0.AXI_bready),
        .M_AXI_MM_MIG0_bresp(AXI_MM_MIG0.AXI_bresp),
        .M_AXI_MM_MIG0_bvalid(AXI_MM_MIG0.AXI_bvalid),
        .M_AXI_MM_MIG0_rdata(AXI_MM_MIG0.AXI_rdata),
        .M_AXI_MM_MIG0_rid(AXI_MM_MIG0.AXI_rid),
        .M_AXI_MM_MIG0_rlast(AXI_MM_MIG0.AXI_rlast),
        .M_AXI_MM_MIG0_rready(AXI_MM_MIG0.AXI_rready),
        .M_AXI_MM_MIG0_rresp(AXI_MM_MIG0.AXI_rresp),
        .M_AXI_MM_MIG0_rvalid(AXI_MM_MIG0.AXI_rvalid),
        .M_AXI_MM_MIG0_wdata(AXI_MM_MIG0.AXI_wdata),
        .M_AXI_MM_MIG0_wlast(AXI_MM_MIG0.AXI_wlast),
        .M_AXI_MM_MIG0_wready(AXI_MM_MIG0.AXI_wready),
        .M_AXI_MM_MIG0_wstrb(AXI_MM_MIG0.AXI_wstrb),
        .M_AXI_MM_MIG0_wvalid(AXI_MM_MIG0.AXI_wvalid),
        .M_AXI_MM_MIG2_araddr(AXI_MM_MIG2.AXI_araddr),
        .M_AXI_MM_MIG2_arburst(AXI_MM_MIG2.AXI_arburst),
        .M_AXI_MM_MIG2_arcache(AXI_MM_MIG2.AXI_arcache),
        .M_AXI_MM_MIG2_arid(AXI_MM_MIG2.AXI_arid),
        .M_AXI_MM_MIG2_arlen(AXI_MM_MIG2.AXI_arlen),
        .M_AXI_MM_MIG2_arlock(AXI_MM_MIG2.AXI_arlock),
        .M_AXI_MM_MIG2_arprot(AXI_MM_MIG2.AXI_arprot),
        .M_AXI_MM_MIG2_arqos(AXI_MM_MIG2.AXI_arqos),
        .M_AXI_MM_MIG2_arready(AXI_MM_MIG2.AXI_arready),
        .M_AXI_MM_MIG2_arregion(AXI_MM_MIG2.AXI_arregion),
        .M_AXI_MM_MIG2_arsize(AXI_MM_MIG2.AXI_arsize),
        .M_AXI_MM_MIG2_arvalid(AXI_MM_MIG2.AXI_arvalid),
        .M_AXI_MM_MIG2_awaddr(AXI_MM_MIG2.AXI_awaddr),
        .M_AXI_MM_MIG2_awburst(AXI_MM_MIG2.AXI_awburst),
        .M_AXI_MM_MIG2_awcache(AXI_MM_MIG2.AXI_awcache),
        .M_AXI_MM_MIG2_awid(AXI_MM_MIG2.AXI_awid),
        .M_AXI_MM_MIG2_awlen(AXI_MM_MIG2.AXI_awlen),
        .M_AXI_MM_MIG2_awlock(AXI_MM_MIG2.AXI_awlock),
        .M_AXI_MM_MIG2_awprot(AXI_MM_MIG2.AXI_awprot),
        .M_AXI_MM_MIG2_awqos(AXI_MM_MIG2.AXI_awqos),
        .M_AXI_MM_MIG2_awready(AXI_MM_MIG2.AXI_awready),
        .M_AXI_MM_MIG2_awregion(AXI_MM_MIG2.AXI_awregion),
        .M_AXI_MM_MIG2_awsize(AXI_MM_MIG2.AXI_awsize),
        .M_AXI_MM_MIG2_awvalid(AXI_MM_MIG2.AXI_awvalid),
        .M_AXI_MM_MIG2_bid(AXI_MM_MIG2.AXI_bid),
        .M_AXI_MM_MIG2_bready(AXI_MM_MIG2.AXI_bready),
        .M_AXI_MM_MIG2_bresp(AXI_MM_MIG2.AXI_bresp),
        .M_AXI_MM_MIG2_bvalid(AXI_MM_MIG2.AXI_bvalid),
        .M_AXI_MM_MIG2_rdata(AXI_MM_MIG2.AXI_rdata),
        .M_AXI_MM_MIG2_rid(AXI_MM_MIG2.AXI_rid),
        .M_AXI_MM_MIG2_rlast(AXI_MM_MIG2.AXI_rlast),
        .M_AXI_MM_MIG2_rready(AXI_MM_MIG2.AXI_rready),
        .M_AXI_MM_MIG2_rresp(AXI_MM_MIG2.AXI_rresp),
        .M_AXI_MM_MIG2_rvalid(AXI_MM_MIG2.AXI_rvalid),
        .M_AXI_MM_MIG2_wdata(AXI_MM_MIG2.AXI_wdata),
        .M_AXI_MM_MIG2_wlast(AXI_MM_MIG2.AXI_wlast),
        .M_AXI_MM_MIG2_wready(AXI_MM_MIG2.AXI_wready),
        .M_AXI_MM_MIG2_wstrb(AXI_MM_MIG2.AXI_wstrb),
        .M_AXI_MM_MIG2_wvalid(AXI_MM_MIG2.AXI_wvalid),
        .M_AXI_MM_MIG3_araddr(AXI_MM_MIG3.AXI_araddr),
        .M_AXI_MM_MIG3_arburst(AXI_MM_MIG3.AXI_arburst),
        .M_AXI_MM_MIG3_arcache(AXI_MM_MIG3.AXI_arcache),
        .M_AXI_MM_MIG3_arid(AXI_MM_MIG3.AXI_arid),
        .M_AXI_MM_MIG3_arlen(AXI_MM_MIG3.AXI_arlen),
        .M_AXI_MM_MIG3_arlock(AXI_MM_MIG3.AXI_arlock),
        .M_AXI_MM_MIG3_arprot(AXI_MM_MIG3.AXI_arprot),
        .M_AXI_MM_MIG3_arqos(AXI_MM_MIG3.AXI_arqos),
        .M_AXI_MM_MIG3_arready(AXI_MM_MIG3.AXI_arready),
        .M_AXI_MM_MIG3_arregion(AXI_MM_MIG3.AXI_arregion),
        .M_AXI_MM_MIG3_arsize(AXI_MM_MIG3.AXI_arsize),
        .M_AXI_MM_MIG3_arvalid(AXI_MM_MIG3.AXI_arvalid),
        .M_AXI_MM_MIG3_awaddr(AXI_MM_MIG3.AXI_awaddr),
        .M_AXI_MM_MIG3_awburst(AXI_MM_MIG3.AXI_awburst),
        .M_AXI_MM_MIG3_awcache(AXI_MM_MIG3.AXI_awcache),
        .M_AXI_MM_MIG3_awid(AXI_MM_MIG3.AXI_awid),
        .M_AXI_MM_MIG3_awlen(AXI_MM_MIG3.AXI_awlen),
        .M_AXI_MM_MIG3_awlock(AXI_MM_MIG3.AXI_awlock),
        .M_AXI_MM_MIG3_awprot(AXI_MM_MIG3.AXI_awprot),
        .M_AXI_MM_MIG3_awqos(AXI_MM_MIG3.AXI_awqos),
        .M_AXI_MM_MIG3_awready(AXI_MM_MIG3.AXI_awready),
        .M_AXI_MM_MIG3_awregion(AXI_MM_MIG3.AXI_awregion),
        .M_AXI_MM_MIG3_awsize(AXI_MM_MIG3.AXI_awsize),
        .M_AXI_MM_MIG3_awvalid(AXI_MM_MIG3.AXI_awvalid),
        .M_AXI_MM_MIG3_bid(AXI_MM_MIG3.AXI_bid),
        .M_AXI_MM_MIG3_bready(AXI_MM_MIG3.AXI_bready),
        .M_AXI_MM_MIG3_bresp(AXI_MM_MIG3.AXI_bresp),
        .M_AXI_MM_MIG3_bvalid(AXI_MM_MIG3.AXI_bvalid),
        .M_AXI_MM_MIG3_rdata(AXI_MM_MIG3.AXI_rdata),
        .M_AXI_MM_MIG3_rid(AXI_MM_MIG3.AXI_rid),
        .M_AXI_MM_MIG3_rlast(AXI_MM_MIG3.AXI_rlast),
        .M_AXI_MM_MIG3_rready(AXI_MM_MIG3.AXI_rready),
        .M_AXI_MM_MIG3_rresp(AXI_MM_MIG3.AXI_rresp),
        .M_AXI_MM_MIG3_rvalid(AXI_MM_MIG3.AXI_rvalid),
        .M_AXI_MM_MIG3_wdata(AXI_MM_MIG3.AXI_wdata),
        .M_AXI_MM_MIG3_wlast(AXI_MM_MIG3.AXI_wlast),
        .M_AXI_MM_MIG3_wready(AXI_MM_MIG3.AXI_wready),
        .M_AXI_MM_MIG3_wstrb(AXI_MM_MIG3.AXI_wstrb),
        .M_AXI_MM_MIG3_wvalid(AXI_MM_MIG3.AXI_wvalid),
        .M_AXI_MM_MIG_araddr(M_AXI_NORTH_TO_STATIC.AXI_araddr),
        .M_AXI_MM_MIG_arburst(M_AXI_NORTH_TO_STATIC.AXI_arburst),
        .M_AXI_MM_MIG_arcache(M_AXI_NORTH_TO_STATIC.AXI_arcache),
        .M_AXI_MM_MIG_arid(M_AXI_NORTH_TO_STATIC.AXI_arid),
        .M_AXI_MM_MIG_arlen(M_AXI_NORTH_TO_STATIC.AXI_arlen),
        .M_AXI_MM_MIG_arlock(M_AXI_NORTH_TO_STATIC.AXI_arlock),
        .M_AXI_MM_MIG_arprot(M_AXI_NORTH_TO_STATIC.AXI_arprot),
        .M_AXI_MM_MIG_arqos(M_AXI_NORTH_TO_STATIC.AXI_arqos),
        .M_AXI_MM_MIG_arready(M_AXI_NORTH_TO_STATIC.AXI_arready),
        .M_AXI_MM_MIG_arregion(M_AXI_NORTH_TO_STATIC.AXI_arregion),
        .M_AXI_MM_MIG_arsize(M_AXI_NORTH_TO_STATIC.AXI_arsize),
        .M_AXI_MM_MIG_arvalid(M_AXI_NORTH_TO_STATIC.AXI_arvalid),
        .M_AXI_MM_MIG_awaddr(M_AXI_NORTH_TO_STATIC.AXI_awaddr),
        .M_AXI_MM_MIG_awburst(M_AXI_NORTH_TO_STATIC.AXI_awburst),
        .M_AXI_MM_MIG_awcache(M_AXI_NORTH_TO_STATIC.AXI_awcache),
        .M_AXI_MM_MIG_awid(M_AXI_NORTH_TO_STATIC.AXI_awid),
        .M_AXI_MM_MIG_awlen(M_AXI_NORTH_TO_STATIC.AXI_awlen),
        .M_AXI_MM_MIG_awlock(M_AXI_NORTH_TO_STATIC.AXI_awlock),
        .M_AXI_MM_MIG_awprot(M_AXI_NORTH_TO_STATIC.AXI_awprot),
        .M_AXI_MM_MIG_awqos(M_AXI_NORTH_TO_STATIC.AXI_awqos),
        .M_AXI_MM_MIG_awready(M_AXI_NORTH_TO_STATIC.AXI_awready),
        .M_AXI_MM_MIG_awregion(M_AXI_NORTH_TO_STATIC.AXI_awregion),
        .M_AXI_MM_MIG_awsize(M_AXI_NORTH_TO_STATIC.AXI_awsize),
        .M_AXI_MM_MIG_awvalid(M_AXI_NORTH_TO_STATIC.AXI_awvalid),
        .M_AXI_MM_MIG_bid(M_AXI_NORTH_TO_STATIC.AXI_bid),
        .M_AXI_MM_MIG_bready(M_AXI_NORTH_TO_STATIC.AXI_bready),
        .M_AXI_MM_MIG_bresp(M_AXI_NORTH_TO_STATIC.AXI_bresp),
        .M_AXI_MM_MIG_bvalid(M_AXI_NORTH_TO_STATIC.AXI_bvalid),
        .M_AXI_MM_MIG_rdata(M_AXI_NORTH_TO_STATIC.AXI_rdata),
        .M_AXI_MM_MIG_rid(M_AXI_NORTH_TO_STATIC.AXI_rid),
        .M_AXI_MM_MIG_rlast(M_AXI_NORTH_TO_STATIC.AXI_rlast),
        .M_AXI_MM_MIG_rready(M_AXI_NORTH_TO_STATIC.AXI_rready),
        .M_AXI_MM_MIG_rresp(M_AXI_NORTH_TO_STATIC.AXI_rresp),
        .M_AXI_MM_MIG_rvalid(M_AXI_NORTH_TO_STATIC.AXI_rvalid),
        .M_AXI_MM_MIG_wdata(M_AXI_NORTH_TO_STATIC.AXI_wdata),
        .M_AXI_MM_MIG_wlast(M_AXI_NORTH_TO_STATIC.AXI_wlast),
        .M_AXI_MM_MIG_wready(M_AXI_NORTH_TO_STATIC.AXI_wready),
        .M_AXI_MM_MIG_wstrb(M_AXI_NORTH_TO_STATIC.AXI_wstrb),
        .M_AXI_MM_MIG_wvalid(M_AXI_NORTH_TO_STATIC.AXI_wvalid),
        
        .M_AXI_MM_PCIM_araddr(M_AXI_MM_PCIM.AXI_araddr),
        .M_AXI_MM_PCIM_arburst(M_AXI_MM_PCIM.AXI_arburst),
        .M_AXI_MM_PCIM_arcache(M_AXI_MM_PCIM.AXI_arcache),
        .M_AXI_MM_PCIM_arid(M_AXI_MM_PCIM.AXI_arid),
        .M_AXI_MM_PCIM_arlen(M_AXI_MM_PCIM.AXI_arlen),
        .M_AXI_MM_PCIM_arlock(M_AXI_MM_PCIM.AXI_arlock),
        .M_AXI_MM_PCIM_arprot(M_AXI_MM_PCIM.AXI_arprot),
        .M_AXI_MM_PCIM_arqos(M_AXI_MM_PCIM.AXI_arqos),
        .M_AXI_MM_PCIM_arready(M_AXI_MM_PCIM.AXI_arready),
        .M_AXI_MM_PCIM_arregion(M_AXI_MM_PCIM.AXI_arregion),
        .M_AXI_MM_PCIM_arsize(M_AXI_MM_PCIM.AXI_arsize),
        .M_AXI_MM_PCIM_arvalid(M_AXI_MM_PCIM.AXI_arvalid),
        .M_AXI_MM_PCIM_awaddr(M_AXI_MM_PCIM.AXI_awaddr),
        .M_AXI_MM_PCIM_awburst(M_AXI_MM_PCIM.AXI_awburst),
        .M_AXI_MM_PCIM_awcache(M_AXI_MM_PCIM.AXI_awcache),
        .M_AXI_MM_PCIM_awid(M_AXI_MM_PCIM.AXI_awid),
        .M_AXI_MM_PCIM_awlen(M_AXI_MM_PCIM.AXI_awlen),
        .M_AXI_MM_PCIM_awlock(M_AXI_MM_PCIM.AXI_awlock),
        .M_AXI_MM_PCIM_awprot(M_AXI_MM_PCIM.AXI_awprot),
        .M_AXI_MM_PCIM_awqos(M_AXI_MM_PCIM.AXI_awqos),
        .M_AXI_MM_PCIM_awready(M_AXI_MM_PCIM.AXI_awready),
        .M_AXI_MM_PCIM_awregion(M_AXI_MM_PCIM.AXI_awregion),
        .M_AXI_MM_PCIM_awsize(M_AXI_MM_PCIM.AXI_awsize),
        .M_AXI_MM_PCIM_awvalid(M_AXI_MM_PCIM.AXI_awvalid),
        .M_AXI_MM_PCIM_bid(M_AXI_MM_PCIM.AXI_bid),
        .M_AXI_MM_PCIM_bready(M_AXI_MM_PCIM.AXI_bready),
        .M_AXI_MM_PCIM_bresp(M_AXI_MM_PCIM.AXI_bresp),
        .M_AXI_MM_PCIM_bvalid(M_AXI_MM_PCIM.AXI_bvalid),
        .M_AXI_MM_PCIM_rdata(M_AXI_MM_PCIM.AXI_rdata),
        .M_AXI_MM_PCIM_rid(M_AXI_MM_PCIM.AXI_rid),
        .M_AXI_MM_PCIM_rlast(M_AXI_MM_PCIM.AXI_rlast),
        .M_AXI_MM_PCIM_rready(M_AXI_MM_PCIM.AXI_rready),
        .M_AXI_MM_PCIM_rresp(M_AXI_MM_PCIM.AXI_rresp),
        .M_AXI_MM_PCIM_rvalid(M_AXI_MM_PCIM.AXI_rvalid),
        .M_AXI_MM_PCIM_wdata(M_AXI_MM_PCIM.AXI_wdata),
        .M_AXI_MM_PCIM_wlast(M_AXI_MM_PCIM.AXI_wlast),
        .M_AXI_MM_PCIM_wready(M_AXI_MM_PCIM.AXI_wready),
        .M_AXI_MM_PCIM_wstrb(M_AXI_MM_PCIM.AXI_wstrb),
        .M_AXI_MM_PCIM_wvalid(M_AXI_MM_PCIM.AXI_wvalid),      
        .S_AXI_MM_araddr(AXI_CDMA_AXI4MM_REG_SLICE.AXI_araddr),
        .S_AXI_MM_arburst(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arburst),
        .S_AXI_MM_arcache(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arcache),
        .S_AXI_MM_arid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arid),
        .S_AXI_MM_arlen(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arlen),
        .S_AXI_MM_arlock(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arlock),
        .S_AXI_MM_arprot(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arprot),
        .S_AXI_MM_arqos(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arqos),
        .S_AXI_MM_arready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arready),
        .S_AXI_MM_arregion(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arregion),
        .S_AXI_MM_arsize(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arsize),
        .S_AXI_MM_arvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arvalid),
        .S_AXI_MM_awaddr(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awaddr),
        .S_AXI_MM_awburst(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awburst),
        .S_AXI_MM_awcache(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awcache),
        .S_AXI_MM_awid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awid),
        .S_AXI_MM_awlen(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awlen),
        .S_AXI_MM_awlock(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awlock),
        .S_AXI_MM_awprot(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awprot),
        .S_AXI_MM_awqos(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awqos),
        .S_AXI_MM_awready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awready),
        .S_AXI_MM_awregion(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awregion),
        .S_AXI_MM_awsize(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awsize),
        .S_AXI_MM_awvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awvalid),
        .S_AXI_MM_bid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_bid),
        .S_AXI_MM_bready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_bready),
        .S_AXI_MM_bresp(AXI_CDMA_AXI4MM_REG_SLICE.AXI_bresp),
        .S_AXI_MM_bvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_bvalid),
        .S_AXI_MM_rdata(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rdata),
        .S_AXI_MM_rid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rid),
        .S_AXI_MM_rlast(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rlast),
        .S_AXI_MM_rready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rready),
        .S_AXI_MM_rresp(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rresp),
        .S_AXI_MM_rvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rvalid),
        .S_AXI_MM_wdata(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wdata),
        .S_AXI_MM_wlast(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wlast),
        .S_AXI_MM_wready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wready),
        .S_AXI_MM_wstrb(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wstrb),
        .S_AXI_MM_wvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wvalid));

cdma cdma_0 (
  .m_axi_aclk(CLK_IN_PROG),                  // input wire m_axi_aclk
  .s_axi_lite_aclk(CLK_IN_125M),        // input wire s_axi_lite_aclk
  .s_axi_lite_aresetn(CLK_IN_125M_rst_n[0]),  // input wire s_axi_lite_aresetn
  .cdma_introut(),              // output wire cdma_introut
  .s_axi_lite_awready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_awready),  // output wire s_axi_lite_awready
  .s_axi_lite_awvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_awvalid),  // input wire s_axi_lite_awvalid
  .s_axi_lite_awaddr(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_awaddr[5:0]),    // input wire [5 : 0] s_axi_lite_awaddr
  .s_axi_lite_wready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_wready),    // output wire s_axi_lite_wready
  .s_axi_lite_wvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_wvalid),    // input wire s_axi_lite_wvalid
  .s_axi_lite_wdata(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_wdata),      // input wire [31 : 0] s_axi_lite_wdata
  .s_axi_lite_bready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_bready),    // input wire s_axi_lite_bready
  .s_axi_lite_bvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_bvalid),    // output wire s_axi_lite_bvalid
  .s_axi_lite_bresp(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_bresp),      // output wire [1 : 0] s_axi_lite_bresp
  .s_axi_lite_arready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_arready),  // output wire s_axi_lite_arready
  .s_axi_lite_arvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_arvalid),  // input wire s_axi_lite_arvalid
  .s_axi_lite_araddr(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_araddr[5:0]),    // input wire [5 : 0] s_axi_lite_araddr
  .s_axi_lite_rready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_rready),    // input wire s_axi_lite_rready
  .s_axi_lite_rvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_rvalid),    // output wire s_axi_lite_rvalid
  .s_axi_lite_rdata(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_rdata),      // output wire [31 : 0] s_axi_lite_rdata
  .s_axi_lite_rresp(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_rresp),      // output wire [1 : 0] s_axi_lite_rresp
  .m_axi_arready(AXI_CDMA_MM.AXI_arready),            // input wire m_axi_arready
  .m_axi_arvalid(AXI_CDMA_MM.AXI_arvalid),            // output wire m_axi_arvalid
  .m_axi_araddr(AXI_CDMA_MM.AXI_araddr),              // output wire [63 : 0] m_axi_araddr
  .m_axi_arlen(AXI_CDMA_MM.AXI_arlen),                // output wire [7 : 0] m_axi_arlen
  .m_axi_arsize(AXI_CDMA_MM.AXI_arsize),              // output wire [2 : 0] m_axi_arsize
  .m_axi_arburst(AXI_CDMA_MM.AXI_arburst),            // output wire [1 : 0] m_axi_arburst
  .m_axi_arprot(AXI_CDMA_MM.AXI_arprot),              // output wire [2 : 0] m_axi_arprot
  .m_axi_arcache(AXI_CDMA_MM.AXI_arcache),            // output wire [3 : 0] m_axi_arcache
  .m_axi_rready(AXI_CDMA_MM.AXI_rready),              // output wire m_axi_rready
  .m_axi_rvalid(AXI_CDMA_MM.AXI_rvalid),              // input wire m_axi_rvalid
  .m_axi_rdata(AXI_CDMA_MM.AXI_rdata),                // input wire [511 : 0] m_axi_rdata
  .m_axi_rresp(AXI_CDMA_MM.AXI_rresp),                // input wire [1 : 0] m_axi_rresp
  .m_axi_rlast(AXI_CDMA_MM.AXI_rlast),                // input wire m_axi_rlast
  .m_axi_awready(AXI_CDMA_MM.AXI_awready),            // input wire m_axi_awready
  .m_axi_awvalid(AXI_CDMA_MM.AXI_awvalid),            // output wire m_axi_awvalid
  .m_axi_awaddr(AXI_CDMA_MM.AXI_awaddr),              // output wire [63 : 0] m_axi_awaddr
  .m_axi_awlen(AXI_CDMA_MM.AXI_awlen),                // output wire [7 : 0] m_axi_awlen
  .m_axi_awsize(AXI_CDMA_MM.AXI_awsize),              // output wire [2 : 0] m_axi_awsize
  .m_axi_awburst(AXI_CDMA_MM.AXI_awburst),            // output wire [1 : 0] m_axi_awburst
  .m_axi_awprot(AXI_CDMA_MM.AXI_awprot),              // output wire [2 : 0] m_axi_awprot
  .m_axi_awcache(AXI_CDMA_MM.AXI_awcache),            // output wire [3 : 0] m_axi_awcache
  .m_axi_wready(AXI_CDMA_MM.AXI_wready),              // input wire m_axi_wready
  .m_axi_wvalid(AXI_CDMA_MM.AXI_wvalid),              // output wire m_axi_wvalid
  .m_axi_wdata(AXI_CDMA_MM.AXI_wdata),                // output wire [511 : 0] m_axi_wdata
  .m_axi_wstrb(AXI_CDMA_MM.AXI_wstrb),                // output wire [63 : 0] m_axi_wstrb
  .m_axi_wlast(AXI_CDMA_MM.AXI_wlast),                // output wire m_axi_wlast
  .m_axi_bready(AXI_CDMA_MM.AXI_bready),              // output wire m_axi_bready
  .m_axi_bvalid(AXI_CDMA_MM.AXI_bvalid),              // input wire m_axi_bvalid
  .m_axi_bresp(AXI_CDMA_MM.AXI_bresp),                // input wire [1 : 0] m_axi_bresp
  .cdma_tvect_out()          // output wire [31 : 0] cdma_tvect_out
);

axi4lite_cc dyn_axi4lite_cc_0 (
  .s_axi_aclk(CLK_IN_250M),        // input wire s_axi_aclk
  .s_axi_aresetn(CLK_IN_250M_rst_n[0]),  // input wire s_axi_aresetn
  .s_axi_awaddr(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_awaddr),    // input wire [31 : 0] s_axi_awaddr
  .s_axi_awprot(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_awprot),    // input wire [2 : 0] s_axi_awprot
  .s_axi_awvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_awvalid),  // input wire s_axi_awvalid
  .s_axi_awready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_awready),  // output wire s_axi_awready
  .s_axi_wdata(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_wdata),      // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_wstrb),      // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_wvalid),    // input wire s_axi_wvalid
  .s_axi_wready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_wready),    // output wire s_axi_wready
  .s_axi_bresp(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_bready),    // input wire s_axi_bready
  .s_axi_araddr(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_araddr),    // input wire [31 : 0] s_axi_araddr
  .s_axi_arprot(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_arprot),    // input wire [2 : 0] s_axi_arprot
  .s_axi_arvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_arvalid),  // input wire s_axi_arvalid
  .s_axi_arready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_arready),  // output wire s_axi_arready
  .s_axi_rdata(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready(M_AXI_LITE_TO_DYNAMIC.AXI_LITE_rready),    // input wire s_axi_rready
  .m_axi_aclk(CLK_IN_125M),        // input wire m_axi_aclk
  .m_axi_aresetn(CLK_IN_125M_rst_n[0]),  // input wire m_axi_aresetn
  .m_axi_awaddr(AXI_CDMA_LITE_CC.AXI_LITE_awaddr),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(AXI_CDMA_LITE_CC.AXI_LITE_awprot),    // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid(AXI_CDMA_LITE_CC.AXI_LITE_awvalid),  // output wire m_axi_awvalid
  .m_axi_awready(AXI_CDMA_LITE_CC.AXI_LITE_awready),  // input wire m_axi_awready
  .m_axi_wdata(AXI_CDMA_LITE_CC.AXI_LITE_wdata),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(AXI_CDMA_LITE_CC.AXI_LITE_wstrb),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(AXI_CDMA_LITE_CC.AXI_LITE_wvalid),    // output wire m_axi_wvalid
  .m_axi_wready(AXI_CDMA_LITE_CC.AXI_LITE_wready),    // input wire m_axi_wready
  .m_axi_bresp(AXI_CDMA_LITE_CC.AXI_LITE_bresp),      // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(AXI_CDMA_LITE_CC.AXI_LITE_bvalid),    // input wire m_axi_bvalid
  .m_axi_bready(AXI_CDMA_LITE_CC.AXI_LITE_bready),    // output wire m_axi_bready
  .m_axi_araddr(AXI_CDMA_LITE_CC.AXI_LITE_araddr),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot(AXI_CDMA_LITE_CC.AXI_LITE_arprot),    // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid(AXI_CDMA_LITE_CC.AXI_LITE_arvalid),  // output wire m_axi_arvalid
  .m_axi_arready(AXI_CDMA_LITE_CC.AXI_LITE_arready),  // input wire m_axi_arready
  .m_axi_rdata(AXI_CDMA_LITE_CC.AXI_LITE_rdata),      // input wire [31 : 0] m_axi_rdata
  .m_axi_rresp(AXI_CDMA_LITE_CC.AXI_LITE_rresp),      // input wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(AXI_CDMA_LITE_CC.AXI_LITE_rvalid),    // input wire m_axi_rvalid
  .m_axi_rready(AXI_CDMA_LITE_CC.AXI_LITE_rready)    // output wire m_axi_rready
);

axi4lite_reg_slice dyn_axi4lite_reg_slice_0 (
  .aclk(CLK_IN_125M),                    // input wire aclk
  .aresetn(CLK_IN_125M_rst_n[0]),              // input wire aresetn
  .s_axi_awaddr(AXI_CDMA_LITE_CC.AXI_LITE_awaddr),    // input wire [31 : 0] s_axi_awaddr
  .s_axi_awprot(AXI_CDMA_LITE_CC.AXI_LITE_awprot),    // input wire [2 : 0] s_axi_awprot
  .s_axi_awvalid(AXI_CDMA_LITE_CC.AXI_LITE_awvalid),  // input wire s_axi_awvalid
  .s_axi_awready(AXI_CDMA_LITE_CC.AXI_LITE_awready),  // output wire s_axi_awready
  .s_axi_wdata(AXI_CDMA_LITE_CC.AXI_LITE_wdata),      // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(AXI_CDMA_LITE_CC.AXI_LITE_wstrb),      // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid(AXI_CDMA_LITE_CC.AXI_LITE_wvalid),    // input wire s_axi_wvalid
  .s_axi_wready(AXI_CDMA_LITE_CC.AXI_LITE_wready),    // output wire s_axi_wready
  .s_axi_bresp(AXI_CDMA_LITE_CC.AXI_LITE_bresp),      // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(AXI_CDMA_LITE_CC.AXI_LITE_bvalid),    // output wire s_axi_bvalid
  .s_axi_bready(AXI_CDMA_LITE_CC.AXI_LITE_bready),    // input wire s_axi_bready
  .s_axi_araddr(AXI_CDMA_LITE_CC.AXI_LITE_araddr),    // input wire [31 : 0] s_axi_araddr
  .s_axi_arprot(AXI_CDMA_LITE_CC.AXI_LITE_arprot),    // input wire [2 : 0] s_axi_arprot
  .s_axi_arvalid(AXI_CDMA_LITE_CC.AXI_LITE_arvalid),  // input wire s_axi_arvalid
  .s_axi_arready(AXI_CDMA_LITE_CC.AXI_LITE_arready),  // output wire s_axi_arready
  .s_axi_rdata(AXI_CDMA_LITE_CC.AXI_LITE_rdata),      // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(AXI_CDMA_LITE_CC.AXI_LITE_rresp),      // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid(AXI_CDMA_LITE_CC.AXI_LITE_rvalid),    // output wire s_axi_rvalid
  .s_axi_rready(AXI_CDMA_LITE_CC.AXI_LITE_rready),    // input wire s_axi_rready
  .m_axi_awaddr(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_awaddr),    // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_awprot),    // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_awvalid),  // output wire m_axi_awvalid
  .m_axi_awready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_awready),  // input wire m_axi_awready
  .m_axi_wdata(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_wdata),      // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_wstrb),      // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_wvalid),    // output wire m_axi_wvalid
  .m_axi_wready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_wready),    // input wire m_axi_wready
  .m_axi_bresp(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_bresp),      // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_bvalid),    // input wire m_axi_bvalid
  .m_axi_bready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_bready),    // output wire m_axi_bready
  .m_axi_araddr(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_araddr),    // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_arprot),    // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_arvalid),  // output wire m_axi_arvalid
  .m_axi_arready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_arready),  // input wire m_axi_arready
  .m_axi_rdata(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_rdata),      // input wire [31 : 0] m_axi_rdata
  .m_axi_rresp(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_rresp),      // input wire [1 : 0] m_axi_rresp
  .m_axi_rvalid(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_rvalid),    // input wire m_axi_rvalid
  .m_axi_rready(AXI_CDMA_AXI4LITE_REG_SLICE.AXI_LITE_rready)    // output wire m_axi_rready
);

axi4mm_cc dyn_axi4mm_cc_0 (
  .s_axi_aclk(CLK_IN_PROG),          // input wire s_axi_aclk
  .s_axi_aresetn(CLK_IN_PROG_rst_n[0]),    // input wire s_axi_aresetn
  .s_axi_awid(6'b000000),          // input wire [5 : 0] s_axi_awid
  .s_axi_awaddr(AXI_CDMA_MM.AXI_awaddr),      // input wire [63 : 0] s_axi_awaddr
  .s_axi_awlen(AXI_CDMA_MM.AXI_awlen),        // input wire [7 : 0] s_axi_awlen
  .s_axi_awsize(AXI_CDMA_MM.AXI_awsize),      // input wire [2 : 0] s_axi_awsize
  .s_axi_awburst(AXI_CDMA_MM.AXI_awburst),    // input wire [1 : 0] s_axi_awburst
  .s_axi_awlock(1'b0),      // input wire [0 : 0] s_axi_awlock
  .s_axi_awcache(AXI_CDMA_MM.AXI_awcache),    // input wire [3 : 0] s_axi_awcache
  .s_axi_awprot(AXI_CDMA_MM.AXI_awprot),      // input wire [2 : 0] s_axi_awprot
  .s_axi_awregion(4'b0000),  // input wire [3 : 0] s_axi_awregion
  .s_axi_awqos(4'b0000),        // input wire [3 : 0] s_axi_awqos
  .s_axi_awvalid(AXI_CDMA_MM.AXI_awvalid),    // input wire s_axi_awvalid
  .s_axi_awready(AXI_CDMA_MM.AXI_awready),    // output wire s_axi_awready
  .s_axi_wdata(AXI_CDMA_MM.AXI_wdata),        // input wire [511 : 0] s_axi_wdata
  .s_axi_wstrb(AXI_CDMA_MM.AXI_wstrb),        // input wire [63 : 0] s_axi_wstrb
  .s_axi_wlast(AXI_CDMA_MM.AXI_wlast),        // input wire s_axi_wlast
  .s_axi_wvalid(AXI_CDMA_MM.AXI_wvalid),      // input wire s_axi_wvalid
  .s_axi_wready(AXI_CDMA_MM.AXI_wready),      // output wire s_axi_wready
  .s_axi_bid(AXI_CDMA_MM.AXI_bid),            // output wire [5 : 0] s_axi_bid
  .s_axi_bresp(AXI_CDMA_MM.AXI_bresp),        // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(AXI_CDMA_MM.AXI_bvalid),      // output wire s_axi_bvalid
  .s_axi_bready(AXI_CDMA_MM.AXI_bready),      // input wire s_axi_bready
  .s_axi_arid(6'b000000),          // input wire [5 : 0] s_axi_arid
  .s_axi_araddr(AXI_CDMA_MM.AXI_araddr),      // input wire [63 : 0] s_axi_araddr
  .s_axi_arlen(AXI_CDMA_MM.AXI_arlen),        // input wire [7 : 0] s_axi_arlen
  .s_axi_arsize(AXI_CDMA_MM.AXI_arsize),      // input wire [2 : 0] s_axi_arsize
  .s_axi_arburst(AXI_CDMA_MM.AXI_arburst),    // input wire [1 : 0] s_axi_arburst
  .s_axi_arlock(1'b0),      // input wire [0 : 0] s_axi_arlock
  .s_axi_arcache(AXI_CDMA_MM.AXI_arcache),    // input wire [3 : 0] s_axi_arcache
  .s_axi_arprot(AXI_CDMA_MM.AXI_arprot),      // input wire [2 : 0] s_axi_arprot
  .s_axi_arregion(4'b0000),  // input wire [3 : 0] s_axi_arregion
  .s_axi_arqos(4'b0000),        // input wire [3 : 0] s_axi_arqos
  .s_axi_arvalid(AXI_CDMA_MM.AXI_arvalid),    // input wire s_axi_arvalid
  .s_axi_arready(AXI_CDMA_MM.AXI_arready),    // output wire s_axi_arready
  .s_axi_rid(AXI_CDMA_MM.AXI_rid),            // output wire [5 : 0] s_axi_rid
  .s_axi_rdata(AXI_CDMA_MM.AXI_rdata),        // output wire [511 : 0] s_axi_rdata
  .s_axi_rresp(AXI_CDMA_MM.AXI_rresp),        // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast(AXI_CDMA_MM.AXI_rlast),        // output wire s_axi_rlast
  .s_axi_rvalid(AXI_CDMA_MM.AXI_rvalid),      // output wire s_axi_rvalid
  .s_axi_rready(AXI_CDMA_MM.AXI_rready),      // input wire s_axi_rready
  .m_axi_aclk(CLK_IN_250M),          // input wire m_axi_aclk
  .m_axi_aresetn(CLK_IN_250M_rst_n[0]),    // input wire m_axi_aresetn
  .m_axi_awid(AXI_CDMA_MM_CC.AXI_awid),          // output wire [5 : 0] m_axi_awid
  .m_axi_awaddr(AXI_CDMA_MM_CC.AXI_awaddr),      // output wire [63 : 0] m_axi_awaddr
  .m_axi_awlen(AXI_CDMA_MM_CC.AXI_awlen),        // output wire [7 : 0] m_axi_awlen
  .m_axi_awsize(AXI_CDMA_MM_CC.AXI_awsize),      // output wire [2 : 0] m_axi_awsize
  .m_axi_awburst(AXI_CDMA_MM_CC.AXI_awburst),    // output wire [1 : 0] m_axi_awburst
  .m_axi_awlock(AXI_CDMA_MM_CC.AXI_awlock),      // output wire [0 : 0] m_axi_awlock
  .m_axi_awcache(AXI_CDMA_MM_CC.AXI_awcache),    // output wire [3 : 0] m_axi_awcache
  .m_axi_awprot(AXI_CDMA_MM_CC.AXI_awprot),      // output wire [2 : 0] m_axi_awprot
  .m_axi_awregion(AXI_CDMA_MM_CC.AXI_awregion),  // output wire [3 : 0] m_axi_awregion
  .m_axi_awqos(AXI_CDMA_MM_CC.AXI_awqos),        // output wire [3 : 0] m_axi_awqos
  .m_axi_awvalid(AXI_CDMA_MM_CC.AXI_awvalid),    // output wire m_axi_awvalid
  .m_axi_awready(AXI_CDMA_MM_CC.AXI_awready),    // input wire m_axi_awready
  .m_axi_wdata(AXI_CDMA_MM_CC.AXI_wdata),        // output wire [511 : 0] m_axi_wdata
  .m_axi_wstrb(AXI_CDMA_MM_CC.AXI_wstrb),        // output wire [63 : 0] m_axi_wstrb
  .m_axi_wlast(AXI_CDMA_MM_CC.AXI_wlast),        // output wire m_axi_wlast
  .m_axi_wvalid(AXI_CDMA_MM_CC.AXI_wvalid),      // output wire m_axi_wvalid
  .m_axi_wready(AXI_CDMA_MM_CC.AXI_wready),      // input wire m_axi_wready
  .m_axi_bid(AXI_CDMA_MM_CC.AXI_bid),            // input wire [5 : 0] m_axi_bid
  .m_axi_bresp(AXI_CDMA_MM_CC.AXI_bresp),        // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(AXI_CDMA_MM_CC.AXI_bvalid),      // input wire m_axi_bvalid
  .m_axi_bready(AXI_CDMA_MM_CC.AXI_bready),      // output wire m_axi_bready
  .m_axi_arid(AXI_CDMA_MM_CC.AXI_arid),          // output wire [5 : 0] m_axi_arid
  .m_axi_araddr(AXI_CDMA_MM_CC.AXI_araddr),      // output wire [63 : 0] m_axi_araddr
  .m_axi_arlen(AXI_CDMA_MM_CC.AXI_arlen),        // output wire [7 : 0] m_axi_arlen
  .m_axi_arsize(AXI_CDMA_MM_CC.AXI_arsize),      // output wire [2 : 0] m_axi_arsize
  .m_axi_arburst(AXI_CDMA_MM_CC.AXI_arburst),    // output wire [1 : 0] m_axi_arburst
  .m_axi_arlock(AXI_CDMA_MM_CC.AXI_arlock),      // output wire [0 : 0] m_axi_arlock
  .m_axi_arcache(AXI_CDMA_MM_CC.AXI_arcache),    // output wire [3 : 0] m_axi_arcache
  .m_axi_arprot(AXI_CDMA_MM_CC.AXI_arprot),      // output wire [2 : 0] m_axi_arprot
  .m_axi_arregion(AXI_CDMA_MM_CC.AXI_arregion),  // output wire [3 : 0] m_axi_arregion
  .m_axi_arqos(AXI_CDMA_MM_CC.AXI_arqos),        // output wire [3 : 0] m_axi_arqos
  .m_axi_arvalid(AXI_CDMA_MM_CC.AXI_arvalid),    // output wire m_axi_arvalid
  .m_axi_arready(AXI_CDMA_MM_CC.AXI_arready),    // input wire m_axi_arready
  .m_axi_rid(AXI_CDMA_MM_CC.AXI_rid),            // input wire [5 : 0] m_axi_rid
  .m_axi_rdata(AXI_CDMA_MM_CC.AXI_rdata),        // input wire [511 : 0] m_axi_rdata
  .m_axi_rresp(AXI_CDMA_MM_CC.AXI_rresp),        // input wire [1 : 0] m_axi_rresp
  .m_axi_rlast(AXI_CDMA_MM_CC.AXI_rlast),        // input wire m_axi_rlast
  .m_axi_rvalid(AXI_CDMA_MM_CC.AXI_rvalid),      // input wire m_axi_rvalid
  .m_axi_rready(AXI_CDMA_MM_CC.AXI_rready)      // output wire m_axi_rready
);

axi4mm_reg_slice dyn_axi4mm_reg_slice_0 (
  .aclk(CLK_IN_250M),                      // input wire aclk
  .aresetn(CLK_IN_250M_rst_n[0]),                // input wire aresetn
  .s_axi_awid(AXI_CDMA_MM_CC.AXI_awid),          // input wire [5 : 0] s_axi_awid
  .s_axi_awaddr(AXI_CDMA_MM_CC.AXI_awaddr),      // input wire [63 : 0] s_axi_awaddr
  .s_axi_awlen(AXI_CDMA_MM_CC.AXI_awlen),        // input wire [7 : 0] s_axi_awlen
  .s_axi_awsize(AXI_CDMA_MM_CC.AXI_awsize),      // input wire [2 : 0] s_axi_awsize
  .s_axi_awburst(AXI_CDMA_MM_CC.AXI_awburst),    // input wire [1 : 0] s_axi_awburst
  .s_axi_awlock(AXI_CDMA_MM_CC.AXI_awlock),      // input wire [0 : 0] s_axi_awlock
  .s_axi_awcache(AXI_CDMA_MM_CC.AXI_awcache),    // input wire [3 : 0] s_axi_awcache
  .s_axi_awprot(AXI_CDMA_MM_CC.AXI_awprot),      // input wire [2 : 0] s_axi_awprot
  .s_axi_awregion(AXI_CDMA_MM_CC.AXI_awregion),  // input wire [3 : 0] s_axi_awregion
  .s_axi_awqos(AXI_CDMA_MM_CC.AXI_awqos),        // input wire [3 : 0] s_axi_awqos
  .s_axi_awvalid(AXI_CDMA_MM_CC.AXI_awvalid),    // input wire s_axi_awvalid
  .s_axi_awready(AXI_CDMA_MM_CC.AXI_awready),    // output wire s_axi_awready
  .s_axi_wdata(AXI_CDMA_MM_CC.AXI_wdata),        // input wire [511 : 0] s_axi_wdata
  .s_axi_wstrb(AXI_CDMA_MM_CC.AXI_wstrb),        // input wire [63 : 0] s_axi_wstrb
  .s_axi_wlast(AXI_CDMA_MM_CC.AXI_wlast),        // input wire s_axi_wlast
  .s_axi_wvalid(AXI_CDMA_MM_CC.AXI_wvalid),      // input wire s_axi_wvalid
  .s_axi_wready(AXI_CDMA_MM_CC.AXI_wready),      // output wire s_axi_wready
  .s_axi_bid(AXI_CDMA_MM_CC.AXI_bid),            // output wire [5 : 0] s_axi_bid
  .s_axi_bresp(AXI_CDMA_MM_CC.AXI_bresp),        // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(AXI_CDMA_MM_CC.AXI_bvalid),      // output wire s_axi_bvalid
  .s_axi_bready(AXI_CDMA_MM_CC.AXI_bready),      // input wire s_axi_bready
  .s_axi_arid(AXI_CDMA_MM_CC.AXI_arid),          // input wire [5 : 0] s_axi_arid
  .s_axi_araddr(AXI_CDMA_MM_CC.AXI_araddr),      // input wire [63 : 0] s_axi_araddr
  .s_axi_arlen(AXI_CDMA_MM_CC.AXI_arlen),        // input wire [7 : 0] s_axi_arlen
  .s_axi_arsize(AXI_CDMA_MM_CC.AXI_arsize),      // input wire [2 : 0] s_axi_arsize
  .s_axi_arburst(AXI_CDMA_MM_CC.AXI_arburst),    // input wire [1 : 0] s_axi_arburst
  .s_axi_arlock(AXI_CDMA_MM_CC.AXI_arlock),      // input wire [0 : 0] s_axi_arlock
  .s_axi_arcache(AXI_CDMA_MM_CC.AXI_arcache),    // input wire [3 : 0] s_axi_arcache
  .s_axi_arprot(AXI_CDMA_MM_CC.AXI_arprot),      // input wire [2 : 0] s_axi_arprot
  .s_axi_arregion(AXI_CDMA_MM_CC.AXI_arregion),  // input wire [3 : 0] s_axi_arregion
  .s_axi_arqos(AXI_CDMA_MM_CC.AXI_arqos),        // input wire [3 : 0] s_axi_arqos
  .s_axi_arvalid(AXI_CDMA_MM_CC.AXI_arvalid),    // input wire s_axi_arvalid
  .s_axi_arready(AXI_CDMA_MM_CC.AXI_arready),    // output wire s_axi_arready
  .s_axi_rid(AXI_CDMA_MM_CC.AXI_rid),            // output wire [5 : 0] s_axi_rid
  .s_axi_rdata(AXI_CDMA_MM_CC.AXI_rdata),        // output wire [511 : 0] s_axi_rdata
  .s_axi_rresp(AXI_CDMA_MM_CC.AXI_rresp),        // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast(AXI_CDMA_MM_CC.AXI_rlast),        // output wire s_axi_rlast
  .s_axi_rvalid(AXI_CDMA_MM_CC.AXI_rvalid),      // output wire s_axi_rvalid
  .s_axi_rready(AXI_CDMA_MM_CC.AXI_rready),      // input wire s_axi_rready
  .m_axi_awid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awid),          // output wire [5 : 0] m_axi_awid
  .m_axi_awaddr(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awaddr),      // output wire [63 : 0] m_axi_awaddr
  .m_axi_awlen(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awlen),        // output wire [7 : 0] m_axi_awlen
  .m_axi_awsize(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awsize),      // output wire [2 : 0] m_axi_awsize
  .m_axi_awburst(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awburst),    // output wire [1 : 0] m_axi_awburst
  .m_axi_awlock(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awlock),      // output wire [0 : 0] m_axi_awlock
  .m_axi_awcache(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awcache),    // output wire [3 : 0] m_axi_awcache
  .m_axi_awprot(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awprot),      // output wire [2 : 0] m_axi_awprot
  .m_axi_awregion(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awregion),  // output wire [3 : 0] m_axi_awregion
  .m_axi_awqos(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awqos),        // output wire [3 : 0] m_axi_awqos
  .m_axi_awvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awvalid),    // output wire m_axi_awvalid
  .m_axi_awready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_awready),    // input wire m_axi_awready
  .m_axi_wdata(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wdata),        // output wire [511 : 0] m_axi_wdata
  .m_axi_wstrb(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wstrb),        // output wire [63 : 0] m_axi_wstrb
  .m_axi_wlast(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wlast),        // output wire m_axi_wlast
  .m_axi_wvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wvalid),      // output wire m_axi_wvalid
  .m_axi_wready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wready),      // input wire m_axi_wready
  .m_axi_bid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_bid),            // input wire [5 : 0] m_axi_bid
  .m_axi_bresp(AXI_CDMA_AXI4MM_REG_SLICE.AXI_bresp),        // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_bvalid),      // input wire m_axi_bvalid
  .m_axi_bready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_bready),      // output wire m_axi_bready
  .m_axi_arid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arid),          // output wire [5 : 0] m_axi_arid
  .m_axi_araddr(AXI_CDMA_AXI4MM_REG_SLICE.AXI_araddr),      // output wire [63 : 0] m_axi_araddr
  .m_axi_arlen(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arlen),        // output wire [7 : 0] m_axi_arlen
  .m_axi_arsize(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arsize),      // output wire [2 : 0] m_axi_arsize
  .m_axi_arburst(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arburst),    // output wire [1 : 0] m_axi_arburst
  .m_axi_arlock(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arlock),      // output wire [0 : 0] m_axi_arlock
  .m_axi_arcache(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arcache),    // output wire [3 : 0] m_axi_arcache
  .m_axi_arprot(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arprot),      // output wire [2 : 0] m_axi_arprot
  .m_axi_arregion(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arregion),  // output wire [3 : 0] m_axi_arregion
  .m_axi_arqos(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arqos),        // output wire [3 : 0] m_axi_arqos
  .m_axi_arvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arvalid),    // output wire m_axi_arvalid
  .m_axi_arready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_arready),    // input wire m_axi_arready
  .m_axi_rid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rid),            // input wire [5 : 0] m_axi_rid
  .m_axi_rdata(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rdata),        // input wire [511 : 0] m_axi_rdata
  .m_axi_rresp(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rresp),        // input wire [1 : 0] m_axi_rresp
  .m_axi_rlast(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rlast),        // input wire m_axi_rlast
  .m_axi_rvalid(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rvalid),      // input wire m_axi_rvalid
  .m_axi_rready(AXI_CDMA_AXI4MM_REG_SLICE.AXI_rready)      // output wire m_axi_rready
);

debug_bridge_PR U_debug_bridge_PR (
  .clk(CLK_IN_125M),                                // input wire clk
  .S_BSCAN_bscanid_en(S_BSCAN_bscanid_en),  // input wire s_bscan_bscanid_en
  .S_BSCAN_capture(S_BSCAN_capture),        // input wire s_bscan_capture
  .S_BSCAN_drck(S_BSCAN_drck),              // input wire s_bscan_drck
  .S_BSCAN_reset(S_BSCAN_reset),            // input wire s_bscan_reset
  .S_BSCAN_runtest(S_BSCAN_runtest),        // input wire s_bscan_runtest
  .S_BSCAN_sel(S_BSCAN_sel),                // input wire s_bscan_sel
  .S_BSCAN_shift(S_BSCAN_shift),            // input wire s_bscan_shift
  .S_BSCAN_tck(S_BSCAN_tck),                // input wire s_bscan_tck
  .S_BSCAN_tdi(S_BSCAN_tdi),                // input wire s_bscan_tdi
  .S_BSCAN_tdo(S_BSCAN_tdo),                // output wire s_bscan_tdo
  .S_BSCAN_tms(S_BSCAN_tms),                // input wire s_bscan_tms
  .S_BSCAN_update(S_BSCAN_update)          // input wire s_bscan_update
);

ila_0 U_ila_0_TEST (
	.clk(CLK_IN_250M), // input wire clk
	.probe0(AXI_CDMA_AXI4MM_REG_SLICE.AXI_wdata[127:0]) // input wire [127:0] probe0
);

endmodule
