//alphanumeric
class alphanumeric;
  rand byte str[6];
  //constraint 
  constraint c1 {foreach(str[i]) str[i] inside {[48:57], [65:90],[97:122]};}//ascii values
  
  //class method 
  function void display();
    $write("Random values are:");
    foreach(str[i]) begin
      $write("%0s", str[i]);      
    end
    $display(" ");  //add new line character
  endfunction
  endclass

module tb();
initial begin
  alphanumeric obj;
  obj=new();
  repeat(3) begin   //randomize 3 times
  obj.randomize();
  obj.display(); 
  end
end
endmodule
