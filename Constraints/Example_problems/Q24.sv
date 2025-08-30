//gray code
class packet;
  rand bit [4:0] num; //5-digit number
  rand bit [4:0] g_num;
  constraint c1 { //gray-cdoe logic
    g_num[4] == num[4];
    g_num[3] == num[4] ^ num[3];
    g_num[2] == num[3] ^ num[2];
    g_num[1] == num[2] ^ num[1];
    g_num[0] == num[1] ^ num[0];
  }
endclass

module tb;
  initial begin
    packet p;
    p = new();
    //repeat(5) begin
    p.randomize();
    $display("Binary number generated is:%0b", p.num);
    $display("Gray-coded number is:%0b", p.g_num);
    //end
  end
endmodule
