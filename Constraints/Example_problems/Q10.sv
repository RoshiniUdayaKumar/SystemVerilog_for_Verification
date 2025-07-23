class weather;
  randc int temp;
  randc bit mode;
  //0-indicates cold and 1-indictaes hot
  constraint c1{mode==0 -> temp inside {[0:15]}; }  //cold wearher
  constraint c2{mode==1 -> temp inside {[30:45]}; }  //hot weather
  
  //class methods 
  function void display;
    $display("Temperature is in the range:%0d with mode:%0d", temp,mode);
  endfunction
endclass

module tb();
  initial begin
    weather obj;
    obj=new();
    repeat(5) begin
    obj.randomize();
    obj.display();
    end
  end
endmodule
