`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 03:35:13 PM
// Design Name: 
// Module Name: sevsegtaestbench
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


module sevsegtaestbench;
logic [3:0]bin; 
logic [6:0]seg;
 

 
seven_seg_decoder dut (.seg(seg), .bin(bin));
 
initial begin
bin = 4'b0000;
#5
bin = 4'b1000;
#5
bin = 4'b0100;
#5
bin = 4'h3;
#5
bin = 4'h4;
#5
bin = 4'h5;
#5
bin = 4'h6;
#5
bin = 4'h7;
#5
bin = 4'h8;
#5
bin = 4'h9;
#5
bin = 4'hA;
#5
bin = 4'hB;
#5
bin = 4'hC;
#5
bin = 4'hD;
#5
bin = 4'hE;
#5
bin = 4'hF;



end 


endmodule
