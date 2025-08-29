class packet;
  randc int arr[4];
  constraint c1{foreach(arr[i]) arr[i]%2==1;}  //odd numbers
  
  function void display();
    arr.sort(); //to arrange in ascending order
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
