
module top(
    input [15:0] sw,
    input btnL,
    input btnU,
    input btnR,
    input btnD,
    input btnC,
    
    output [15:0] led
);

wire [1:0] mux_sel;
wire [1:0] demux_sel;
wire [3:0] mux_output;

wire [3:0] local_lib;
wire [3:0] fire_dept;
wire [3:0] school;
wire [3:0] rib_shack;

assign mux_sel = {btnU, btnL};
assign demux_sel = {btnR, btnD};



mux4_4bit mux_inst (
    .A( sw[3:0] ),
    .B( sw[7:4] ),
    .C( sw[11:8] ),
    .D( sw[15:12] ),
    .sel (mux_sel),
    .enable (btnC),
    .Y(mux_output)    
);

demux4_4bit demux_inst(
   .In(mux_output),
   .enable(btnC),
   .sel(demux_sel),
   .A(local_lib),
   .B(fire_dept),
   .C(school),
   .D(rib_shack)
);

assign led[3:0] = local_lib;
assign led[7:4] = fire_dept;
assign led[11:8] = school;
assign led [15:12] = rib_shack;


endmodule
