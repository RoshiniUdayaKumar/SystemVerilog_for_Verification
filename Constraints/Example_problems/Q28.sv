class packet;
  randc byte str[6];
  constraint c1{foreach(str[i]) str[i] inside {97,101,105,111,117};}

  function void display();
    $write("Elements of array are:");
    foreach(str[i]) begin
      $write("%s", str[i]);
    end
  endfunction
endclass

module tb();
  initial begin
    packet pkt;
    pkt = new();
    pkt.randomize();
    pkt.display();
  end
endmodule
