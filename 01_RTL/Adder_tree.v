module  Adder_tree (
    input [127:0] in, 
    output [12:0] out     
);

    wire [3:0]  in_array[0:31];
    reg [12:0] sum_level1[0:15]; 
    reg [12:0] sum_level2[0:7];  
    reg [12:0] sum_level3[0:3];   
    reg [12:0] sum_level4[0:1]; 

    genvar k;
    generate
        for (k = 0; k < 32; k = k + 1) begin 
          assign  in_array[k] = in[4 * k + 3 : 4 * k];
        end
    endgenerate
    // Level 1: Add pairs of inputs

    integer  i;
    always @(*) 
    begin
        for (i = 0; i < 16; i = i + 1) 
        begin
            sum_level1[i] = in_array[2*i] + in_array[2*i+1];
        end
    end

    // Level 2: Add pairs of level 1 sums
    always @(*) 
    begin
        for (i = 0; i < 8; i = i + 1) 
        begin
           sum_level2[i] = sum_level1[2*i] + sum_level1[2*i+1];
        end
    end

    // Level 3: Add pairs of level 2 sums
    always@(*)
    begin
        for (i = 0; i < 4; i = i + 1) begin
            sum_level3[i] = sum_level2[2*i] + sum_level2[2*i+1];
        end
    end

    // Level 4: Add pairs of level 3 sums
    always@(*)
    begin
        for (i = 0; i < 2; i = i + 1) begin
            sum_level4[i] = sum_level3[2*i] + sum_level3[2*i+1];
        end
    end

    assign out = sum_level4[0] + sum_level4[1];

endmodule

