`include "EnforceConstraint.v"

module enforce_constraint_tb;


reg [31:0] up_x_pos, up_y_pos, x_pos, y_pos, down_x_pos, down_y_pos;
wire [31:0] x_enforced_constraints;
wire [31:0] y_enforced_constraints;


EnforceConstraint ec(up_x_pos, up_y_pos, x_pos, y_pos, down_x_pos, down_y_pos, 1'b1,
                x_enforced_constraints, y_enforced_constraints);


initial begin

    up_x_pos = 32'h000c8000;    // 10.32
    up_y_pos = 32'h000324cd;    // 30.5

    x_pos = 32'h000c8000;   // 3.47
    y_pos = 32'h0003c4cd;   // 30.5

    down_x_pos = 32'h000c8000; // 0.38
    down_y_pos = 32'h000464cd; // 90.68


    #50

    $display("x_enforced_constraints = %h \t y_enforced_constraints = %h",
        x_enforced_constraints, y_enforced_constraints);

    
end




endmodule