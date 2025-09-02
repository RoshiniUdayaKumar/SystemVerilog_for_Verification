class packet;
  rand bit arr[5];
  constraint c1{foreach (arr[i])    
    arr[i] dist {1:=80, 0:=20};  //disrtibution
  }
  
 function void display();
   $write("\n 5-bit number is:");
   foreach(arr[i]) begin
     $write("%b", arr[i]);
    end
  endfunction 
  
endclass

module tb;
  initial begin
    packet pkt;
    pkt=new();
    repeat(5) begin
      pkt.randomize();
      pkt.display();
    end
  end
  
endmodule
