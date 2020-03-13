`timescale 1 ps /1 ps

module pr_icap (
    input icap_clk,
    input icap_csib,
    input[31:0] icap_din,
    input icap_rdwrb,
    output [31:0] icap_dout,
    output icap_avail,
    output [3:0] icap_pr_status);

    wire icap_prdone;
    wire icap_prerror;
    assign icap_pr_status = {1'b0, icap_prerror, icap_avail, icap_prdone};

    ICAPE3 ICAPE3_inst (
        .AVAIL(icap_avail),
        .O(icap_dout),
        .PRDONE(icap_prdone),
        .PRERROR(icap_prerror),
        .CLK(icap_clk),
        .CSIB(icap_csib),
        .I(icap_din),
        .RDWRB(icap_rdwrb));

endmodule
