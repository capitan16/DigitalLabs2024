`include "full_adder.v"

module four_bits_adder(
    input [3:0] a, 
    input [3:0] b, 
    input cin,
    output [3:0] s, 
    output cout
);

wire [4:0] cout_v;
assign cout_v[0] = cin;

full_adder fa0(
    .a(a[0]),
    .b(b[0]),
    .cin(cout_v[0]),
    .s(s[0]),
    .cout(cout_v[1])
);

full_adder fa1(
    .a(a[1]),
    .b(b[1]),
    .cin(cout_v[1]),
    .s(s[1]),
    .cout(cout_v[2])
);

full_adder fa2(
    .a(a[2]),
    .b(b[2]),
    .cin(cout_v[2]),
    .s(s[2]),
    .cout(cout_v[3])
);

full_adder fa3(
    .a(a[3]),
    .b(b[3]),
    .cin(cout_v[3]),
    .s(s[3]),
    .cout(cout_v[4])
);

assign cout=cout_v[4];

endmodule