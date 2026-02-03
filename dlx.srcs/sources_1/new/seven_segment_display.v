`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jordan Cavlovic
// 
// Create Date: 02/02/2026 09:22:03 PM
// Design Name: Seven Segment Display
// Module Name: seven_segment_display
// Project Name: DLX ALU
// Target Devices: NEXYS A7
// Tool Versions: 
// Description: Module to output display to Seven Seqment Display
// 
// Dependencies: N/A
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Revision 1.00 - Added display bits in HEX
// Additional Comments: N/A
// 
//////////////////////////////////////////////////////////////////////////////////


module seven_segment_display(
    input [3:0] switch,
    output reg [6:0] segment
    );
    
        always @(*) begin
        case (switch)
            4'h0: segment = 7'b1000000;  // 0
            4'h1: segment = 7'b1111001;  // 1
            4'h2: segment = 7'b0100100;  // 2
            4'h3: segment = 7'b0110000;  // 3
            4'h4: segment = 7'b0011001;  // 4
            4'h5: segment = 7'b0010010;  // 5
            4'h6: segment = 7'b0000010;  // 6
            4'h7: segment = 7'b1111000;  // 7
            4'h8: segment = 7'b0000000;  // 8
            4'h9: segment = 7'b0010000;  // 9
            4'hA: segment = 7'b0001000;  // A
            4'hB: segment = 7'b0000011;  // b
            4'hC: segment = 7'b1000110;  // C
            4'hD: segment = 7'b0100001;  // d
            4'hE: segment = 7'b0000110;  // E
            4'hF: segment = 7'b0001110;  // F
            default: segment = 7'b1111111; // off
        endcase
    end
endmodule
