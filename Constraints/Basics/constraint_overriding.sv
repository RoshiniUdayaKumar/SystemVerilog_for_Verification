//constraint block 
class packet;
  rand bit[3:0] addr;
  constraint condition {addr>5;}
endclass

//child class 
class child_class extends packet;
  constraint condition{addr==7;}
endclass

module tb();
initial begin
  packet p1=new(); //parent class object 
  child_class p2=new(); //child class object 
  repeat(5) begin
  p1.randomize();
    $display("Parent class address values are:%0d", p1.addr);  //vlaues greater than 5
  end
  
  repeat(5) begin
  p2.randomize();
    $display("Child class address values are:%0d", p2.addr);  //greater than 7 -->overriding 
             end
  end
endmodule
-----------------------------------------------------
//constraint block (adding constraints)
class packet;
  randc bit[3:0] addr;
  constraint condition {addr>5;}
endclass

//child class 
class child_class extends packet;
  constraint child_condition {addr<10;}
endclass

module tb();
initial begin
  packet p1=new(); //parent class object 
  child_class p2=new(); //child class object 
  repeat(5) begin
  p1.randomize();
    $display("Parent class address values are:%0d", p1.addr);  //vlaues greater than 5
  end
  
  repeat(5) begin
  p2.randomize();
    $display("Child class address values are:%0d", p2.addr);  //constraint gets added, so values are between 5 and 10
             end
  end
endmodule
