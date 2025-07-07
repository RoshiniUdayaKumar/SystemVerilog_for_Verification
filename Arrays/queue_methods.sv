//queue
`timescale 1ns/1ns
module queue_methods();
  int q[$];
  int n;
  initial begin
    q.push_front(5);
    q.push_front(10);
    q.push_back(15);
    q.push_back(20);
    //size of queue
    n=q.size();
    $display("The size of queue is:%0d", n);  //4
    //insert n/2 position 
    q.insert(n/2,25);
    $display("All elements of queue are:%0p", q);// 10 5 25 15  20 
    //n position 
    q.insert(n,30);
    $display("All elements of queue are:%0p", q);//10  5  25  15  30 20
    //n-1 position
    q.insert(n-1, 35);
    $display("All elements of queue are:%0p", q);//10  5  25 35  15  30 20
    //n/n position
    q.insert(n/n, 40);
    $display("All elements of queue are:%0p", q);//10 40 5  25 35  15  30 20
    //delete 
    q.delete(2);
    $display("Elements of queue after deletion are:%0p", q);//10 40 25 35  15  30 20
    //pop-operation 
    q.pop_front();
    q.pop_back();
    $display("All elements of queue are:%0p", q); //40 25 35 15 30
   
 end
endmodule
