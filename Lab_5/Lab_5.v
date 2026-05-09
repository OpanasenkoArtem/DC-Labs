module lab5 (
    input  wire [3:0] D,
    input  wire [2:0] A,
    output wire [3:0] Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7
);

    assign Q0 = {4{~A[2] & ~A[1] & ~A[0]}} & D; 
    assign Q1 = {4{~A[2] & ~A[1] &  A[0]}} & D; 
    assign Q2 = {4{~A[2] &  A[1] & ~A[0]}} & D; 
    assign Q3 = {4{~A[2] &  A[1] &  A[0]}} & D; 
    assign Q4 = {4{ A[2] & ~A[1] & ~A[0]}} & D; 
    assign Q5 = {4{ A[2] & ~A[1] &  A[0]}} & D; 
    assign Q6 = {4{ A[2] &  A[1] & ~A[0]}} & D; 
    assign Q7 = {4{ A[2] &  A[1] &  A[0]}} & D;

endmodule