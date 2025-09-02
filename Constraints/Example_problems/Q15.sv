class packet;
  rand int pin; //4-digit pin
  constraint c1{pin inside {[1000:9999]};}//4-digit number
  constraint c2{(pin[0]!=pin[1]+1'b1) ;}
  constraint c3{(pin[1]!=pin[2]+1'b1) ;}
  constraint c4{(pin[2]!=pin[3]+1'b1) ;}
  
  function void display();
    $display("4-digit pin is:%0d", pin);
  endfunction
endclass
                
  module tb;
  initial begin
    packet pkt;
    pkt=new();
    repeat(3) begin
      pkt.randomize();
      pkt.display();
    end
  end
endmodule
