module  Control ( 
    input clk,
    input rst_n,
    output reg out_valid     
);

reg [2:0] counter;

always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        counter <= 'd0;
    end
    else if (counter < 'd4)
    begin
        counter <= counter + 'd1;
    end
    else
    begin
        counter <= 'd0;
    end
end

always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        out_valid <= 'd0;
    end
    else
    begin
        if(counter % 4 == 0 && counter > 'd0)
        begin
            out_valid <= 1;
        end
        else
        begin
            out_valid <= 0;
        end  
    end
  
end

    

endmodule