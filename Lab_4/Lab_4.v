module Lab_4(x3, x2, x1, f4, f40);
  input x3, x2, x1;
  output f4, f40;
  assign f4 = ~(~(x3 & x1) & ~(x2 & x1));
  
  assign f40 = ~(~x1 | ~(x3 | x2));

endmodule