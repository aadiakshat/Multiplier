
module ha(input a,input b,output s,output c);
  xor(s,a,b);
  and(c,a,b);
endmodule //define half adder first as it is going to be used

//initiate full adder

module fa(input a, input b, input cin, output s, output c);
  wire w1,w2,w3,w4;
  ha A(.a(a),.b(b),.s(w1),.c(w2));
  ha B(.a(w1),.b(cin),.s(s),.c(w3));
  or(c,w2,w3);
endmodule
//define full adder also as it will be used here

//main module

module BM(input [3:0] a, input [3:0] b, output [7:0] c);
  wire w2, w3, w4, w5, w6, w7, w8;
  wire w9, w10, w11, w12, w13, w14, w15, w16;
  wire w17, w18, w19, w20, w21, w22, w23, w24;
  wire w25, w26, w27, w28, w29, w30, w31, w32;
  wire w33, w34, w35, w36, w37, w38, w39, w40;

  and(c[0], a[0], b[0]);
  and(w2, a[1], b[0]);
  and(w3, a[2], b[0]);
  and(w4, a[3], b[0]);
  and(w5, a[0], b[1]);
  and(w6, a[1], b[1]);
  and(w7, a[2], b[1]);
  and(w8, a[3], b[1]);
  and(w9, a[0], b[2]);
  and(w10, a[1], b[2]);
  and(w11, a[2], b[2]);
  and(w12, a[3], b[2]);
  and(w13, a[0], b[3]);
  and(w14, a[1], b[3]);
  and(w15, a[2], b[3]);
  and(w16, a[3], b[3]);

  ha H1(.a(w2), .b(w5), .s(c[1]), .c(w17));
  fa F1(.a(w3), .b(w6), .cin(w17), .s(w18), .c(w19));
  fa F2(.a(w4), .b(w7), .cin(w19), .s(w20), .c(w21));
  ha H2(.a(w18), .b(w9), .s(c[2]), .c(w22));
  fa F3(.a(w20), .b(w10), .cin(w22), .s(w23), .c(w24));
  fa F4(.a(w8), .b(w11), .cin(w24), .s(w25), .c(w26));
  ha H3(.a(w23), .b(w13), .s(c[3]), .c(w27));
  fa F5(.a(w25), .b(w14), .cin(w27), .s(w28), .c(w29));
  fa F6(.a(w12), .b(w15), .cin(w29), .s(w30), .c(w31));
  ha H4(.a(w28), .b(w31), .s(c[4]), .c(w32));
  fa F7(.a(w30), .b(w16), .cin(w32), .s(c[5]), .c(w33));
  ha H5(.a(w33), .b(w26), .s(c[6]), .c(c[7]));
endmodule
