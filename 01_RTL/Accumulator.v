module Accumulator (
    input clk,
    input rst_n,
    input in_valid,
    input [12:0] partial_sum, 
    output reg [12:0] result
);

always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        result <= 13'd0;
    end
    else if(in_valid)
    begin
        result <= (result << 13'd1) + partial_sum;
    end

end

endmodule