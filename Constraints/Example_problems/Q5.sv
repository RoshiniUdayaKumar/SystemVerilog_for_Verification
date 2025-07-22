//array 
class packet;
  rand int arr[10]; //an array of size 10
  rand int sum;
  constraint element{foreach(arr[i]) arr[i] inside {[0:50]} ;} 
  constraint arr_sum{sum==arr.sum();
                     sum<300;}  //buil-in method to find sum. this is array reduction method 
 
    
  endclass

module tb();
  initial begin
  packet p1;
    p1=new();
    repeat(3) begin
    p1.randomize();
    $display("Elements of array are:%0p", p1.arr);
    $display("Sum of array is:%0d", p1.sum);
  end
  end
endmodule
