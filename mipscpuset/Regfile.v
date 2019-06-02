module Regfile(a1,a2,a3,wd3,we3,rd1,rd2,clock);
    input [4:0] a1,a2,a3;
    input [31:0] wd3;
    input we3,clock;
    wire zero_laod,at_load,v0_load,v1_load,a0_load,a1_load,a2_load,a3_load,t0_load,t1_load,t2_load,t3_load,t4_load,t5_load,t6_load,t7_load,s0_load,s1_load,s2_load,s3_load,s4_load,s5_load,s6_load.s7_load,t8_load,t9_load,k0_load,k1_load,gp_load,sp_load,fp_laod,ra_load;
    output [31:0] rd1,rd2;

    DMux32 DMux32(we3,a3,zero_laod,at_load,v0_load,v1_load,a0_load,a1_load,a2_load,a3_load,t0_load,t1_load,t2_load,t3_load,t4_load,t5_load,t6_load,t7_load,s0_load,s1_load,s2_load,s3_load,s4_load,s5_load,s6_load.s7_load,t8_load,t9_load,k0_load,k1_load,gp_load,sp_load,fp_laod,ra_load); 

    Register zero(wd3,zero_load,zero_out,clock);
    Register at(wd3,at_load,at_out,clock);
    Register v0(wd3,v0_load,v0_out,clock);
    Register v1(wd3,v1_load,v1_out,clock);
    Register a0(wd3,a0_load,a0_out,clock);
    Register a1(wd3,a1_load,a1_out,clock);
    Register a2(wd3,a2_load,a2_out,clock);
    Register a3(wd3,a3_load,a3_out,clock);
    Register t0(wd3,t0_load,t0_out,clock);
    Register t1(wd3,t1_load,t1_out,clock);
    Register t2(wd3,t2_load,t2_out,clock);
    Register t3(wd3,t3_load,t3_out,clock);
    Register t4(wd3,t4_load,t4_out,clock);
    Register t5(wd3,t5_load,t5_out,clock);
    Register t6(wd3,t6_load,t6_out,clock);
    Register t7(wd3,t7_load,t7_out,clock);
    Register s0(wd3,s0_load,s0_out,clock);
    Register s1(wd3,s1_load,s1_out,clock);
    Register s2(wd3,s2_load,s2_out,clock);
    Register s3(wd3,s3_load,s3_out,clock);
    Register s4(wd3,s4_load,s4_out,clock);
    Register s5(wd3,s5_load,s5_out,clock);
    Register s6(wd3,s6_load,s6_out,clock);
    Register s7(wd3,s7_load,s7_out,clock);
    Register t8(wd3,t8_load,t8_out,clock);
    Register t9(wd3,t9_load,t9_out,clock);
    Register k0(wd3,k0_load,k0_out,clock);
    Register k1(wd3,k1_load,k1_out,clock);
    Register gp(wd3,gp_load,gp_out,clock);
    Register sp(wd3,sp_load,sp_out,clock);
    Register fp(wd3,fp_load,fp_out,clock);
    Register ra(wd3,ra_load,ra_out,clock);

    assign rd1 = a1[4] ? (a1[3] ? (a1[2] ? (a1[1] ? (a1[0] ? ra_out : fp_out) 
                                                  : (a1[0] ? sp_out : gp_out)) 
                                         : (a1[1] ? (a1[0] ? k1_out : k0_out) 
                                                  : (a1[0] ? t9_out : t8_out))) 
                                : (a1[2] ? (a1[1] ? (a1[0] ? s7_out : s6_out) 
                                                  : (a1[0] ? s5_out : s4_out)) 
                                         : (a1[1] ? (a1[0] ? s3_out : s2_out) 
                                                  : (a1[0] ? s1_out : s0_out)))) 
                       : (a1[3] ? (a1[2] ? (a1[1] ? (a1[0] ? t7_out : t6_out) 
                                                  : (a1[0] ? t5_out : t4_out)) 
                                         : (a1[1] ? (a1[0] ? t3_out : t2_out) 
                                                  : (a1[0] ? t1_out : t0_out))) 
                                : (a1[2] ? (a1[1] ? (a1[0] ? a3_out : a2_out) 
                                                  : (a1[0] ? a1_out : a0_out)) 
                                         : (a1[1] ? (a1[0] ? v1_out : v0_out)) 
                                                  : (a1[0] ? at_out : zero_out)));


    assign rd2 = a2[4] ? (a2[3] ? (a2[2] ? (a2[1] ? (a2[0] ? ra_out : fp_out) 
                                                  : (a2[0] ? sp_out : gp_out)) 
                                         : (a2[1] ? (a2[0] ? k1_out : k0_out) 
                                                  : (a2[0] ? t9_out : t8_out))) 
                                : (a2[2] ? (a2[1] ? (a2[0] ? s7_out : s6_out) 
                                                  : (a2[0] ? s5_out : s4_out)) 
                                         : (a2[1] ? (a2[0] ? s3_out : s2_out) 
                                                  : (a2[0] ? s1_out : s0_out)))) 
                       : (a1[3] ? (a2[2] ? (a2[1] ? (a2[0] ? t7_out : t6_out) 
                                                  : (a2[0] ? t5_out : t4_out)) 
                                         : (a2[1] ? (a2[0] ? t3_out : t2_out) 
                                                  : (a2[0] ? t1_out : t0_out))) 
                                : (a2[2] ? (a2[1] ? (a2[0] ? a3_out : a2_out) 
                                                  : (a2[0] ? a1_out : a0_out)) 
                                         : (a2[1] ? (a2[0] ? v1_out : v0_out)) 
                                                  : (a2[0] ? at_out : zero_out)));
endmodule
