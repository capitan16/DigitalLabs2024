//`include "charge_detect.v"
module charge_detect2b(
    input [3:0] B1,
	 input [3:0] B2,
    output Y0B1,
    output Y1B1,
	 output Y0B2,
    output Y1B2
);

charge_detect bat1(
        .A(B1),
        .Y0(Y0B1),
        .Y1(Y1B1)
    );
	 
charge_detect bat2(
        .A(B2),
        .Y0(Y0B2),
        .Y1(Y1B2)
    );
endmodule