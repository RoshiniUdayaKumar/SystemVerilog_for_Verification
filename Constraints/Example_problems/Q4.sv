class operation;
  rand byte a;
  rand byte b;
  rand byte c;
  constraint op{c==(a^b) ;}
  
endclass

module tb();
  initial begin
  operation op;
    op=new();
    repeat(3) begin
      op.randomize();
      $display("XOR operation values are:%0b", op.c);
    end
  end
endmodule
