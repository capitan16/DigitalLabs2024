`timescale 1ps/1ps
`include "charge_detect.v"

module charge_detect_tb();
    reg [3:0] A_tb;

    wire Y0_tb;
    wire Y1_tb;

    charge_detect uut(
        .A(A_tb),
        .Y0(Y0_tb),
        .Y1(Y1_tb)
    );

    initial begin
        A_tb = 4'b0000;
        #10
        A_tb = 4'b1111;
        #10
        A_tb = 4'b0110;
    end

initial begin: TEST_CASE
        $dumpfile("charge_detect_tb.vcd");
        $dumpvars(-1, uut);
        #30 $finish;
    end

endmodule