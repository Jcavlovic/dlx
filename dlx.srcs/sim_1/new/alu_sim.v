`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2026 07:01:26 PM
// Design Name: 
// Module Name: alu_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module alu_sim;
    
    wire [15:0] results;
    wire [7:0] s1 = 8'b00000001;
    wire [7:0] s2 = 8'b00000001;
    wire [5:0] op = 6'd0;
    
    alu_op alu (.alu_op(op), .s1(s1), .s2(s2), .results(results));

endmodule
