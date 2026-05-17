module ref_sum_5bit (Ain, Bin, Ci, Sout, Co);
    input [4:0] Ain, Bin;
    input Ci;
    output [4:0] Sout;
    output Co;
    
    reg [5:0] S; 
    
    always @(Ain, Bin, Ci) begin
        S = Ain + Bin + Ci;
    end
    
    assign Sout = S[4:0];
    assign Co = S[5];
endmodule