
`timescale 1ns/1ps
module ha_tb;
  reg a,b;
  wire s,c;
  ha uut(.a(a),.b(b),.s(s),.c(c));
  initial begin
    $dumpfile("dump.vcd");//creates a dump file
    $dumpvars(0,ha_tb);//keeps track of variable value
    a=0;b=0; #10;
    a=0;b=1; #10;
    a=1;b=0; #10;
    a=1;b=1; #10;
    $finish;
  end
  initial begin
    $monitor("%0t\t%b\t%b\t%b\t%b",$time,a,b,s,c);
  end
endmodule
  