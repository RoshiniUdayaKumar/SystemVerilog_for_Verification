//static onstraint 
class packet;
  randc bit[3:0] addr;
 static constraint condition {addr>5; }
endclass


module tb();
initial begin
packet p1,p2;  //two object handles 
  p1=new();
  p2=new();

  repeat(5) begin 
    p1.constraint_mode(0);
    p1.randomize();  //wont follow rules
    p2.randomize();   //since p1 constraint is truned off, it also wont follow rules
      $display("Random address locations for p1 :%0d and p2: %0d", p1.addr, p2.addr);
  end 
  
  repeat(5) begin
    //enable again 
    p1.constraint_mode(1);
    p1.randomize();
    p2.randomize();
    $display("Constraint random address locations for p1 :%0d and p2: %0d", p1.addr, p2.addr);
  end
  end
endmodule
