class addr;
  rand byte a; //first-byte
  rand byte b; //second-byte
  rand byte c;//third-byte
  //constraint 
  constraint c1{a==127;}
  constraint c2{b inside {[0:255]};}
  constraint c3{c inside {[0:255]};}
  
endclass

module tb();
  initial begin
    addr obj;
    obj=new();
    repeat(5) begin   //randomize 5 times
    obj.randomize();
    $display("IP address byte1:%0d byte2:%0d byte3:%0d", obj.a, obj.b, obj.c);
  end
  end
endmodule
