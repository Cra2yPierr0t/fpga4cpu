module DMux32(in,sel,zero_load,at_load,v0_load,v1_load,a0_load,a1_load,a2_load,a3_load,t0_load,t1_load,t2_load,t3_load,t4_load,t5_load,t6_load,t7_load,s0_load,s1_load,s2_load,s3_load,s4_load,s5_load,s6_load,s7_load,t8_load,t9_load,k0_load,k1_load,gp_load,sp_load,fp_laod,ra_load);


input in;
input [4:0] sel;
output zero_load,at_load,v0_load,v1_load,a0_load,a1_load,a2_load,a3_load,t0_load,t1_load,t2_load,t3_load,t4_load,t5_load,t6_load,t7_load,s0_load,s1_load,s2_load,s3_load,s4_load,s5_load,s6_load,s7_load,t8_load,t9_load,k0_load,k1_load,gp_load,sp_load,fp_laod,ra_load;

assign zero_load = (sel == 5'b00000) ? in : 1'b0;
assign at_load = (sel == 5'b00001) ? in : 1'b0;
assign v0_load = (sel == 5'b00010) ? in : 1'b0;
assign v1_load = (sel == 5'b00011) ? in : 1'b0;
assign a0_load = (sel == 5'b00100) ? in : 1'b0;
assign a1_load = (sel == 5'b00101) ? in : 1'b0;
assign a2_load = (sel == 5'b00110) ? in : 1'b0;
assign a3_load = (sel == 5'b00111) ? in : 1'b0;
assign t0_load = (sel == 5'b01000) ? in : 1'b0;
assign t1_load = (sel == 5'b01001) ? in : 1'b0;
assign t2_load = (sel == 5'b01010) ? in : 1'b0;
assign t3_load = (sel == 5'b01011) ? in : 1'b0;
assign t4_load = (sel == 5'b01100) ? in : 1'b0;
assign t5_load = (sel == 5'b01101) ? in : 1'b0;
assign t6_load = (sel == 5'b01110) ? in : 1'b0;
assign t7_load = (sel == 5'b01111) ? in : 1'b0;
assign s0_load = (sel == 5'b10000) ? in : 1'b0;
assign s1_load = (sel == 5'b10001) ? in : 1'b0;
assign s2_load = (sel == 5'b10010) ? in : 1'b0;
assign s3_load = (sel == 5'b10011) ? in : 1'b0;
assign s4_load = (sel == 5'b10100) ? in : 1'b0;
assign s5_load = (sel == 5'b10101) ? in : 1'b0;
assign s6_load = (sel == 5'b10110) ? in : 1'b0;
assign s7_load = (sel == 5'b10111) ? in : 1'b0;
assign t8_load = (sel == 5'b11000) ? in : 1'b0;
assign t9_load = (sel == 5'b11001) ? in : 1'b0;
assign k0_load = (sel == 5'b11010) ? in : 1'b0;
assign k1_load = (sel == 5'b11011) ? in : 1'b0;
assign gt_load = (sel == 5'b11100) ? in : 1'b0;
assign sp_load = (sel == 5'b11101) ? in : 1'b0;
assign fp_load = (sel == 5'b11110) ? in : 1'b0;
assign ra_load = (sel == 5'b11111) ? in : 1'b0;
endmodule
