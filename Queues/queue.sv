//queue
`timescale 1ns/1ns
module queue_ex();
  string mystr[$];
  int q[$];
  bit [3:0] q1[$];
  
  initial begin   
    mystr.push_front("Hi");
    mystr.push_front("World");
    q.push_back(10);
    q.push_front(20);
    q1.push_front(0100);
    q1.push_back(4'b0011);
    $display("Elements in string queue is:%0d", mystr.size()); 
    $display("Elements in integer queue is:%0d", q.size()); 
    $display("Elements in bit-level queue is:%0d", q1.size()); 
  end
  
  
endmodule
