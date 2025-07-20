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

