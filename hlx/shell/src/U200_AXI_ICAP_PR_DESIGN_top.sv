// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

module U200_AXI_ICAP_PR_DESIGN_top (
  inout [3:0]BMC_GPIO_tri_io,
  input BMC_UART_rxd,
  output BMC_UART_txd,

  output RESET_GATE,
  input c0_sys_clk_n,
  input c0_sys_clk_p,
  input c1_sys_clk_n,
  input c1_sys_clk_p,
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

  output c1_ddr4_act_n,
  output [16:0]c1_ddr4_adr,
  output [1:0]c1_ddr4_ba,
  output [1:0]c1_ddr4_bg,
  output [0:0]c1_ddr4_ck_c,
  output [0:0]c1_ddr4_ck_t,
  output [0:0]c1_ddr4_cke,
  output [0:0]c1_ddr4_cs_n,
  inout [71:0]c1_ddr4_dq,
  inout [17:0]c1_ddr4_dqs_c,
  inout [17:0]c1_ddr4_dqs_t,
  output [0:0]c1_ddr4_odt,
  output c1_ddr4_par,
  output c1_ddr4_reset_n,
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
  inout iic_scl_io,
  inout iic_sda_io,
  input [15:0]pcie_mgt_rxn,
  input [15:0]pcie_mgt_rxp,
  output [15:0]pcie_mgt_txn,
  output [15:0]pcie_mgt_txp,
  input  sys_clk_p,
  input  sys_clk_n,
  input  sys_rst_n );

  wire rst_main_n;
  wire MIG_0_RST_N;
  wire MIG_2_RST_N;
  wire MIG_3_RST_N;
  wire sys_rst_n_c;
  wire sys_clk;
  wire sys_clk_gt;
  wire clk_out_125M;
  wire clk_out_250M;
  wire clk_out_300M;
  wire clk_out_400M;
  wire clk_out_PROG;
  wire axi_reset_n_out;
  wire rst_main_n;
  wire c0_init_calib_complete;
  wire c1_init_calib_complete;
  wire c2_init_calib_complete;
  wire c3_init_calib_complete;

  wire c0_ddr4_app_mem_init_skip;
  wire c0_ddr4_app_restore_complete;
  wire c0_ddr4_app_sref_ack;
  wire c0_ddr4_app_sref_req;
  wire c0_ddr4_app_xsdb_select;
  wire c2_ddr4_app_mem_init_skip;
  wire c2_ddr4_app_restore_complete;
  wire c2_ddr4_app_sref_ack;
  wire c2_ddr4_app_sref_req;
  wire c2_ddr4_app_xsdb_select;
  wire c3_ddr4_app_mem_init_skip;
  wire c3_ddr4_app_restore_complete;
  wire c3_ddr4_app_sref_ack;
  wire c3_ddr4_app_sref_req;
  wire c3_ddr4_app_xsdb_select;
  wire [7:0]C0_DDR_SREF_CTRL_IN;
  wire [7:0]C0_DDR_SREF_CTRL_OUT;
  wire [7:0]C2_DDR_SREF_CTRL_IN;
  wire [7:0]C2_DDR_SREF_CTRL_OUT;
  wire [7:0]C3_DDR_SREF_CTRL_IN;
  wire [7:0]C3_DDR_SREF_CTRL_OUT;


  IBUF   sys_reset_n_ibuf (.O(sys_rst_n_c), .I(sys_rst_n));
  IBUFDS_GTE4 refclk_ibuf (.O(sys_clk_gt), .ODIV2(sys_clk), .I(sys_clk_p), .CEB(1'b0), .IB(sys_clk_n));

  hlx_AXI_MM_intfc AXI_MM_TO_SHELL_PCIM ();
  hlx_AXI_MM_intfc AXI_MM_TO_SHELL_MIG ();
  hlx_AXI_LITE_intfc M_AXI_LITE_TO_HLS_PR();

  assign C0_DDR_SREF_CTRL_IN[7] = c0_ddr4_app_sref_ack;
  assign C0_DDR_SREF_CTRL_IN[6:5] = 2'b00; 
  assign C0_DDR_SREF_CTRL_IN[4:0] = C0_DDR_SREF_CTRL_OUT[4:0];

  assign c0_ddr4_app_xsdb_select = C0_DDR_SREF_CTRL_OUT[4];
  assign c0_ddr4_app_mem_init_skip = C0_DDR_SREF_CTRL_OUT[3];
  assign c0_ddr4_app_restore_complete = C0_DDR_SREF_CTRL_OUT[2];
  // Used to be assign to restore_enable this is no loger needed handled in BD //C0_DDR_SREF_CTRL_OUT[1];
  assign c0_ddr4_app_sref_req = C0_DDR_SREF_CTRL_OUT[0];

  assign C2_DDR_SREF_CTRL_IN[7] = c2_ddr4_app_sref_ack;
  assign C2_DDR_SREF_CTRL_IN[6:5] = 2'b00; 
  assign C2_DDR_SREF_CTRL_IN[4:0] = C2_DDR_SREF_CTRL_OUT[4:0];

  assign c2_ddr4_app_xsdb_select = C2_DDR_SREF_CTRL_OUT[4];
  assign c2_ddr4_app_mem_init_skip = C2_DDR_SREF_CTRL_OUT[3];
  assign c2_ddr4_app_restore_complete = C2_DDR_SREF_CTRL_OUT[2];
  // Used to be assign to restore_enable this is no loger needed handled in BD //C2_DDR_SREF_CTRL_OUT[1];
  assign c2_ddr4_app_sref_req = C2_DDR_SREF_CTRL_OUT[0];

  assign C3_DDR_SREF_CTRL_IN[7] = c3_ddr4_app_sref_ack;
  assign C3_DDR_SREF_CTRL_IN[6:5] = 2'b00; 
  assign C3_DDR_SREF_CTRL_IN[4:0] = C3_DDR_SREF_CTRL_OUT[4:0];

  assign c3_ddr4_app_xsdb_select = C3_DDR_SREF_CTRL_OUT[4];
  assign c3_ddr4_app_mem_init_skip = C3_DDR_SREF_CTRL_OUT[3];
  assign c3_ddr4_app_restore_complete = C3_DDR_SREF_CTRL_OUT[2];
  // Used to be assign to restore_enable this is no loger needed handled in BD //C3_DDR_SREF_CTRL_OUT[1];
  assign c3_ddr4_app_sref_req = C3_DDR_SREF_CTRL_OUT[0];

  shell_top U_shell_top (
        .BMC_GPIO_tri_io(BMC_GPIO_tri_io),
        .BMC_UART_rxd(BMC_UART_rxd),
        .BMC_UART_txd(BMC_UART_txd),
        .C1_SYS_CLK_clk_n(c1_sys_clk_n),
        .C1_SYS_CLK_clk_p(c1_sys_clk_p),
        .C0_DDR_SREF_CTRL_IN(C0_DDR_SREF_CTRL_IN),
        .C0_DDR_SREF_CTRL_OUT(C0_DDR_SREF_CTRL_OUT),
        .C2_DDR_SREF_CTRL_IN(C2_DDR_SREF_CTRL_IN),
        .C2_DDR_SREF_CTRL_OUT(C2_DDR_SREF_CTRL_OUT),
        .C3_DDR_SREF_CTRL_IN(C3_DDR_SREF_CTRL_IN),
        .C3_DDR_SREF_CTRL_OUT(C3_DDR_SREF_CTRL_OUT),
        .M_AXI_LITE_TO_HLS_PR_NORTH(M_AXI_LITE_TO_HLS_PR.master),
        .S_AXI_MM_MIG (AXI_MM_TO_SHELL_MIG.slave),
        .S_AXI_MM_PCIM (AXI_MM_TO_SHELL_PCIM.slave),
        .axi_reset_n_out(axi_reset_n_out),
        .c1_ddr4_act_n(c1_ddr4_act_n),
        .c1_ddr4_adr(c1_ddr4_adr),
        .c1_ddr4_ba(c1_ddr4_ba),
        .c1_ddr4_bg(c1_ddr4_bg),
        .c1_ddr4_ck_c(c1_ddr4_ck_c),
        .c1_ddr4_ck_t(c1_ddr4_ck_t),
        .c1_ddr4_cke(c1_ddr4_cke),
        .c1_ddr4_cs_n(c1_ddr4_cs_n),
        .c1_ddr4_par(c1_ddr4_par),
        .c1_ddr4_dq(c1_ddr4_dq),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t),
        .c1_ddr4_odt(c1_ddr4_odt),
        .c1_ddr4_reset_n(c1_ddr4_reset_n),
        .c1_init_calib_complete(c1_init_calib_complete),
        .clk_out_125M(clk_out_125M),
        .clk_out_250M(clk_out_250M),
        .clk_out_300M(clk_out_300M),
        .clk_out_400M(clk_out_400M),
        .clk_out_PROG(clk_out_PROG),
        .iic_scl_io(iic_scl_io),
        .iic_sda_io(iic_sda_io),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .rst_main_n(rst_main_n),
        .MIG_0_RST_N(MIG_0_RST_N),
        .MIG_2_RST_N(MIG_2_RST_N),
        .MIG_3_RST_N(MIG_3_RST_N),
        .RESET_GATE(RESET_GATE),
        .sys_clk(sys_clk),
        .sys_clk_gt(sys_clk_gt),
        .sys_rst_n(sys_rst_n_c));


  dynamic_region U_dynamic_region (
        .AXI_RESET_N(axi_reset_n_out),
        .rst_main_n(rst_main_n),
        .CLK_IN_250M(clk_out_250M),
        .CLK_IN_125M(clk_out_125M),
        .CLK_IN_300M(clk_out_300M),
        .CLK_IN_400M(clk_out_400M),
        .CLK_IN_PROG(clk_out_PROG),
        .c1_init_calib_complete(c1_init_calib_complete),
        .c0_sys_clk_n(c0_sys_clk_n),
        .c0_sys_clk_p(c0_sys_clk_p),
        .c2_sys_clk_n(c2_sys_clk_n),
        .c2_sys_clk_p(c2_sys_clk_p),
        .c3_sys_clk_n(c3_sys_clk_n),
        .c3_sys_clk_p(c3_sys_clk_p),
        .c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
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
        .c0_ddr4_app_mem_init_skip(c0_ddr4_app_mem_init_skip),
        .c0_ddr4_app_restore_complete(c0_ddr4_app_restore_complete),
        .c0_ddr4_app_sref_ack(c0_ddr4_app_sref_ack),
        .c0_ddr4_app_sref_req(c0_ddr4_app_sref_req),
        .c0_ddr4_app_xsdb_select(c0_ddr4_app_xsdb_select),
        .c2_ddr4_act_n(c2_ddr4_act_n),
        .c2_ddr4_adr(c2_ddr4_adr),
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
        .c2_ddr4_app_mem_init_skip(c2_ddr4_app_mem_init_skip),
        .c2_ddr4_app_restore_complete(c2_ddr4_app_restore_complete),
        .c2_ddr4_app_sref_ack(c2_ddr4_app_sref_ack),
        .c2_ddr4_app_sref_req(c2_ddr4_app_sref_req),
        .c2_ddr4_app_xsdb_select(c2_ddr4_app_xsdb_select),
        .c3_ddr4_act_n(c3_ddr4_act_n),
        .c3_ddr4_adr(c3_ddr4_adr),
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
        .c3_ddr4_app_mem_init_skip(c3_ddr4_app_mem_init_skip),
        .c3_ddr4_app_restore_complete(c3_ddr4_app_restore_complete),
        .c3_ddr4_app_sref_ack(c3_ddr4_app_sref_ack),
        .c3_ddr4_app_sref_req(c3_ddr4_app_sref_req),
        .c3_ddr4_app_xsdb_select(c3_ddr4_app_xsdb_select),
        .sys_rst_ddr_0(MIG_0_RST_N),
        .sys_rst_ddr_2(MIG_2_RST_N),
        .sys_rst_ddr_3(MIG_3_RST_N),
        .M_AXI_NORTH_TO_STATIC(AXI_MM_TO_SHELL_MIG.master),
        .M_AXI_MM_PCIM(AXI_MM_TO_SHELL_PCIM.master),
        .S_AXI_LITE_FROM_STATIC(M_AXI_LITE_TO_HLS_PR.slave),
        .S_BSCAN_bscanid_en(),
        .S_BSCAN_capture(),
        .S_BSCAN_drck(),
        .S_BSCAN_reset(),
        .S_BSCAN_runtest(),
        .S_BSCAN_sel(),
        .S_BSCAN_shift(),
        .S_BSCAN_tck(),
        .S_BSCAN_tdi(),
        .S_BSCAN_tdo(),
        .S_BSCAN_tms(),
        .S_BSCAN_update()
        );

endmodule
