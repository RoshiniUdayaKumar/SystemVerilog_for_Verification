//3-digit number 
class number;
  rand int num;
  //constraint 
  constraint c1{num inside {[100:999]};}//3-digit number 
  constraint c2{num[0]!= num[1]!=num[2] ;}  
endclass

module tb();
  initial begin
  number obj;
    obj=new();
    repeat(10) begin
    obj.randomize();
    $display("Unique values for a 3-digit number is:%d", obj.num);
  end
  end
endmodule
