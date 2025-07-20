//disbale randomization 
class random;
  rand bit[1:0] addr;
  randc bit[3:0] data; 
  
  //class methods
  function void display();
    $display("Random values for addr:%0d and data:%0d", addr, data);    
  endfunction
endclass

module tb();
  initial begin
  random obj;
    obj=new();
    repeat(5) begin
      //disable randomization for addr
      obj.addr.rand_mode(0);
      //enable again 
     obj.addr.rand_mode(1);
      obj.randomize();   //randomize 5 values --> only data is sent serially
    obj.display();
    end 
  end
endmodule

-----------------------------------------------------
//disbale randomization 
class random;
  rand bit[1:0] addr;
  randc bit[3:0] data; 
  
  //class methods
  function void display();
    $display("Random values for addr:%0d and data:%0d", addr, data);    
  endfunction
endclass

module tb();
  initial begin
  random obj;
    obj=new();
    repeat(5) begin
      //disable randomization for all variables
      obj.rand_mode(0);
      //enable again 
    obj.rand_mode(1);
      obj.randomize();  
    obj.display();
    end 
  end
endmodule
