`timescale 1ns/1ps
//datatypes 
module datatypes();
  //unsigned datatypes
  bit a; //single bit
  logic b;//4-state variable 
  reg c; //2-state variable
  bit [3:0] d; //4-bit wide variable
  
  //signed data type
  byte e; //8-bits
  int  p;  //32-bits 
  shortint  q;//16-bits
  longint  r; //64-bits
  
  initial begin 
   a=0;
    $display("Value of a is:%0d", a);
    $display("Value of b is:%0d", b); //default value is x
    $display("Value of c is:%0d", c); //default value is 0
    $display("Size of d is:%0d", $size(d));
    #10;
    //time-varaible
    $display("Simulation time is:%0t", $time);
    
    e=8'd20;
    $display("Value of e is:%0d", e);
    $display("Size of p is:%0d", $size(p));
    $display("Size of q is:%0d", $size(q));
    $display("Size of r is:%0d", $size(r));
      
  end
endmodule
