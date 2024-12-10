// This counter is designed using register, adder and a multiplexer. 
// Normally we don't use this appraoch as this requires more hardware there a simple counter 
// that adds constant value "1'b1".

module counter_4bit#(
)(
    input logic clk,
    input logic reset_n,
    input logic load,
    input logic [3:0] load_data,
    output logic [3:0] count
);

   // logic next_count;
    logic [3:0] next_count; // put the correct size of variable

    
   // assign next_count = load ? (count + 1) : (load_data); 
    assign next_count = load ? (load_data) : (count + 1); // correct the posision of load_data and count+1


    always @(posedge clk, negedge reset_n)
    begin 
        //if(reset_n)
        //    count <= 0;
        if(!reset_n) // change it to if reset_n is zero
            count <= 0;
        else 
            count <= next_count;
    end

endmodule