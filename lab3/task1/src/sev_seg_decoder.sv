module seven_seg_decoder(
    input  logic [3:0] bin,      // 4-bit binary input (0–F)
    output logic  [6:0] seg       // 7-bit output for segments a-g
);

// Add your code here -----------------------------------

assign seg[0]=  (~bin[0]& ~bin[1]&~bin[2]& bin[3]) | (~bin[0]& bin[1]& ~bin[2]& ~bin[3]) | (bin[0]& bin[1]& ~bin[2]& bin[3]) | (bin[0]& ~bin[1]& bin[2]& bin[3]); // a
assign seg[1]=   (bin[1]& bin[2]& ~bin[3]) | (bin[0]& bin[1]& ~bin[3]) | (bin[0]& bin[2]& bin[3]) | (bin[0]& bin[1]& bin[2]) | (~bin[0]& bin[1]& ~bin[2]& bin[3]); // b
assign seg[2]=   bin[0]& bin[1]& bin[2] | bin[0]& bin[1]& ~bin[3] | ~bin[0]& ~bin[1]& bin[2]& ~bin[3] ; // c
assign seg[3]=   bin[1]& bin[2]& bin[3] | bin[0]& ~bin[1]& bin[2]& ~bin[3] | ~bin[0]& bin[1]& ~bin[2]& ~bin[3] | ~bin[0]& ~bin[1]& ~bin[2]& bin[3]; //d
assign seg[4]=  ~bin[0]& bin[3] | ~bin[0]& bin[1]& ~bin[2] | ~bin[1]& ~bin[2]& bin[3]; // e
assign seg[5]=  ~bin[0]& ~bin[1]& bin[3] | ~bin[0]& ~bin[1]&bin[2] | ~bin[0]& bin[2]& bin[3] | bin[0]& bin[1]& ~bin[2]& bin[3]; // f
assign seg[6]=   ~bin[0]& ~bin[1]& ~bin[2] | ~bin[0]& bin[1]& bin[2]& bin[3] | bin[0]& bin[1]& ~bin[2]& ~bin[3]; // g

// Add your code here -----------------------------------

endmodule