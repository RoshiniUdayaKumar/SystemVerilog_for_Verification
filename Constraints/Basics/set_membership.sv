//set-membership constraint 
class packet;
  randc bit[3:0] addr;  //4-bit, can take values from 0 to 15
  constraint condition {!(addr inside {2,3,[11:15]}) ; }
endclass


module tb();
initial begin
packet p1;
p1=new();


  repeat(5) begin 
    p1.randomize();   
    $display("Random address locations for p1 :%0d" , p1.addr);  //0,1,4,5,6,7,8,9,10
  end 
  
  end
endmodule
-------------------------------------------------------
//set-membership dist constraint 
class packet;
  rand bit[3:0] addr;  //4-bit, can take values from 0 to 15
  constraint condition {addr dist {[0:5] :=50, [6:9] :=30, [10:15]:=20 } ; }
endclass


module tb();
initial begin
packet p1;
p1=new();


  repeat(20) begin 
    p1.randomize();   
    $display("Random address locations for p1 :%0d" , p1.addr);  //0,1,4,5,6,7,8,9,10
  end 
  
  end
endmodule
