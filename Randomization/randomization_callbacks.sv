//pre and post randomize
class random;
  rand int A;
  randc int B;
  
  //pre-randomize 
  function void pre_randomize();
    $display("Pre_randomization");    
  endfunction
  
  //post-randomzie
  function void post_randomize();
      $display("Random values for A:%0d and B:%0d", A, B);
      $display("Post_randomization");    
  endfunction
  
endclass

module tb();
  initial begin
  random obj;
  obj=new();
    repeat(5) begin
  obj.randomize(); 
    end
  end
    endmodule
