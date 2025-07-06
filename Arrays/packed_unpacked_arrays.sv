//packed and unpacked array example
`timescale 1ns/1ps
module array_tb();
  //packed array
  logic [3:0] arr1;
  //unpacked array 
  int arr2[0:3];
  initial begin
  //initialize array elements 
    arr1=4'b1010;
    $display("Elements of array1 are:%0b", arr1);
    //loop
    for(int i=0; i<5; i++) begin
      arr2[i]=i+1;
    end
    $display("Elements of array2 are:%0p", arr2);

  end
endmodule
