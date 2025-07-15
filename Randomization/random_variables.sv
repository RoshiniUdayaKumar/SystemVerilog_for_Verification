//random values 
class random ;
  rand bit [3:0] A;
  randc bit [3:0] B;  
endclass

module tb();
  initial begin
  random obj;
    obj=new();
    repeat(10) begin
    obj.randomize();
      $display("Random values for A:%0d and B:%0d", obj.A, obj.B);
    end
  end
endmodule
