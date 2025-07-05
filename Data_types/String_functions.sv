//string functions 
`timescale 1ns/1ps
module string_functions();
  string str1; //string declaration
  string str2; 
  int status;
  initial begin 
    str1="System Verilog";
    str2="SYSTEM VERILOG";
    //equality operator 
    if(str1==str2) 
      $display("Both strings are equal");
    else 
      $display("Both strings are not equal");
    //returning boolen value 
    status = (str1==str2)?1'b1: 1'b0;
    $display("Status bit:%0d", status);
    //in-equality operator 
    status = (str1!=str2)? 1'b1:1'b0;
    $display("Status bit:%0d", status);
    //comparision 
    if(str1<str2)
      $display("String 1 is less than string 2");
    else 
      $display("String 1 is greater than string 2");
    //concatenation operator 
    $display("Concatenated string is:%0s", {str1, str2});
    //replication operator 
    $display("Replicated string is:%0s", {3{str1}});
  end
  
endmodule
