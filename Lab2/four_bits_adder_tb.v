`include "four_bits_adder.v"
`timescale 1ps/1ps

module four_bits_adder_tb();
    reg  [3:0] a,b;
    reg  cin;
    wire [3:0] s;
    wire cout;
    integer i, j, k;

four_bits_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial begin
    for(k=0; k<2; k=k+1) begin
        cin=k;
        for(j=0; j<16; j=j+1) begin
            b = j;
            for(i=0; i<16; i=i+1) begin
                a = i;
                #1;
            end
        end
    end
end

initial begin: TEST_CASE
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(-1, uut);
    #512 $finish;
end

endmodule