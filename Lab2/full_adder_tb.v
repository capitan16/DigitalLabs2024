`include "full_adder.v"
`timescale 1ps/1ps

module full_adder_tb();
    reg  a, b, cin;
    wire s, cout;
    integer i;

full_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial begin
    for(i = 0; i < 8; i = i + 1) begin
        {cin,a,b} = i;
        #1;
    end
end

initial begin: TEST_CASE
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(-1, uut);
    #8 $finish;
end

endmodule