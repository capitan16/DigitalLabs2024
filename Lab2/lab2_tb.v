`include "lab2.v"
`timescale 1ps/1ps

module lab2_tb();
reg [3:0] bat1, bat2;
wire discharged_bat1, discharged_bat2;
wire critic_level, low_level, medium_level, high_level, full;
integer i, j;

lab2 uut(
    .bat1(bat1),
    .bat2(bat2),
    .discharged_bat1(discharged_bat1),
    .discharged_bat2(discharged_bat2),
    .critic_level(critic_level),
    .low_level(low_level),
    .medium_level(medium_level),
    .high_level(high_level),
    .full(full)
);

initial begin
    for(j=0; j<16; j=j+1) begin
        bat2 = j;
        for(i=0; i<16; i=i+1) begin
            bat1 = i;
            #1;
        end
    end
end

initial begin: TEST_CASE
    $dumpfile("lab2_tb.vcd");
    $dumpvars(-1, uut);
    #256 $finish;
end

endmodule