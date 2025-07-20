//unique random values 
class random;
  randc int data;
  constraint name{data inside {[1:20]};}
endclass

module tb();
  initial begin
  random p1;
    p1=new();
    repeat(5) begin
    p1.randomize();
      $display("Unique random values are:%0d", p1.data);
    end
  end
endmodule
