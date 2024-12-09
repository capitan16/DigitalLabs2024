`include "comparator.v"
`timescale 1ps/1ps

module comparator_tb();
    reg [4:0] s;

    wire crit, low, med, hig, ful;

    comparator uut(
        .sum(s),
        .critic_level(crit),
        .low_level(low),
        .medium_level(med),
        .high_level(hig),
        .full(ful)
    );

    initial begin
        s = 5'd0;
        #1
        s = 5'd3;
        #1
        s = 5'd6;
        #1
        s = 5'd18;
        #1
        s = 5'd29;
        #1
        s = 5'd30;
    end

    initial begin: TEST_CASE
        $dumpfile("comparator_tb.vcd");
        $dumpvars(-1, uut);
        #6 $finish;
    end

endmodule
