`timescale 1ns / 1ps

module dlx_alu(
    input CLK,
    input [15:0] SW,
    output [15:0] LED
);

    wire [15:0] results;
    wire [5:0] op = 6'd0;
    
    alu_op alu (.alu_op(op), .s1(SW[7:0]), .s2(SW[15:8]), .results(LED));
    
    seven_segment_display ssd (.switch(results), .segment(seg));
    
endmodule