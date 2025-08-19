module ram_32x8(input wire clk,reset,rd,wr, 
                input wire [7:0]data, 
                input wire [4:0]addr, 
                output reg[7:0]dout);

  reg[7:0] ram[31:0];  
  
  always@(posedge clk)
    begin
      if(reset==1)
        begin
          dout<=8'b00000000;
        end
      else if(wr==1'b1)
        begin
          ram[addr]<=data;
        end
      
      else if(rd==1'b1)
        begin
          dout<=ram[addr];
        end
    end
endmodule