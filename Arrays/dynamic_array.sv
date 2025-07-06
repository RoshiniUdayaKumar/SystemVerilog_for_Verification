//dynamic array
`timescale 1ns/1ps
module dynamic_array();
  int dyn_arr[]; //array declaration
  initial begin
  
    dyn_arr=new[5]; //creating 5 elements 
      //array initiailization 
    foreach(dyn_arr[i]) 
      dyn_arr[i]=i*2; //0,2,4,6,8
    $display("Elements of dynamic array are:%0p", dyn_arr);
    
    //size of array 
    $display("Size of dynamic aray is:%0d", dyn_arr.size());
    
    //resize the dynamic array 
    dyn_arr=new[10](dyn_arr);
    $display("New elements in dynamic array is:%0p", dyn_arr);
    $display("Size of dynamic aray after resizing is:%0d", dyn_arr.size());
    
       //to fill remaining elements 
    for(int j=5; j<dyn_arr.size(); j++) 
      dyn_arr[j]=j+1;    
    $display("The array with remaining elements are:%0p", dyn_arr);
    
    //delete index of array 
   dyn_arr.delete;
    $display("Size after deleting is:%0d", dyn_arr.size());
     
  end
endmodule
