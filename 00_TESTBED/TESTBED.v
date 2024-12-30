
`timescale 1ns/10ps
`include "../01_RTL/Adder_tree.v"
`include "../01_RTL/Accumulator.v"


`define clk_PERIOD  1.0
`define End_CYCLE 1000

module loop_tb;
    reg clk;
    reg rst_n;
    reg sam ; 
    wire o_clk;
    reg in_valid ; 
    reg [ 2:0 ] j ; 
    
    integer tt1 , tt2 , tt3 , tt4 ; 
    integer t1 , t2 , t3 , t4 ; 
    integer i , k ; 
    integer flag ; 
    reg [127:0] I1 [0:3]; 
    wire[12:0] out ; 
    wire[12:0] result ; 
    
   


    Adder_tree u0 (
        .in(I1[j]),
        .out(out)
    );

    Accumulator u1 (
        .clk(clk),
        .rst_n(rst_n),
        .in_valid(in_valid),
        .partial_sum(out),
        .result(result)
    );


   
    initial begin
        t1 = $fopen("../00_TESTBED/t1.txt","r");
        t2 = $fopen("../00_TESTBED/t2.txt","r");
        t3 = $fopen("../00_TESTBED/t3.txt","r");
        t4 = $fopen("../00_TESTBED/t4.txt","r");    

        tt1 = $fscanf(t1,"%d",I1[0]);
        tt2 = $fscanf(t2,"%d",I1[1]);
        tt3 = $fscanf(t3,"%d",I1[2]);
        tt4 = $fscanf(t4,"%d",I1[3]);

        
    end
    
	   
    
    initial begin
        $fsdbDumpfile("loop0.fsdb");
        $fsdbDumpvars;
    end
    
    initial begin
        clk   = 1'b0 ;
        rst_n = 1'b1 ; 
       
        #11 rst_n = 1'b0;
        #14 rst_n = 1'b1 ;
        

        #250 ; 
        $finish ;
    end

   

    // 50MHz clock
    always #10 clk = ~clk;

    always@( posedge clk or negedge rst_n )
    begin
        if( !rst_n )
        begin
            j <= 0 ; 
            in_valid <= 0 ; 
        end
        else 
        begin
            j = j + 1 ;
            if( j % 5 == 0 )
            begin
                j = 0 ; 
            end
            else 
            begin
                in_valid = 1 ; 
            end
        
        end
    end
    

endmodule
