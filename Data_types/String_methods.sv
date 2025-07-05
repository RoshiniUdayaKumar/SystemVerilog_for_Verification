//string methods
`timescale 1ns/1ps
module strings_tb();
  string  str; //string declaration
  initial begin 
    str="Verification course"; //string initialization
    $display("String:%0s", str);
    //length of string 
    $display("Length of the string:%0d", str.len);
    //replace 
    //$display("Modified string is:%0s", str.putc(3,1));
    //fetch 
    $display("The 9th index value is:%0s", str.getc(9));
    //forming substring 
    $display("Substring formed is:%0s", str.substr(8,13));
    //convert to upper case 
    $display("upper case string is:%0s", str.toupper());
    //convert to lower case 
    $display("Lower case string is:%0s", str.tolower());
   
  end
    
endmodule
