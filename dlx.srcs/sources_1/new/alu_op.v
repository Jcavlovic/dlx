`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jordan Cavlovic
// 
// Create Date: 02/02/2026 09:58:23 PM
// Design Name: ALU Operations
// Module Name: alu_op
// Project Name: DLX ALU
// Target Devices: NEXYS A7
// Description: Arithmetics Logical Operations
// 
// Dependencies: N/A 
// 
// Revision: 0.05
// Revision 0.01 - File Created
// Revision 0.05 - Added ALU Operations WIP
// Additional Comments: N/A
// 
//////////////////////////////////////////////////////////////////////////////////

module alu_op(
    input [5:0] alu_op,
    input [7:0] s1, s2,
    output reg [15:0] results
    );
    
    always@(*) begin
        case (alu_op)
            // ADD - Addition
            5'd0: results = s1 + s2;
            // SUB - Subtraction
            5'd1: results = s1 - s2;
            // PASS_S1 - Pass S1
            5'd2: results = s1;
            // PASS_S2 - Pass S2
            5'd3: results = s2;
            // AND - And
            5'd4: results = s1 & s2;
            // OR - Or
            5'd5: results = s1 | s2;
            // XOR - Exclusive Or
            5'd6: results = s1 ^ s2;
            // SLL - Shift Left Logical
            5'd7: results = s1 << s2;
            // SRL - Shift Right Arthimetic
            5'd8: results = {s1[7], {s1 >> s2}};
            // SEQ - Set Equal
            5'd9: results = s1 == s2;
            // SNE - Set Not Equal
            5'd10: results = !(s1 == s2);
            // SLT - Set Less Than
            5'd11: results = s1 < s2;
            // SLTU - Set Less Than Unsigned NEEDS WORK
            5'd12: results = s1 < s2;
            // SGE - Set Greater Than Equal
            5'd13: results = s1 >= s2;
            // SGEU - Set Greater Than Equal Unsigned NEEDS WORK
            5'd14: results = s1 >= s2;
            // SGT - Set Greater Than
            5'd15: results = s1 > s2;
            // SGTU - Set Greater Than Unsigned NEEDS WORK
            5'd16: results = s1 > s2;
            // SLE - Set Less Equal
            5'd17: results = s1 <= s2;
            // SLEU - Set Less Equal Unsigned NEEDS WORK
            5'd18: results = s1 <= s2;
            // Default
            default: results = {{15{1'b0}}};
        endcase
endmodule
