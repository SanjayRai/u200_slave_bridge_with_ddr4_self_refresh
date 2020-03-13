`timescale 1 ps /1 ps

module sref_init_restore_sync (
    input c0_mig_ui_clk,
    input shell_sys_rst_in,
    input shell_sref_req,
    input shell_restore_complete,
    input shell_mem_init_skip,
    input c0_ddr4_ui_clk_sync_rst,
    input c0_init_calib_complete,
    output c0_ddr4_sys_rst_out,
    output c0_ddr4_app_sref_req,
    output c0_ddr4_app_restore_en,
    output c0_ddr4_app_restore_complete,
    output c0_ddr4_app_mem_init_skip);


reg r0_c0_ddr4_sys_rst_out = 1'b1;
reg r1_c0_ddr4_sys_rst_out = 1'b1;

reg r0_c0_ddr4_app_sref_req = 1'b0;
reg r1_c0_ddr4_app_sref_req = 1'b0;
reg r1_c0_ddr4_app_restore_en =1'b0;
reg r0_c0_ddr4_app_mem_init_skip = 1'b0;
reg r1_c0_ddr4_app_mem_init_skip = 1'b0;
reg r0_c0_ddr4_app_restore_complete = 1'b0;
reg r1_c0_ddr4_app_restore_complete = 1'b0;

always @ (posedge c0_mig_ui_clk) begin
    r0_c0_ddr4_sys_rst_out = shell_sys_rst_in;
    r1_c0_ddr4_sys_rst_out = r0_c0_ddr4_sys_rst_out; 

    r0_c0_ddr4_app_sref_req <= shell_sref_req;
    r1_c0_ddr4_app_sref_req <= r0_c0_ddr4_app_sref_req;

    r0_c0_ddr4_app_restore_complete <= shell_restore_complete;
    r1_c0_ddr4_app_restore_complete <= r0_c0_ddr4_app_restore_complete;

    r0_c0_ddr4_app_mem_init_skip <= shell_mem_init_skip;
    r1_c0_ddr4_app_mem_init_skip <= r0_c0_ddr4_app_mem_init_skip;
end

always @ (posedge c0_mig_ui_clk) begin
    if (r1_c0_ddr4_app_mem_init_skip) begin
        if (c0_ddr4_ui_clk_sync_rst) begin
            r1_c0_ddr4_app_restore_en <= 1'b1;
        end else begin
            r1_c0_ddr4_app_restore_en <= ~c0_init_calib_complete;
        end
    end else  begin
            r1_c0_ddr4_app_restore_en <= 1'b0;
    end
end



assign c0_ddr4_app_sref_req = r1_c0_ddr4_app_sref_req;
assign c0_ddr4_app_restore_en = r1_c0_ddr4_app_restore_en;
assign c0_ddr4_app_restore_complete = r1_c0_ddr4_app_restore_complete;
assign c0_ddr4_app_mem_init_skip = r1_c0_ddr4_app_mem_init_skip;
assign c0_ddr4_sys_rst_out = r1_c0_ddr4_sys_rst_out;

endmodule
