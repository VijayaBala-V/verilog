`include "defines.v"

module tb;
  reg clk,rst,en,wr_rd;
  reg [`data_width-1:0]data_in;
  reg [`addr_width-1:0]addr;
  wire [`data_width-1:0]data_out;
  wire out_en;
  reg [`data_width-1:0] temp [`depth-1:0];//internal memory of tb
  //local vars
  
  reg [`addr_width-1:0] addr_l;
  reg [`data_width-1:0] data_out_l;
  ram dut(clk,rst,en,addr,wr_rd,data_in,data_out,out_en);
  
  //clk generation 
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  //rst generatiion
  
  initial begin
    en=1;
    rst=0;//active low rst
    #10;
    rst=1;
  end
  
  
  initial begin
    repeat(10)begin
    write_mem();
    #50;
    read_mem();
    comp();
  end
  end
  
  
  task write_mem();
    wr_rd=1;//write operation
    addr=$random% `addr_width;
    data_in=$random% `data_width;
    addr_l=addr;
    temp[addr_l]=data_in;
    $display("WRITE PACKET :: en=%h  wr_rd=%h addr=%h data_in=%h",en,wr_rd,addr,data_in);
  endtask
  
  task read_mem();
    //read operation
    wr_rd=0;
    addr=addr_l;
    wait(out_en)begin
      data_out_l=data_out;
    end
    $display("READ PACKET :: en=%h  wr_rd=%h addr=%h data_out=%h",en,wr_rd,addr,data_out);
      endtask
      
      
      task comp();
        if(temp[addr_l]==data_out_l)begin
          $display("ram is passed ");
          $display("temp[%h]=%h data_out_l=%h",addr_l,temp[addr_l],data_out);
        end
        else begin
          $display("ram is failed ");
          $display("temp[%h]=%h data_out_l=%h",addr_l,temp[addr_l],data_out);
        end
      endtask
      
      initial begin
        #1000;
        $finish;
      end
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars();
  end
  
endmodule
