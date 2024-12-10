`include "../BasicCycloneImplementation/charge_detect.v"
`include "four_bits_adder.v"
`include "comparator.v"

module lab2(
    input [3:0] bat1,
    input [3:0] bat2,
    output discharged_bat1, discharged_bat2,
    output critic_level, low_level, medium_level, high_level, full
);

wire [3:0] sum;
wire cout;
wire [4:0] sum5;
assign sum5 = {cout,sum};


charge_detect cd_bat1(
    .A(bat1),
    .Y0(discharged_bat1)
);

charge_detect cd_bat2(
    .A(bat2),
    .Y0(discharged_bat2)
);

four_bits_adder add(
    .a(bat1),
    .b(bat2),
    .cin(1'b 0),
    .s(sum),
    .cout(cout)
);

comparator comp(
    .sum(sum5),
    .critic_level(critic_level),
    .low_level(low_level),
    .medium_level(medium_level),
    .high_level(high_level),
    .full(full)
);

endmodule