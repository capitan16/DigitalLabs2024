module sum1bc(A, B, Ci,Cout, S);
input A;
input B;
input Cin;
output Cout:
output S;
reg [1:0] st;
assign S =st[o];
assign Cout =st[1];

always @(*) begin
    st=A+B+Ci;
end

end module