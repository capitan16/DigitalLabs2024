//`include "semi_add.v"

module full_adder(
    input  a, b, cin,
    output s, cout
);

wire cout1, s1, cout2; 

semi_add  sa1(
    .a(a),
    .b(b),
    .cout(cout1),
    .s(s1)
);

semi_add sa2(
    .a(s1),
    .b(cin),
    .cout(cout2),
    .s(s)
);

assign cout = cout1 | cout2;

endmodule