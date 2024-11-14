`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 11:04:48 AM
// Design Name: 
// Module Name: shiftAND
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


module shiftAND(
input logic [3:0]A,B,
output logic [3:0]shift,
output logic [3:0]andd
    );
//addsub f1(.a(A),.b(B));
assign  shift=A>>B;
assign  andd=A&B;
    
    
    
endmodule
