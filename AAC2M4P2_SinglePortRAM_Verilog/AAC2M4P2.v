module RAM128x32 
#(
  parameter Data_width = 32,  //# of bits in word
            Addr_width = 7  // # of address bits
  )
  (  //ports
    input wire clk,
    input wire we,
    input wire [(Addr_width-1):0] address, 
    input wire [(Data_width-1):0] d,
    output wire [(Data_width-1):0] q
  );
// SIGNAL DECLARATION
reg[Data_width-1:0] ram [2**Addr_width-1:0];
// 2 dimensional array for RAM storage


//write operation

always @(posedge clk)
    begin
       if(we)
          ram[address] <= d;
    end
endmodule