module demux4_4bit( 
    
    input [3:0] In,
    input enable,
    input [1:0] sel,
    
    output [3:0] A, [3:0] B, [3:0] C,  [3:0] D 
   

);

assign A = (enable & sel == 'b00 ? In : 0);
assign B = (enable & sel == 'b01 ? In : 0);
assign C = (enable & sel == 'b10 ? In : 0);
assign D = (enable & sel == 'b11 ? In : 0);

endmodule




