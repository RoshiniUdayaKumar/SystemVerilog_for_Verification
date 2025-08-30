class packet;
  rand int arr[6]; //array of 6-elements 
  constraint c1{unique  {arr};
                foreach(arr[i]) arr[i] inside {[10:20]}   
    
    ;}
  
  //display function 
  function void display();
    $display("Elements of array are:%0p", arr);    
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
