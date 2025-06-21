module reg_block_1(input [31:0]pc_mux_in,input ms_clk_in,ms_rst_in,
    output reg[31:0] pc_out);
always@(posedge ms_clk_in)
begin
     if(ms_rst_in)
	       pc_out<=32'h00000000;
	  else 
	       pc_out<=pc_mux_in;
end
endmodule
