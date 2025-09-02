class packet;
  rand int arr[5];
  int min=20, max=80;
  constraint c1{foreach (arr[i]) {    
    arr[i]<max; 
    arr[i]>min;
  }
  }
  
  task set(int min,int max);
    this.min=min;
    this.max=max;
    $display("Min:%0d Max:%0d",min,max);
  endtask  
  
  function void display();
    $display("Elements of array are:%0p", arr);    
  endfunction
endclass

module tb;
  initial begin
    packet pkt;
    pkt=new();
    pkt.set(20,80);
    repeat(5) begin
      pkt.randomize();
      pkt.display();
    end
  end
  
endmodule
