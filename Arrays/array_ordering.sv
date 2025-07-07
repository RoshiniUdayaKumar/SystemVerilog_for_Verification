//array ordering 
`timescale 1ns/1ns 
module array_ordering();
  int arr1[];
  
  initial begin
    arr1=new[6];
    for(int i=0; i<6; i++) begin
      arr1[i]= (i*2) +1;    
    end
    $display("Elements of array are:%0p", arr1);
    
    //sorting 
     arr1.sort();
    $display("Elements sorted in ascending order is:%0p", arr1);
    
    //reverse-sorting 
    arr1.rsort();
    $display("Elements sorted in descending order is:%0p", arr1);
    
    //reverse
    arr1.reverse();
    $display("Elements in reverse order is:%0p", arr1);
    
    //shuffle
    arr1.shuffle();
    $display("Elements shuffled in random order is:%0p", arr1);
  end
endmodule
