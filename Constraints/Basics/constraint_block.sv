class random_value;
  rand bit[3:0] a;
  constraint name{a%11==0;}
endclass

module tb();
  initial begin
  random_value obj;
  obj=new();
    repeat(10) begin
      obj.randomize();
      $display("Randomized numbers that are divisible by 11 are:%0b", obj.a);
    end
  end
endmodule

-------------------------------------------------
//constraint block 
class packet;
  rand bit[2:0] addr;
  randc bit[3:0] data;
  
  constraint addr_condition{addr>3'b010;} //constraint block
  constraint data_condition{data==4'b1101;}
endclass

module tb();
  initial begin
    packet p1; //object instantiation 
    p1=new(); //create new object 
    repeat(5) begin
    p1.randomize();
      $display("Data:%0d sent to address locations:%0d", p1.data, p1.addr);

    end
  end
endmodule
