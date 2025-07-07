//QUEUE
`timescale 1ns/1ps
module queue_tb();
  //queue declaration 
  int qu[$];
  initial begin 
    //queue operation elements given 
    qu.push_front(12);
    qu.push_front(23);
    qu.push_back(2);
    qu.push_back(13);
    //elements of queue
    $display("Elements of queue are:%0p", qu);
    //size of queue
    $display("The size of queue is:%0d", qu.size());
    //insert
    qu.insert(2,3);
    $display("Elements of queue after insertion is:%0p", qu);
    //size
    $display("The size of queue after insertion is:%0d", qu.size());
    //delete 
    qu.delete(0);
    $display("Elements of queue after deletion is:%0p", qu);
    //pop operation 
    qu.pop_back;
    $display("Elements are:%0p", qu);
    qu.pop_front;
       $display("Elements are:%0p", qu);
    //delete entire queue
    qu.delete();
    $display("The size of queue after deletion is:%0d", qu.size());
    
  end
  
endmodule
