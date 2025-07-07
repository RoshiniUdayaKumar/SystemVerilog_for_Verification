//array locators 
`timescale 1ns/1ns 
module array_locator();
  int arr1[];
  int arr2[];
   initial begin
    arr1=new[5];  //creating 5 elements 
    arr2=new[5];
    foreach(arr1[i]) begin
      arr1[i]=i+2;  //2,3,4,5,6
      end
    $display("Elements of array 1 are:%0p", arr1);
    
    //array locator 
    arr2= arr1.find() with (item %2 ==0); //even numbers
    $display("Even elements in array 1 are:%0p", arr2);
    
    arr2=arr1.find_index() with (item%2==0);
    $display("Indices of even elements in array 1 are:%0p", arr2);
    
    arr2=arr1.find_first() with (item>2); //3
    $display("First element satisying condition is:%0p", arr2);
    
    arr2=arr1.find_first_index() with (item>2);  //1
    $display("First indices satisying condition is:%0p", arr2);
    
    arr2=arr1.find_last() with (item>3); //6
    $display("Last element satisying condition is:%0p", arr2);
    
    arr2=arr1.find_last_index() with (item>3); //4
    $display("Last indices satisying condition is:%0p", arr2);
    
    arr2=arr1.min();
    $display("The minimum element in array 1 is:%0p", arr2);
     
    arr2=arr1.min() with (item>3);  //min value with condition
    $display("The minimum element in array 1 is:%0p", arr2);
 
    arr2=arr1.max();//max value
    $display("The maximum value in array 1 is:%0p", arr2);
    
    arr2= arr1.max() with (item<6); //max value with condition 
    $display("The maximum value in array 1 is:%0p", arr2);
        
    arr2=arr1.unique(); //unique values
    $display("All array 1 elements are unique");
    
    arr2=arr1.unique_index(); //unique index
    $display("Indices of unique array elements are:%0p", arr2);
     
  end
endmodule
