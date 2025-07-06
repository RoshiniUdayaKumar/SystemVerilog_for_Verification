//array example
`timescale 1ns/1ps
module array();
  //array declaration
  int arr1[5];
  int arr2[5];
  int arr3[5];
  int arr4[5];
  int j=0;
  bit status;
  initial begin
    arr1={1,2,3,4,5};
    //display array elements
    $display("Elements of array 1 are:%0p", arr1);
    $display("Elements of array 2 are:%0p", arr2);
    //copy the array elements 
    arr2=arr1; //array1 elements are coppied to array2
    //array after copying
    $display("Elements of array 2 after copying:%0p", arr2);
    //compare array elements
    status = (arr1==arr2)?1'b1:1'b0;
    $display("Comparision:%0b", status);
    //size of array 
    $display("Size of array1 is:%0d", $size(arr1));
    $display("Size of array2 is:%0d", $size(arr2));
    //using looping 
    foreach(arr3[i]) 
      arr3[i]=i+2; //2,3,4,5,6
     $display("Elements of array3 is:%0p", arr3);    
    //using repeat loop
    repeat(5) begin 
     arr4[j]=j+3; //3,4,5,6,7
    j++;
    end
      $display("Elements of array4 are:%0p", arr4);
   end
endmodule
