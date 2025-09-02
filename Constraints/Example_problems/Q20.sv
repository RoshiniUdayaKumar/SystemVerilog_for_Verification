class packet;
  rand bit arr[8]; //8-bit variable
  constraint c1{foreach (arr[i])
  {
    arr[0]!=arr[1];
    arr[1]!=arr[2];
    arr[2]!=arr[3];
    arr[3]!=arr[4];
    arr[4]!=arr[5];
    arr[5]!=arr[6];
    arr[6]!=arr[7];
  }
  }

  function void display();
    $write("\n 8-bit number is:");
    foreach(arr[i]) begin
      $write("%b", arr[i]);
    end
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
