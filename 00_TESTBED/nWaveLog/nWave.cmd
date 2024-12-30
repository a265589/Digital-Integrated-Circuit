wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/2024_Fall/icst_dic/icst_dic112/2024dicfinal/00_TESTBED/loop0.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/loop_tb"
wvGetSignalSetScope -win $_nWave1 "/loop_tb/u1"
wvGetSignalSetScope -win $_nWave1 "/loop_tb/u0"
wvGetSignalSetScope -win $_nWave1 "/loop_tb/u1"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/loop_tb/u1/clk} \
{/loop_tb/u1/in_valid} \
{/loop_tb/u1/partial_sum\[12:0\]} \
{/loop_tb/u1/result\[12:0\]} \
{/loop_tb/u1/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/loop_tb/u1/clk} \
{/loop_tb/u1/in_valid} \
{/loop_tb/u1/partial_sum\[12:0\]} \
{/loop_tb/u1/result\[12:0\]} \
{/loop_tb/u1/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1536 793
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 3727.468240 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 14999.691470 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
