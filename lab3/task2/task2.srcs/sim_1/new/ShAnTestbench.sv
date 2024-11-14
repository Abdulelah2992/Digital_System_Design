`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 11:19:59 AM
// Design Name: 
// Module Name: ShAnTestbench
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


module ShAnTestbench;
logic [3:0]a,b;
logic [3:0]shift , andd;

shiftAND dut(.A(a),
.B(b),
.shift(shift),
.andd(andd)
);

initial begin
a = 4'h0; b=4'h3;
#5;
a = 4'h1;b=4'h3;
#5;
a = 4'h2;b=4'h1;
#5;
a = 4'h3;b=4'h0;
#5;
a = 4'h4;b=4'hA;

end 
endmodule
