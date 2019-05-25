module Regfile(a1,a2,a3,wd3,we3,rd1,rd2,clock);
    input [4:0] a1,a2,a3;
    input [31:0] wd3;
    input we3,clock;
    output [31:0] rd1,rd2;

    Register zero();
    Register at();
    Register v0();
    Register v1();
    Register a0();
    Register a1();
    Register a2();
    Register a3();
    Register t0();
    Register t1();
    Register t2();
    Register t3();
    Register t4();
    Register t5();
    Register t6();
    Register t7();
    Register s0();
    Register s1();
    Register s2();
    Register s3();
    Register s4();
    Register s5();
    Register s6();
    Register s7();
    Register t8();
    Register t9();
    Register k0();
    Register k1();
    Register gp();
    Register sp();
    Register fp();
    Register ra();

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













