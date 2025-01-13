`include "defines.v"
module ram(clk,rst,en,addr,wr_rd,data_in,data_out,out_en);
  input clk,rst,en,wr_rd;
  input [`data_width-1:0]data_in;
  input [`addr_width-1:0]addr;
  output reg [`data_width-1:0]data_out;
  output reg out_en;
  //local variable
  integer i;
  //memory declaration
  reg [`data_width-1:0] memory [`depth-1:0];
  
  always @(posedge clk)
    if(en) begin
      if(!rst)begin
        data_out<=0;
        for(i=0;i<(2**`addr_width);i=i+1)
          begin
            memory[i]=0;
            $display("memory=%p",memory);
          end
      end
      else begin
        if(wr_rd==1) begin//write operation
          memory[addr]<=data_in;
        end
        else begin
          data_out <= memory[addr];
          out_en <= 1;
          @(posedge clk);
          out_en<=0;
        end
    end
    end
        
    else 
      $display("ram is disabled");
    
    endmodule
    
