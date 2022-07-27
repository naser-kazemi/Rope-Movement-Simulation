`include "core.v"

module core_tb;

    reg reset;
    reg clk;
    initial clk = 1'b0; 
    always #5 clk = ~clk;
    core #(5)c0(.clk(clk), .reset(reset));

    initial
    begin
        reset = 1; 
        #10;
        reset = 0; 
        #120;
        $stop;
    end

endmodule