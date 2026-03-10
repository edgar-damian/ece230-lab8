module mux4_4bit( 
    input [3:0] A, [3:0] B, [3:0] C,  [3:0] D, 
    input [1:0] sel,
    input enable,
    
    output [3:0] Y 
);

assign Y = enable ? (sel == 'b00 ? A :
            sel == 'b01 ? B :
            sel == 'b10 ? C :
            sel == 'b11 ? D : 0 ) : 0;
            
endmodule



