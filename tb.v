// Code your testbench here
// or browse Examples
module ram_tb();

  reg clk;
  reg reset;
  reg rd,wr;
  reg [7:0] data;
  reg [4:0] addr;
  wire [7:0] dout;
  
  ram_32x8 DUT (clk,reset,rd,wr,data,addr,dout);
  
  initial
    begin
    clk=1'b0;
    forever #5 clk=~clk;
  end
  
  initial
    begin
      reset=1'b1;#10;
      reset=1'b0;#20;
      data=8'b00000000; rd=0; wr=1; addr=5'b00000; #20;
      data=8'b00000001; rd=0; wr=1; addr=5'b00001; #20;
      data=8'b00000010; rd=0; wr=1; addr=5'b00010; #20;
      data=8'b00000011; rd=0; wr=1; addr=5'b00011; #20;
      data=8'b00000100; rd=0; wr=1; addr=5'b00100; #20;
      data=8'b00000101; rd=0; wr=1; addr=5'b00101; #20;
      data=8'b00000110; rd=0; wr=1; addr=5'b00110; #20;
      data=8'b00000111; rd=0; wr=1; addr=5'b00111; #20;
      data=8'b00001000; rd=0; wr=1; addr=5'b01000; #20;
      data=8'b00001001; rd=0; wr=1; addr=5'b01001; #20;
      data=8'b00001010; rd=0; wr=1; addr=5'b01010; #20;
      data=8'b00001011; rd=0; wr=1; addr=5'b01011; #20;
      data=8'b00001100; rd=0; wr=1; addr=5'b01100; #20;
      data=8'b00001101; rd=0; wr=1; addr=5'b01101; #20;
      data=8'b00001110; rd=0; wr=1; addr=5'b01110; #20;
      data=8'b00001111; rd=0; wr=1; addr=5'b01111; #20;
      
      #50;
      
      rd=1; wr=0; addr=5'b00000; #20;
      rd=1; wr=0; addr=5'b00001; #20;
      rd=1; wr=0; addr=5'b00010; #20;
      rd=1; wr=0; addr=5'b00011; #20;
      rd=1; wr=0; addr=5'b00100; #20;
      rd=1; wr=0; addr=5'b00101; #20;
      rd=1; wr=0; addr=5'b00110; #20;
      rd=1; wr=0; addr=5'b00111; #20;
      rd=1; wr=0; addr=5'b01000; #20;
      rd=1; wr=0; addr=5'b01001; #20;
      rd=1; wr=0; addr=5'b01010; #20;
      rd=1; wr=0; addr=5'b01011; #20;
      rd=1; wr=0; addr=5'b01100; #20;
      rd=1; wr=0; addr=5'b01101; #20;
      rd=1; wr=0; addr=5'b01110; #20;
      rd=1; wr=0; addr=5'b01111; #20;
      
      
      $finish();
    end
  
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
      $monitor("clk=%0b, reset=%0b, rd=%0b,wr=%0b, data=%0b, addr=%0b, dout=%0b",clk,reset,rd,wr,data,addr,dout);
    end
endmodule
