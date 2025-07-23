class number;
  rand int a;
    rand int b;
    rand int c;
  //constraints 
  constraint c1{a inside{[1:50]} ;}
  constraint c2{b inside{[1:50]} ;}
  constraint c3{c inside{[1:50]} ;}
  constraint c4{a<b && b<c && a<c;}  //condition for a<b<c
endclass

module tb();
  initial begin
  number obj;
    obj=new();
    repeat(8) begin
    obj.randomize();
      $display("Random values for a:%0d b:%0d c:%0d", obj.a, obj.b, obj.c);
  end
  end
endmodule
