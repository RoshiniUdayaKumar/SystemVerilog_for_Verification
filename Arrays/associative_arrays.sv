//associative array 
`timescale 1ns/1ps 
module associative_array();
  //array declaration 
  int arr[int];
  int i;
  
  initial begin
  //array initialization 
    for (i=0; i<=5; i++) begin
      arr[i]=i+3; //3,4,5,6,7,8
      end
    $display("Elements of array are:%0p", arr);
    
    //size of the array 
    $display("size of associative array is:%0d", arr.num());
    
    //exists
    if(arr.exists(2)) 
       $display("Value exists in array");
     else 
         $display("Value does not exist in array");
    
    //first element 
    arr.first(i);
    $display("The first element of array:%0d", arr[i]);
    
    //next element 
    arr.next(i);
    $display("The next element of array:%0d", arr[i]);
    
    //last element
    arr.last(i);
    $display("The last element of array:%0d", arr[i]);
    
    //previous element 
    arr.prev(i);
    $display("The previous element of array:%0d", arr[i]);
    
    //delete a index in array 
    arr.delete(2);
    $display("Array elements after deletion:%0p", arr);
    
    //size after deletion 
    $display("Size of array after 1 index deleted:%0d", arr.num());
    
    //delete entire array 
    arr.delete();
    $display("Size of array after complete deletion:%0d", arr.num());
    
  end
endmodule
