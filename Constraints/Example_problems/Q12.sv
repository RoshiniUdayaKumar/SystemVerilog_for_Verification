class random_time;
  randc int hour;
  randc int min;
  //constraint 
  constraint c1{hour inside {[1:24]};}
  constraint c2{min inside {[0:60]};}
  
  //class methods 
  function void display();
      $display("Time is %0d Hr:%0d min", hour, min);
    endfunction
endclass

module tb();
  initial begin
    random_time obj;
    obj=new();
    repeat(5) begin
    obj.randomize();
    obj.display();
    end
  end  
endmodule
