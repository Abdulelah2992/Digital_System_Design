module d_latch_asyn_rstn(
    input logic clk,
    input logic D,
    input logic reset_n,
    output logic Q, 
    output logic Qn 
);
    logic S, R;

    assign S = D;
    assign R = ~D;// R equal to d
    logic Q1; // add logic Q1
    logic nand1_o, nand2_o;
    nand (nand1_o, S, clk);
    nand (nand2_o, R, clk);

    nand (Q1, nand1_o, Qn);
    and (Q, reset_n, Q1);//    and (Q, ~reset_n, Q1); delete the invertor 
    nand (Qn, nand2_o, Q);

endmodule                                                                                                                                                            