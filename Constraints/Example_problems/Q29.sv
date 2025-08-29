class packet;
  rand int arr[5];
  constraint c1{foreach(arr[i]) arr[i] dist {2:=40, 3:=40, 5:=20};} 
  
  function void display();
    $display("Elements of array are:%0p", arr);
  endfunction
endclass

module tb();
  initial begin
  packet pkt;
  pkt=new();
  pkt.randomize();
  pkt.display();

  end
  
endmodule
