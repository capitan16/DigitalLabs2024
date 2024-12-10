module charge_detect(
    input [3:0] A,
    output Y0,
    output Y1
);

assign Y0=~(~A[0]&~A[1]&~A[2]&~A[3]);
assign Y1=~( A[0]& A[1]& A[2]& A[3]);

endmodule