module imm_generator(input [31:7]instr,input[6:4]imm_type_in
       output reg[31:0]imm_out);
always@(*)
begin 
     case(imm_type_in)
	 3'b001: imm_out = {{20{instr[31]}},instr[31:20]};
	 3'b010: imm_out = {{20{instr[31]}},instr[31:25],instr[11:7]};
         3'b011: imm_out = {{20{instr[31]}},instr[7],instr[30:25],instr[11:8],1'b0};
	 3'b100: imm_out = {instr[31:12],12'h000};
         3'b101: imm_out = {{12{instr[31]}},instr[19:12],instr[20],instr[30:21],1'b0};
	 3'b110: imm_out = {27'b0,instr[19:15]};
	 default: imm_out = {{20{instr[31]}},instr[31:20]};
     endcase
end
endmodule
				 
