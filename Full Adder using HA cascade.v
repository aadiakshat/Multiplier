
module ha(input a,input b,output s,output c);
  xor(s,a,b);
  and(c,a,b);
endmodule //define half adder first as it is going to be used

//initiate full adder

module FA(input a, input b, input cin, output s, output c);
  wire w1,w2,w3,w4;
  ha A(.a(a),.b(b),.s(w1),.c(w2));
  ha B(.a(w1),.b(cin),.s(s),.c(w3));
  or(c,w2,w3);
endmodule