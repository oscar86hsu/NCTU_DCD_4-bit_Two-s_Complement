module comp2_4bit(input [3:0] I, output [3:0] O);
  wire w1, w2;

  assign O[0] = I[0] ^ 0;
  assign O[1] = O[0] ^ I[1];
  assign w1 = O[1] | O[0];
  assign O[2] = w1 ^ I[2];
  assign w2 = w1 | O[2];
  assign O[3] = w2 ^ I[3];

endmodule