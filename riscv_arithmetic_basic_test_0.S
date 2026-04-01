.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 0
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

init_machine_mode:
                  li x21, 0x1c00
                  csrw 0x300, x21 # MSTATUS
                  li x21, 0x0
                  csrw 0x304, x21 # MIE
                  mret
init:             
                  li x0, 0x9
                  li x1, 0x7
                  li x2, 0x80000000
                  li x3, 0xfd02d109
                  li x4, 0xfd74afb5
                  li x5, 0x80000000
                  li x6, 0xff89a993
                  li x7, 0x7c5d88cb
                  li x8, 0x80000000
                  li x9, 0xe
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0xc7c65fd8
                  li x13, 0xf57e09b4
                  li x14, 0x2a449b9d
                  li x15, 0x0
                  li x16, 0xfab68bcc
                  li x17, 0x7
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0xfa0ba95b
                  li x22, 0xe
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xeb72edd7
                  li x27, 0x80000000
                  li x28, 0xf09c2698
                  li x30, 0x80000000
                  la x29, user_stack_end
main:             li         gp, 0x0 #start riscv_int_numeric_corner_stream_4
                  li         t3, 0x0
                  li         s11, 0x1
                  li         s10, 0x0
                  li         s9, 0x1
                  li         s8, 0x0
                  li         a5, 0x1
                  li         s0, 0x0
                  li         s3, 0x5c983d55
                  li         a0, 0x6771f3c4
                  addi        a2, s1, -682
                  lui         a5, 497758
                  addi        s5, s7, 644
                  addi        tp, ra, -398
                  add         a0, t0, s11
                  nop
                  nop
                  add         a2, s10, a7
                  lui         a3, 1020922
                  addi        zero, a1, 401
                  sub         s5, s5, s0
                  sub         t0, s10, a0
                  addi        a5, s5, 1079
                  addi        s3, a1, -110
                  lui         zero, 212930
                  lui         a7, 492702
                  add         t3, t4, s7
                  sub         s5, s11, s2
                  lui         zero, 752454
                  add         s6, ra, a0
                  addi        s6, tp, -1398
                  sub         s0, ra, t2
                  add         sp, s0, zero
                  add         gp, a4, a5
                  addi        a6, zero, 1614
                  addi        t2, s11, -1798
                  lui         s0, 903342
                  add         t3, t0, s1 #end riscv_int_numeric_corner_stream_4
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_15
                  li         s11, 0x1
                  li         s10, 0x78353f93
                  li         ra, 0x0
                  li         a5, 0xb3538f4
                  li         a0, 0x48e2a854
                  li         s0, 0x1
                  li         a4, 0x1
                  li         s8, 0x1a22ca8c
                  li         s9, 0x52ee92f1
                  nop
                  nop
                  nop
                  addi        s7, s11, 1212
                  sub         ra, t5, s2
                  lui         a6, 923893
                  sub         s9, t6, s2
                  sub         sp, t2, s5
                  add         a2, sp, s3
                  lui         s3, 735603
                  sub         a0, a5, s7
                  add         t1, a2, tp
                  addi        tp, t5, -1077
                  addi        s3, t0, -153
                  add         t1, s2, s7
                  add         s7, a3, t4
                  sub         s0, t5, ra
                  lui         s0, 239930
                  lui         s5, 563589
                  add         s11, t2, a7
                  addi        s3, t2, -1898
                  addi        ra, a1, -613
                  add         s9, s10, a4 #end riscv_int_numeric_corner_stream_15
                  li         s6, 0x5e1a65e5 #start riscv_int_numeric_corner_stream_8
                  li         t0, 0x1442840b
                  li         t3, 0x1561d4b6
                  li         s11, 0x1cc5c4d4
                  li         a1, 0x6a621a8f
                  li         s9, 0x861d022
                  li         a7, 0x0
                  li         t2, 0x5e6be9a
                  li         gp, 0x1
                  li         s3, 0x0
                  addi        tp, a3, 272
                  nop
                  addi        zero, s6, -342
                  add         gp, t6, t5
                  add         sp, a3, sp
                  lui         s11, 262050
                  sub         zero, a0, gp
                  sub         s8, t2, s6
                  nop
                  add         zero, a5, t6
                  sub         s7, s5, zero
                  sub         s5, sp, s6
                  add         s4, t1, tp
                  sub         t0, tp, t4
                  sub         a5, a7, t4
                  add         a4, a3, s2
                  lui         s9, 663960
                  sub         t0, t5, s8
                  sub         s9, s0, ra
                  lui         zero, 787741
                  sub         s3, a3, s3 #end riscv_int_numeric_corner_stream_8
                  li         s11, 0x1 #start riscv_int_numeric_corner_stream_3
                  li         sp, 0x1
                  li         s2, 0x56ab298e
                  li         a6, 0x1
                  li         a2, 0x7be2c7a6
                  li         a0, 0x0
                  li         t3, 0x23a819c0
                  li         s10, 0x1
                  li         t2, 0x0
                  li         s8, 0x0
                  nop
                  lui         t1, 1010834
                  addi        t3, s0, 255
                  nop
                  addi        t2, t4, 1319
                  sub         s2, s0, sp
                  addi        s1, a3, -1834
                  addi        gp, s5, -128
                  add         s0, t6, ra
                  nop
                  lui         tp, 712985
                  nop
                  addi        s9, a0, -1035
                  addi        sp, s8, 1994
                  nop
                  addi        s9, s1, 1064
                  sub         zero, s8, s4
                  lui         zero, 254291 #end riscv_int_numeric_corner_stream_3
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_12
                  li         s11, 0x1
                  li         s10, 0x50a6d02f
                  li         a1, 0x1
                  li         a0, 0x1
                  li         tp, 0x0
                  li         a6, 0x1
                  li         a3, 0x0
                  li         sp, 0x0
                  li         s8, 0x0
                  nop
                  sub         gp, s8, a5
                  add         t2, a7, ra
                  add         s7, s9, t6
                  addi        tp, s8, -1144
                  addi        s8, a4, -1256
                  add         zero, t1, a0
                  add         ra, s10, a3
                  sub         a3, t6, gp
                  addi        a0, s4, 525
                  nop
                  addi        t3, s5, 399
                  nop
                  sub         s9, s11, ra
                  lui         a4, 860595
                  lui         t0, 784538
                  nop
                  lui         a5, 442972
                  sub         a6, s2, t5
                  addi        zero, t6, 408
                  addi        t0, a4, -1472 #end riscv_int_numeric_corner_stream_12
                  li         t3, 0x306cf69c #start riscv_int_numeric_corner_stream_11
                  li         s11, 0x0
                  li         s10, 0x0
                  li         a2, 0x5ac70016
                  li         s8, 0x5e1e0704
                  li         s9, 0x0
                  li         s2, 0x1dc5555a
                  li         a7, 0x0
                  li         s5, 0x7ea85a4a
                  li         a6, 0x0
                  addi        s6, s5, -1354
                  add         s10, a5, t5
                  lui         s10, 363048
                  addi        s6, sp, -270
                  nop
                  nop
                  addi        a0, gp, 639
                  add         gp, a3, a7
                  addi        gp, tp, -67
                  sub         a7, tp, a3
                  nop
                  add         t0, sp, a3
                  add         a7, t3, a5
                  sub         s0, a7, t0
                  nop
                  sub         a2, t2, a4
                  sub         t2, t1, gp
                  nop
                  lui         s3, 288404
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_11
                  li         s6, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         s9, 0x0
                  li         t3, 0x0
                  li         s0, 0x0
                  li         s11, 0x207f0de0
                  li         s10, 0x0
                  li         s8, 0x1
                  li         a1, 0x0
                  li         s1, 0x1
                  li         a0, 0x0
                  nop
                  sub         t0, gp, a3
                  lui         zero, 815532
                  nop
                  lui         t3, 306572
                  sub         s5, t3, s10
                  sub         a6, s4, s10
                  sub         t2, zero, t0
                  addi        s2, sp, -1830
                  addi        a6, gp, -1577
                  add         s6, sp, s6
                  addi        s4, ra, 248
                  add         a4, t6, s11
                  lui         zero, 498847
                  nop
                  nop #end riscv_int_numeric_corner_stream_0
                  li         t3, 0x455f3495 #start riscv_int_numeric_corner_stream_1
                  li         s11, 0x0
                  li         s9, 0x0
                  li         t0, 0x1
                  li         s8, 0x0
                  li         gp, 0x0
                  li         s1, 0x0
                  li         s10, 0x0
                  li         a1, 0x0
                  li         s0, 0x0
                  add         t3, a4, s6
                  addi        t0, s0, 1495
                  addi        s1, a2, -1131
                  addi        zero, zero, -379
                  nop
                  lui         t3, 695772
                  add         s0, s5, s7
                  lui         s8, 107049
                  nop
                  nop
                  add         zero, tp, ra
                  sub         t3, sp, a0
                  nop
                  lui         s11, 138220
                  nop
                  lui         s10, 312397
                  add         s2, t0, t2 #end riscv_int_numeric_corner_stream_1
                  srai        zero, t5, 6
                  ori         gp, s0, -1160
                  addi        s4, gp, -1332
                  srl         gp, s11, s4
                  srl         s8, s7, sp
                  slt         ra, a3, t5
                  ori         a5, zero, 559
                  add         t1, s11, s2
                  xori        a1, s4, 456
                  auipc       zero, 394817
                  nop
                  slti        zero, s9, 829
                  and         s7, sp, t2
                  nop
                  xor         s5, s8, sp
                  srli        s0, s2, 2
                  lui         s4, 735748
                  or          a6, s7, ra
                  andi        t3, s5, -590
                  slt         s3, a3, s7
                  lui         t3, 99587
                  sll         a1, tp, a1
                  sltiu       a6, sp, -1658
                  ori         t1, s7, -1085
                  sra         s6, tp, a2
                  sltiu       gp, s10, -1416
                  srai        s6, s4, 6
                  auipc       s1, 550860
                  srl         s11, s5, a3
                  srli        t2, zero, 26
                  addi        t0, a6, 3
                  andi        s9, t4, 1995
                  ori         s2, ra, -399
                  sra         a3, a6, s2
                  xori        s2, s8, 1536
                  ori         s6, t3, 1900
                  sltu        t2, a7, t2
                  sll         a0, s10, s10
                  sra         tp, t0, s2
                  sra         s1, t4, a3
                  lui         ra, 221371
                  sra         s10, s5, s5
                  slti        gp, zero, 705
                  slti        a3, a0, 231
                  slli        s5, gp, 26
                  andi        a3, t0, 1959
                  slti        s1, s1, 1315
                  sll         s10, s2, a0
                  and         s6, s10, a1
                  sra         zero, a5, a5
                  lui         s0, 284234
                  sltiu       t3, s7, 1399
                  and         s5, s7, s1
                  xori        zero, t0, -1881
                  ori         zero, s6, 453
                  sltu        s4, s4, a5
                  and         s1, s11, t0
                  slt         a2, s0, s0
                  xori        a5, s0, 257
                  srl         zero, sp, s4
                  lui         a1, 15526
                  srai        a4, a6, 31
                  and         ra, a3, a4
                  srai        t0, s0, 15
                  sra         s9, a4, t0
                  or          a6, a5, a6
                  auipc       s11, 740300
                  sll         s11, s10, s4
                  addi        a0, s6, 99
                  srai        s9, a4, 1
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_5
                  li         s1, 0x0
                  li         s11, 0xcddce4
                  li         s10, 0x1
                  li         t2, 0x28165b0d
                  li         s9, 0x1
                  li         a1, 0x1
                  li         s5, 0x4dacca0a
                  li         gp, 0x38744963
                  li         s8, 0x0
                  addi        a5, s1, 1056
                  sub         s2, s3, a2
                  add         ra, a2, s6
                  lui         zero, 298876
                  add         a0, t3, s7
                  lui         a3, 1024453
                  nop
                  addi        s9, s4, -1495
                  nop
                  sub         t1, s11, s9
                  add         a0, s1, t1
                  lui         ra, 711079
                  nop
                  lui         s11, 915241
                  addi        a3, t6, -366
                  sub         s9, s1, a5
                  addi        a5, t0, 621
                  sub         a5, s2, ra
                  addi        s6, a4, -1187
                  nop
                  add         gp, a5, a1
                  lui         s7, 850779
                  addi        ra, t3, -1930
                  nop
                  lui         a1, 875784
                  addi        t3, t4, 1079
                  add         zero, a2, s10
                  addi        ra, sp, -995 #end riscv_int_numeric_corner_stream_5
                  sub         zero, sp, s6
                  sltiu       s6, s6, -903
                  xor         a0, s10, sp
                  slli        a2, a6, 11
                  sra         a7, t0, s11
                  sltiu       s2, s10, 25
                  sltu        s4, a3, s9
                  ori         zero, t3, 1912
                  sltu        zero, s5, gp
                  nop
                  sll         s6, s10, s11
                  auipc       a2, 566247
                  ori         zero, sp, -663
                  andi        a5, s5, 1015
                  sra         s4, a2, s6
                  xor         ra, t4, s6
                  sltiu       zero, a0, 1897
                  lui         zero, 326312
                  srli        a1, s2, 7
                  sltiu       s3, gp, -2012
                  xori        zero, sp, -384
                  srli        t3, a0, 27
                  auipc       s0, 840159
                  srl         a1, tp, a4
                  lui         s4, 814898
                  slli        zero, t2, 5
                  srai        s11, t1, 11
                  auipc       s2, 97540
                  add         sp, t4, a0
                  sub         s10, a2, s8
                  lui         zero, 312702
                  addi        s7, s6, 2005
                  xori        t2, s1, -1709
                  ori         a2, zero, -140
                  xor         t3, a1, s5
                  srl         a2, t1, gp
                  srai        a0, zero, 31
                  addi        zero, a3, 1806
                  xori        zero, t6, -240
                  sra         zero, s5, tp
                  auipc       a3, 896123
                  sub         ra, a7, ra
                  xor         a0, a7, s9
                  ori         s8, s0, 781
                  addi        a6, a1, 1156
                  andi        zero, t2, -516
                  andi        t3, s9, 1066
                  srli        s5, t0, 18
                  lui         s7, 790820
                  nop
                  sltu        a4, s1, a2
                  sll         s11, a5, t1
                  addi        a5, gp, -1690
                  auipc       s6, 800398
                  srl         zero, t1, a3
                  sltu        t0, s6, gp
                  lui         zero, 164953
                  xori        s9, s2, -1758
                  nop
                  xor         zero, s10, s6
                  xor         s8, s0, s0
                  andi        t0, t3, 941
                  sltiu       s9, s11, -692
                  xor         a7, t2, a0
                  srli        s0, t2, 27
                  sll         zero, t5, zero
                  sltu        zero, a1, s6
                  sll         zero, s10, ra
                  or          s4, s9, t2
                  lui         s10, 455142
                  slt         s5, a7, t0
                  sll         s2, s6, a6
                  sltu        a2, s6, ra
                  auipc       t2, 608657
                  andi        s2, a7, 200
                  slt         s3, gp, s4
                  sub         a4, s5, a0
                  and         s11, t5, s11
                  sltiu       a0, s2, 262
                  srai        s6, a7, 4
                  add         a4, a6, zero
                  srli        s3, t3, 24
                  sltiu       a0, a3, 1986
                  nop
                  srli        zero, t5, 29
                  srl         tp, s4, t3
                  and         s1, s8, gp
                  andi        a4, zero, 1679
                  slt         s6, a3, s4
                  sub         s8, s6, zero
                  slti        zero, ra, 1158
                  or          s4, s4, s9
                  srli        a3, ra, 12
                  sll         gp, s4, t6
                  sll         s11, s4, ra
                  sltu        ra, sp, tp
                  sll         zero, a3, gp
                  add         s2, a1, t5
                  sltu        s4, t4, s5
                  sll         a6, a3, a6
                  sltu        zero, a0, sp
                  sub         s3, gp, t3
                  xor         s2, sp, s8
                  slti        s10, t0, 705
                  add         s10, a2, t6
                  lui         a1, 352357
                  ori         sp, s8, 837
                  sltu        a2, a6, ra
                  sltiu       t3, s2, -1596
                  add         a7, t4, a2
                  slt         ra, s9, s5
                  and         a7, t1, ra
                  srli        s9, zero, 30
                  and         t3, s9, s10
                  andi        a3, s11, -1794
                  andi        ra, t0, -711
                  ori         s5, a4, -2026
                  nop
                  nop
                  lui         a4, 247133
                  and         gp, a2, s7
                  ori         a5, a3, 1803
                  srl         s11, a2, s4
                  or          s2, a0, t5
                  xori        t0, s3, 1820
                  srl         a1, t0, s6
                  or          s7, a2, s5
                  sra         s7, t4, a6
                  and         t2, a4, gp
                  xori        gp, t4, 796
                  and         t0, a6, t4
                  srai        a4, t5, 25
                  slti        a6, tp, 630
                  andi        a7, t5, 1003
                  slti        a0, s1, 924
                  or          s6, s7, s11
                  slti        a6, gp, -247
                  and         s0, a1, t3
                  slti        tp, s10, 573
                  srai        s6, a2, 31
                  add         a3, a1, a5
                  slti        a4, a7, 1169
                  xor         a4, zero, zero
                  slti        s10, a1, -1655
                  srl         a2, sp, t2
                  add         s2, t6, t0
                  sltu        tp, sp, t3
                  sltiu       t3, s1, -1184
                  sra         s0, a4, a1
                  or          s0, ra, s7
                  and         s4, s3, s0
                  srai        tp, ra, 13
                  slt         zero, a7, ra
                  srl         s9, s11, t2
                  slt         ra, a0, t0
                  ori         s1, s3, 908
                  slt         zero, s10, a3
                  lui         a2, 598162
                  xor         s4, t4, s0
                  add         ra, s11, s8
                  sltiu       a4, s9, 262
                  sra         a6, s3, t0
                  xori        gp, s1, -1629
                  add         s11, s5, a0
                  nop
                  sra         s2, a6, a5
                  xor         a3, t0, s2
                  sll         gp, gp, t2
                  sub         t1, ra, ra
                  sll         tp, tp, s0
                  andi        gp, a5, 1475
                  andi        s1, a7, -871
                  nop
                  and         ra, s3, s7
                  slti        s7, t0, -428
                  xori        s6, s8, 1338
                  andi        s6, t2, -196
                  sra         s8, a3, s5
                  sll         s9, zero, a4
                  sll         a2, s1, a7
                  sltiu       s5, s5, -787
                  srai        zero, a5, 26
                  xor         t1, s2, s1
                  sra         a4, a5, t5
                  srai        t3, s3, 6
                  srai        a0, s6, 20
                  sltu        s9, s5, a4
                  sltu        a5, zero, s6
                  sra         a1, s7, a0
                  sltu        s1, ra, gp
                  sltiu       t1, a1, 1963
                  lui         a5, 81001
                  nop
                  and         s6, gp, s7
                  and         s3, ra, ra
                  and         t1, s5, s1
                  slli        a4, a5, 10
                  auipc       s3, 77810
                  xor         a0, a2, s6
                  xori        t2, a7, -381
                  srai        s4, a6, 4
                  nop
                  srli        s5, a0, 21
                  xor         zero, t2, t6
                  addi        t2, s9, 1867
                  slli        s3, s3, 18
                  add         tp, t0, s0
                  sll         s8, a1, t0
                  sra         a1, s3, t1
                  or          zero, gp, s4
                  srai        s2, s0, 20
                  auipc       t0, 463834
                  nop
                  and         s6, t4, a5
                  sltu        s5, a6, a2
                  auipc       ra, 358775
                  lui         s11, 775486
                  add         sp, t5, s1
                  sltiu       a1, s6, 2023
                  lui         s2, 455600
                  srai        zero, gp, 30
                  srli        a3, s2, 28
                  nop
                  slli        a0, s2, 12
                  slti        s0, sp, -263
                  slti        a6, s5, 1597
                  auipc       zero, 263124
                  xor         a2, s4, a0
                  sub         s3, a6, a6
                  sltiu       a0, t4, 773
                  sll         a0, a3, ra
                  add         s11, a6, s4
                  addi        a4, s3, 612
                  slt         s5, s9, s0
                  srli        a0, s4, 30
                  sra         a4, s1, t3
                  sltu        s4, t0, a4
                  andi        s7, gp, 724
                  ori         s4, sp, -1307
                  sltu        s10, t6, a3
                  add         s3, t0, s10
                  addi        zero, s9, 1225
                  lui         a3, 277332
                  auipc       s7, 123856
                  srli        a6, t0, 4
                  andi        s1, s3, -1387
                  lui         s10, 936272
                  lui         t0, 627726
                  sltu        a1, t5, a0
                  sub         s1, a2, s5
                  sltiu       a5, s1, 1984
                  xor         zero, s6, s8
                  sll         s11, s0, a1
                  slt         s4, a6, a7
                  srl         s1, a4, s6
                  or          sp, s9, s5
                  slli        zero, t5, 9
                  nop
                  xori        s11, a3, 1092
                  sltu        gp, zero, t1
                  sltu        s3, s11, ra
                  sub         a2, a6, s8
                  andi        t2, s4, -1081
                  sll         s2, gp, t0
                  sltu        s9, s4, s3
                  srai        sp, a0, 9
                  add         s3, t2, s0
                  xori        s3, a4, 279
                  sll         t0, t4, t5
                  slti        s6, gp, -1804
                  nop
                  or          t0, t2, a0
                  slti        s10, a0, -146
                  ori         s1, s11, 467
                  sll         a0, s5, s9
                  sltu        s9, s10, s11
                  or          a1, s10, s2
                  lui         a4, 1024831
                  or          t2, a5, t1
                  sll         s2, s0, t2
                  nop
                  slti        a7, s6, -1876
                  slt         s7, t2, a3
                  sltiu       s5, s2, -1515
                  srai        a1, s0, 1
                  srai        a0, a7, 22
                  lui         a7, 635377
                  lui         zero, 708241
                  sra         a1, s6, gp
                  lui         s0, 264837
                  xori        s7, a6, 2038
                  nop
                  or          a5, s10, ra
                  sub         zero, zero, t6
                  slli        zero, s4, 31
                  or          sp, a7, t0
                  ori         s11, t5, 547
                  sltiu       s1, gp, -666
                  srai        t0, zero, 18
                  slli        a2, t0, 9
                  slt         t3, s4, s6
                  srli        a6, sp, 11
                  and         zero, s11, s4
                  slti        s5, t2, -101
                  sltiu       a3, s4, 939
                  srli        a3, s9, 21
                  slti        a0, s2, 55
                  srli        s10, t1, 27
                  slti        s2, s1, 1283
                  auipc       s4, 414629
                  slt         s10, s7, t0
                  add         sp, t5, s3
                  srai        a4, s0, 13
                  srl         s4, t6, t3
                  lui         ra, 712477
                  slt         s8, s0, s7
                  xori        s3, s7, -782
                  and         a1, a4, s4
                  xor         t3, a3, a5
                  or          a0, t1, a2
                  ori         s9, s10, -75
                  lui         a0, 514669
                  srli        s8, tp, 16
                  lui         a2, 539203
                  srl         s5, a4, t0
                  sra         zero, t0, s7
                  srai        a6, zero, 9
                  andi        s7, gp, -2047
                  slt         tp, sp, a5
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         a2, 0x0
                  li         s11, 0x0
                  li         s10, 0x0
                  li         s9, 0x0
                  li         s8, 0x1
                  li         a3, 0x6fc1e787
                  li         gp, 0x0
                  li         s3, 0x0
                  li         a7, 0x0
                  addi        t2, a5, -603
                  nop
                  addi        s1, t5, 1643
                  sub         zero, t1, s6
                  addi        a0, t3, -1559
                  sub         a6, a7, a6
                  add         a0, s11, s2
                  add         a4, s9, a3
                  lui         a0, 771798
                  addi        s3, t4, 1816
                  sub         a2, a1, s2
                  add         s5, t3, a2
                  lui         s5, 382031
                  lui         a7, 53982
                  addi        s2, s11, 314
                  nop
                  addi        s2, gp, -787
                  addi        s3, zero, 1174
                  addi        t1, a5, -1197 #end riscv_int_numeric_corner_stream_7
                  andi        a4, t0, -1291
                  lui         s0, 1043039
                  srli        a4, t2, 29
                  add         s5, s5, s1
                  lui         zero, 903269
                  lui         a6, 645601
                  xori        s7, s7, -1761
                  or          a1, s9, s1
                  srl         ra, tp, s5
                  sub         s11, gp, ra
                  slt         a1, s2, a2
                  and         s8, a6, t0
                  sltu        a4, t3, sp
                  addi        t3, s6, 1008
                  slti        s11, a2, -151
                  and         a0, zero, a2
                  sub         zero, a1, a3
                  nop
                  slt         ra, t1, t4
                  xor         gp, s3, t6
                  auipc       s4, 98957
                  slti        a2, s2, 526
                  srli        s3, a4, 30
                  lui         tp, 190299
                  slli        s9, t1, 1
                  sltu        ra, t5, sp
                  slti        a7, s9, -1159
                  auipc       a1, 407190
                  srai        a0, s9, 14
                  sra         s7, s3, s9
                  addi        a3, t2, 1937
                  nop
                  slti        s11, s5, -170
                  lui         s1, 870214
                  or          zero, t2, t4
                  slli        a5, gp, 25
                  slt         s5, gp, t0
                  slti        s6, a2, 1380
                  sltiu       s7, a5, 967
                  slli        a2, s5, 30
                  srli        a4, t5, 14
                  auipc       s6, 234110
                  sub         zero, s4, t6
                  sltu        s6, a2, s4
                  slti        gp, s2, 1138
                  slt         gp, t5, gp
                  add         s0, a2, a3
                  slli        zero, s9, 21
                  and         zero, gp, t4
                  auipc       zero, 654876
                  lui         a5, 119151
                  srai        ra, s5, 14
                  and         s8, a7, s11
                  sltu        zero, t4, s3
                  xori        s5, sp, 1137
                  slti        zero, a3, -523
                  auipc       sp, 929321
                  sll         s6, a4, s1
                  and         s5, s4, s7
                  sub         s9, a5, a4
                  or          s6, s4, s5
                  srl         t1, s8, a0
                  srli        t2, ra, 7
                  sra         tp, s2, ra
                  or          gp, tp, s8
                  addi        s8, tp, -1540
                  sltiu       s10, a0, 1465
                  nop
                  xori        a3, ra, 510
                  li         t3, 0xbe70d0b #start riscv_int_numeric_corner_stream_2
                  li         a2, 0x0
                  li         s11, 0x1365136
                  li         tp, 0x1
                  li         s5, 0x0
                  li         s10, 0x15a9f469
                  li         s9, 0x5a4e796d
                  li         gp, 0x49ab951b
                  li         s1, 0x3af0424b
                  li         s8, 0x0
                  addi        s3, s1, 870
                  nop
                  sub         ra, a7, s5
                  add         a2, s8, t1
                  lui         zero, 412104
                  nop
                  addi        tp, tp, 1605
                  lui         t3, 947889
                  lui         a1, 152281
                  nop
                  lui         a1, 693737
                  sub         t3, s0, a6
                  nop
                  addi        s5, zero, 519
                  sub         gp, a6, s0
                  nop
                  sub         t0, s6, s10
                  add         t1, s8, s6
                  nop
                  add         a2, a2, s8 #end riscv_int_numeric_corner_stream_2
                  srai        zero, a6, 20
                  lui         sp, 901717
                  lui         ra, 554515
                  sra         tp, a3, a5
                  xor         zero, t3, sp
                  sll         s10, t3, t1
                  or          tp, tp, gp
                  ori         a0, s5, -1226
                  sltu        a0, t2, a6
                  auipc       s5, 883816
                  andi        s11, a6, 1959
                  xor         gp, s11, s4
                  nop
                  auipc       ra, 872882
                  srl         a5, a5, a2
                  or          s6, s5, t1
                  sub         ra, a1, s11
                  auipc       gp, 712238
                  slti        t2, s6, -58
                  sub         a5, s2, t2
                  sub         zero, a3, s0
                  andi        t1, s9, -562
                  add         t0, a2, a3
                  srl         a0, a2, a4
                  sll         t3, sp, s1
                  sltu        zero, s7, a0
                  sll         a4, t3, a0
                  slli        gp, s1, 14
                  srl         zero, gp, t3
                  xori        ra, t4, -788
                  srli        zero, t3, 0
                  slti        s9, t6, 642
                  slti        t0, t4, 1645
                  slt         t1, s1, s7
                  slli        s1, a4, 5
                  srli        t1, a1, 0
                  sltiu       t0, ra, -1780
                  sltu        s1, t3, s10
                  addi        t0, s2, -1699
                  srl         s11, a0, s5
                  andi        tp, s2, 1910
                  slli        ra, s5, 9
                  sltiu       s6, a1, -990
                  slli        s11, t1, 29
                  srli        gp, a0, 12
                  sltiu       ra, t6, -1571
                  auipc       s1, 615501
                  add         s10, s9, t0
                  xor         a7, s9, t5
                  xori        tp, s11, -608
                  xor         zero, tp, a2
                  auipc       a5, 129167
                  add         zero, a3, zero
                  and         tp, zero, s8
                  srai        t0, s8, 16
                  addi        s5, t3, -168
                  addi        zero, a1, -1624
                  li         a4, 0x1 #start riscv_int_numeric_corner_stream_13
                  li         t3, 0x0
                  li         s11, 0x0
                  li         s10, 0x1
                  li         s9, 0x120854c9
                  li         ra, 0x0
                  li         a6, 0x0
                  li         t2, 0x71e36e79
                  li         s2, 0x1540a357
                  li         s1, 0x0
                  sub         zero, a5, t0
                  nop
                  nop
                  addi        ra, s7, -541
                  addi        a0, a3, 597
                  nop
                  add         sp, t1, zero
                  lui         zero, 962008
                  lui         a0, 189905
                  nop
                  nop
                  addi        t3, tp, 1261
                  sub         s0, a4, sp
                  addi        s1, s4, 1482
                  sub         s4, s6, a1
                  addi        s5, a4, -1315
                  nop
                  lui         a7, 28204
                  lui         zero, 332907
                  addi        s4, s1, 1295
                  nop
                  addi        a7, t3, 687
                  sub         zero, t0, a3
                  lui         s5, 17384
                  sub         sp, t0, t1
                  nop
                  nop
                  nop
                  lui         a3, 15461
                  nop #end riscv_int_numeric_corner_stream_13
                  and         s10, a6, s11
                  sltu        s2, a1, s7
                  slt         gp, tp, s2
                  addi        sp, s11, 448
                  xor         s9, t1, a4
                  nop
                  slli        t0, s5, 13
                  sltu        a0, s8, a7
                  xori        s6, s7, -588
                  and         s9, s2, s9
                  xor         s6, a3, s1
                  ori         s4, t5, 1007
                  addi        a7, t0, -1891
                  lui         ra, 35097
                  sll         s9, a1, t1
                  xori        zero, s11, 319
                  ori         s5, s7, 1972
                  add         zero, s3, a7
                  slli        s6, a7, 10
                  slt         zero, s9, sp
                  slti        t2, s6, 1254
                  srl         s11, t1, t3
                  xor         ra, ra, t4
                  ori         s8, a5, 482
                  srai        s9, a6, 10
                  sll         a7, s1, s9
                  sltiu       s7, ra, 592
                  srli        zero, t2, 9
                  nop
                  sll         gp, t0, sp
                  sltu        s4, t3, s2
                  srli        a2, t6, 3
                  xor         s7, sp, s11
                  sltu        s2, zero, gp
                  srai        s9, a1, 23
                  slt         s3, a6, s4
                  sltu        s8, t4, a4
                  sub         a4, s3, a1
                  sltu        a2, s10, tp
                  srai        a1, s3, 24
                  nop
                  nop
                  sltiu       s10, a3, -543
                  and         a5, t1, s5
                  add         s10, s4, t2
                  auipc       s2, 64242
                  ori         s8, s7, -1388
                  srai        a2, t1, 20
                  sltu        s9, s2, sp
                  nop
                  sll         t0, t6, a3
                  sltu        tp, s11, gp
                  or          zero, t0, a1
                  nop
                  slt         zero, t5, a2
                  lui         a2, 858411
                  sltiu       t3, a0, -1553
                  and         t1, a0, t4
                  sll         s7, s7, zero
                  add         zero, t5, a1
                  addi        s4, ra, 361
                  nop
                  sltiu       gp, a2, 146
                  nop
                  slti        a3, t6, -241
                  add         t0, t2, s9
                  xor         gp, sp, a1
                  srl         a2, t6, a0
                  sltiu       t3, zero, -52
                  sub         t0, s5, s10
                  ori         t1, t0, 960
                  sltiu       s8, sp, 522
                  ori         s0, a4, -595
                  sltu        s6, s2, s2
                  sll         a7, s1, a3
                  srai        a4, a1, 26
                  sll         s4, t3, t4
                  xori        tp, t5, -638
                  lui         a7, 315968
                  slti        s2, s5, -270
                  or          a7, a0, s8
                  slti        a7, sp, 604
                  srli        zero, s1, 17
                  ori         tp, s1, -1925
                  andi        t2, s10, -2042
                  nop
                  add         s8, s0, s0
                  and         a4, a0, a6
                  slli        a5, ra, 30
                  xori        s3, tp, 1939
                  sra         a7, s0, t6
                  auipc       t1, 227513
                  slli        zero, s2, 18
                  sltiu       zero, a7, 1963
                  slti        a7, s4, 1640
                  xori        s2, gp, -1058
                  or          t1, a2, a0
                  sltiu       s1, a7, -490
                  add         s5, t0, t5
                  or          s7, s5, a6
                  srai        zero, a7, 4
                  sub         s6, t3, s8
                  addi        s4, t4, 1944
                  xori        zero, s5, -1339
                  andi        zero, s7, 1482
                  sra         s1, t3, s9
                  sub         s1, a6, s1
                  srai        s1, s1, 11
                  xor         zero, s7, a1
                  and         zero, s4, s5
                  auipc       ra, 523648
                  sltu        t3, s6, sp
                  lui         s6, 376489
                  andi        a0, a0, -1076
                  sll         t2, a5, sp
                  lui         tp, 488929
                  addi        s9, a0, -1967
                  sltu        a1, t6, s7
                  xor         s7, gp, t1
                  nop
                  andi        s7, s9, 1115
                  slli        s8, s10, 12
                  xori        t0, s6, -2009
                  sltiu       s4, t1, -308
                  andi        t2, s2, 980
                  sub         s6, s0, s5
                  sub         a2, s1, ra
                  slli        a6, s5, 27
                  addi        zero, a4, 96
                  slli        a3, s11, 1
                  xori        t2, s3, 402
                  srai        s0, a6, 0
                  sltiu       t1, s10, 1671
                  srl         s7, tp, a1
                  sltiu       t3, a2, 298
                  slti        zero, t5, -1221
                  srli        a3, t0, 3
                  slti        sp, a6, 1861
                  sub         a1, zero, a4
                  or          t2, t3, t3
                  andi        a0, s10, -1881
                  srl         a7, a0, a2
                  sltu        a6, s7, s4
                  auipc       s9, 362324
                  add         t3, a0, t1
                  lui         s8, 817612
                  xori        a1, s7, 737
                  auipc       s1, 731482
                  xori        zero, s8, 1192
                  or          t2, s4, s5
                  auipc       s0, 280709
                  srl         zero, s3, zero
                  sltu        t2, zero, s1
                  sra         a3, a7, sp
                  sltiu       s3, t4, 1087
                  sra         t0, sp, s5
                  auipc       a3, 905285
                  auipc       s4, 803294
                  slti        s4, tp, -1988
                  sltiu       a0, s1, -302
                  xori        a7, s6, -425
                  and         a2, s2, a1
                  addi        a7, a4, 168
                  sltu        s5, s2, sp
                  slt         s1, ra, t3
                  srai        tp, a7, 26
                  sub         s10, s3, s8
                  andi        ra, a0, -479
                  srli        zero, s11, 10
                  auipc       t3, 239659
                  sub         s10, gp, s4
                  sltu        tp, s5, s1
                  add         t3, a6, sp
                  srl         sp, s4, a2
                  slli        s8, s6, 4
                  addi        gp, sp, -609
                  sltu        s2, t4, t6
                  add         s4, a4, t0
                  add         s7, a3, a6
                  srai        a3, a3, 24
                  nop
                  slli        zero, s0, 17
                  sltiu       a7, s11, 1250
                  sltu        zero, s3, s1
                  addi        t0, s5, -702
                  srl         s4, a1, s0
                  auipc       t0, 653937
                  slti        a3, ra, 939
                  andi        t2, sp, 1667
                  sll         a2, s4, a5
                  sra         zero, t3, a0
                  nop
                  nop
                  sub         s3, a4, s10
                  sltu        ra, a2, a1
                  lui         a0, 659123
                  xori        s11, s5, 626
                  xori        t0, a6, 230
                  or          zero, s8, t1
                  xor         tp, zero, a7
                  auipc       s5, 715708
                  slti        sp, t0, 1581
                  slti        s3, s10, -139
                  xori        a6, t3, -1785
                  or          s8, a3, t2
                  srai        zero, a5, 3
                  slli        a1, s6, 15
                  addi        zero, s2, -914
                  and         s7, a5, s2
                  xor         a7, s11, a3
                  sltiu       a5, tp, -1976
                  addi        ra, s11, -15
                  slt         s6, zero, s4
                  xori        a4, s11, 1047
                  sub         s9, t5, t4
                  srl         s11, t0, s4
                  sll         zero, a2, a1
                  xori        tp, t0, -776
                  nop
                  lui         t3, 665538
                  srai        ra, zero, 27
                  ori         a1, t1, -1167
                  sra         a0, sp, s7
                  sll         t2, s6, t4
                  slt         s10, s8, s4
                  nop
                  xor         s9, a6, s6
                  auipc       tp, 133231
                  slti        a6, t2, -897
                  sll         t0, t1, t2
                  srli        a0, s2, 1
                  and         gp, t5, s7
                  sra         s7, s7, s4
                  add         s5, a4, a1
                  auipc       zero, 848646
                  slti        zero, s9, 647
                  xor         gp, ra, a4
                  srai        a3, s1, 22
                  slt         zero, a1, s5
                  lui         a5, 463286
                  srli        zero, sp, 25
                  srli        s8, s3, 21
                  sltiu       gp, s3, -405
                  lui         t2, 218556
                  sll         t3, s1, t2
                  sll         sp, a1, ra
                  and         zero, gp, a2
                  sltu        s3, tp, s4
                  sra         tp, s2, s9
                  sll         a2, gp, s5
                  and         a1, t3, t4
                  sll         zero, t4, t0
                  xori        s3, a3, -843
                  nop
                  sll         a2, tp, a4
                  and         t0, t4, s2
                  slt         a5, a2, t5
                  lui         a7, 557709
                  add         zero, zero, ra
                  addi        s9, a7, 1393
                  ori         a1, a4, -1722
                  sra         t1, s0, s9
                  xor         t1, a4, sp
                  or          s7, t6, s7
                  slli        a6, t3, 16
                  xor         tp, a2, s1
                  nop
                  add         tp, s8, a2
                  srai        zero, s9, 12
                  slt         zero, a6, t6
                  sltu        t1, s5, a5
                  slt         s3, s4, s11
                  sll         zero, a5, s8
                  addi        a4, zero, -1338
                  srli        s6, a6, 26
                  srli        s8, s8, 26
                  xori        a2, a6, 1437
                  lui         s4, 886345
                  ori         a3, s8, -1149
                  ori         a2, t0, 898
                  sll         gp, s2, zero
                  add         s4, s7, t1
                  sub         a3, t6, t1
                  lui         s2, 502428
                  lui         sp, 345892
                  slti        zero, sp, -1754
                  xor         t0, sp, tp
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         s11, 0x1
                  li         s3, 0x0
                  li         s8, 0x1f6cc1ac
                  li         t2, 0x0
                  li         ra, 0x0
                  li         s1, 0x1
                  li         a7, 0x1
                  li         s10, 0x1
                  li         s9, 0x0
                  addi        s9, gp, -1292
                  add         zero, s2, a4
                  sub         s8, t4, t2
                  add         zero, t1, t1
                  sub         a0, s10, a0
                  sub         ra, t5, a7
                  lui         t2, 644046
                  sub         s7, a2, a0
                  sub         s0, s0, s2
                  sub         s2, s2, a7
                  lui         s9, 816349
                  nop
                  nop
                  add         tp, s2, a3
                  lui         s10, 121055
                  addi        s2, s10, 1131
                  sub         zero, t6, s5
                  lui         a6, 265906
                  sub         s3, s7, a7
                  sub         t3, a2, tp
                  nop
                  sub         s7, gp, a0
                  sub         gp, a5, s4
                  nop
                  add         s6, t1, t6
                  add         s4, a0, a4
                  addi        a2, a1, 289
                  sub         s8, a6, gp
                  sub         zero, t1, a4 #end riscv_int_numeric_corner_stream_6
                  sll         a0, tp, a6
                  ori         gp, t5, -1789
                  ori         a1, s4, -80
                  and         a0, a4, s5
                  xor         a0, s8, gp
                  nop
                  slt         t0, a0, s3
                  slt         t0, t1, a7
                  srai        zero, zero, 6
                  sra         t3, s3, a7
                  sub         s7, s2, s9
                  srli        s5, a1, 17
                  or          s5, a6, a6
                  srl         zero, a1, s11
                  nop
                  xori        t1, a3, 1277
                  slt         s0, s2, t0
                  slli        s2, gp, 5
                  slti        zero, t3, 1290
                  sra         s2, tp, a2
                  lui         zero, 820340
                  sltu        ra, a5, s8
                  andi        t3, s0, 1988
                  sub         s11, s1, a2
                  lui         s1, 580752
                  xori        zero, a6, -503
                  lui         gp, 863021
                  andi        tp, t5, 388
                  sra         a3, s3, s11
                  slli        a3, s10, 30
                  ori         s0, s11, -2019
                  addi        a1, s8, 1251
                  sra         a6, t2, s10
                  xori        s1, t2, -1155
                  slti        zero, s3, -1166
                  andi        sp, a6, 1533
                  sll         s2, s0, t6
                  addi        s9, s8, -1711
                  xor         t1, t5, s5
                  sra         zero, a6, a0
                  slli        s4, s3, 27
                  andi        a0, gp, -1267
                  slti        a3, t5, 1142
                  sub         ra, s1, a0
                  add         a2, a5, s4
                  ori         t3, s11, 1063
                  sltu        t2, s7, sp
                  and         a3, ra, s1
                  sltu        zero, a4, a1
                  slt         t2, s7, t5
                  sltu        s4, a7, t3
                  lui         s1, 778096
                  nop
                  slli        gp, t4, 28
                  sra         t1, ra, a3
                  srai        zero, a6, 13
                  slti        a6, sp, -2017
                  srai        t0, a3, 22
                  andi        s3, s11, 687
                  nop
                  lui         zero, 134816
                  addi        zero, s11, -1235
                  ori         t3, a3, -1587
                  srl         tp, t0, tp
                  ori         gp, gp, -1329
                  or          zero, a6, a1
                  slt         t3, t3, s3
                  sll         s8, a4, tp
                  srli        s4, s7, 13
                  srl         s6, s0, s11
                  sltu        a0, t2, a7
                  add         s7, a6, ra
                  slti        s4, t3, 1788
                  slti        a4, ra, 217
                  ori         zero, t5, -90
                  addi        tp, a7, -1921
                  xor         s8, s7, t0
                  srai        a0, a3, 20
                  nop
                  nop
                  srai        s3, a5, 12
                  add         a3, tp, ra
                  sltu        gp, t4, s0
                  addi        a3, s11, -1882
                  nop
                  srl         s8, s8, a6
                  sub         zero, sp, a1
                  lui         a4, 333432
                  srli        a3, s3, 30
                  srli        s11, s3, 19
                  slt         tp, s1, a6
                  andi        t2, s6, -1834
                  slti        s1, a5, 365
                  srai        t2, a7, 11
                  xor         s11, t6, zero
                  andi        a5, gp, 171
                  ori         s3, a0, -1696
                  addi        s0, a0, 1285
                  addi        gp, t1, -1193
                  xor         t1, a0, a3
                  andi        zero, sp, 607
                  or          s11, t4, ra
                  andi        s9, s2, -564
                  or          a4, gp, s3
                  auipc       s8, 227374
                  sltu        s2, t0, t2
                  or          s10, a3, t4
                  lui         s1, 104471
                  lui         zero, 257438
                  xor         a7, s9, sp
                  sll         s9, tp, tp
                  sll         s11, a0, s5
                  slti        gp, s10, 1818
                  addi        s1, a1, 855
                  slli        a4, s5, 16
                  auipc       zero, 664490
                  sll         s1, a5, t6
                  sltiu       gp, ra, -974
                  auipc       a1, 927838
                  or          a2, a3, tp
                  sltiu       gp, a0, 1823
                  xori        s11, a0, -2041
                  xori        a1, sp, 486
                  srl         zero, a7, s10
                  sltiu       s11, t1, -1807
                  ori         gp, s2, -64
                  xori        s1, sp, -332
                  or          a7, t1, s3
                  addi        s4, a5, -1757
                  and         s11, ra, a6
                  add         a3, a2, s3
                  sub         zero, t3, t0
                  nop
                  slti        zero, a3, -900
                  sltu        t2, a7, s10
                  sltiu       s1, a4, -1994
                  sub         zero, t2, s8
                  auipc       sp, 87342
                  and         s8, a7, tp
                  sltiu       s9, s8, 607
                  sll         tp, a3, t6
                  andi        a5, a7, -107
                  add         s7, s9, s4
                  sra         a0, a7, t4
                  andi        s5, s10, -687
                  sub         t0, t5, s3
                  sra         zero, s8, t4
                  slti        a2, t3, -1046
                  slti        gp, s10, -1954
                  slt         a7, t0, s5
                  slt         s8, a0, s3
                  sra         s11, s8, t6
                  srli        s2, s1, 12
                  andi        s6, s11, -1763
                  sltiu       zero, s4, -648
                  ori         a3, a7, -1857
                  xori        zero, ra, 489
                  slti        a4, tp, 439
                  sll         t1, s5, s0
                  addi        s11, a7, 1624
                  srai        a4, s0, 24
                  lui         zero, 31062
                  slti        a7, s3, -1379
                  sub         gp, s8, a4
                  slti        zero, s9, 826
                  slli        a2, t5, 15
                  sltiu       s9, s9, -1792
                  or          s10, a1, t3
                  addi        a1, a1, -593
                  lui         a1, 85326
                  and         s2, s9, sp
                  sra         t2, s5, t5
                  sltu        a0, a7, s9
                  lui         s3, 632819
                  or          a4, s10, a5
                  sub         a6, t2, s0
                  sll         s2, s5, t1
                  and         t1, zero, s5
                  sub         s5, s8, t1
                  add         zero, t6, s3
                  srl         a7, t5, a3
                  slt         t0, zero, zero
                  sltu        t0, a2, s3
                  sll         s3, t2, t4
                  xor         a1, s5, s0
                  sra         ra, s2, a6
                  add         a1, a6, s7
                  lui         s7, 1006991
                  sltu        tp, s6, t2
                  ori         s10, zero, -617
                  slti        zero, a7, -819
                  sll         s3, s9, zero
                  sub         s7, t4, sp
                  slti        ra, t0, -1722
                  addi        a6, t6, -721
                  sub         zero, a4, s6
                  slli        zero, s10, 9
                  srli        zero, s7, 11
                  lui         a0, 510704
                  sll         t1, tp, a7
                  slli        s5, a0, 2
                  slti        s0, t3, -467
                  sub         a5, s2, t4
                  auipc       a7, 68742
                  or          s1, a6, ra
                  auipc       s6, 811238
                  sltu        sp, t2, tp
                  xori        tp, s9, 764
                  and         s1, a3, t0
                  auipc       gp, 125270
                  sll         s4, a0, t5
                  or          s11, s10, s6
                  add         s1, s2, s10
                  srl         zero, a1, s7
                  andi        a0, s7, 368
                  or          t2, a2, s7
                  srai        s0, t5, 29
                  srai        zero, gp, 1
                  ori         s6, t3, -1109
                  slli        a1, t5, 11
                  andi        a2, s7, 1461
                  slti        a0, s10, 1827
                  sltu        ra, tp, a2
                  and         s6, ra, s8
                  sltu        gp, s5, t2
                  srli        s7, t1, 24
                  sra         s6, s10, ra
                  and         t0, s9, t6
                  nop
                  sll         tp, s2, a5
                  srli        t2, a3, 3
                  ori         s10, s2, -1445
                  sub         s10, a6, a4
                  auipc       a4, 747658
                  srl         a6, s4, s7
                  nop
                  sra         s6, s4, s10
                  xori        s0, s11, 1364
                  andi        a1, zero, -708
                  sll         ra, s4, a6
                  slli        s11, t3, 0
                  xor         s11, a2, s8
                  sll         s10, s2, a7
                  sltiu       a4, gp, -1171
                  auipc       s5, 730969
                  slt         a3, s11, t5
                  nop
                  sll         a1, t1, a0
                  sltu        s4, s1, ra
                  ori         a1, t2, -107
                  add         tp, tp, zero
                  or          s6, s9, a2
                  srai        s0, a4, 14
                  slli        t1, t6, 10
                  addi        s11, zero, -1389
                  xori        zero, a1, 345
                  and         s3, a4, s9
                  sra         s8, t0, s3
                  sltiu       t3, t4, 1374
                  slti        s2, a5, 965
                  srl         s7, t4, a2
                  add         zero, t4, zero
                  slti        s3, a0, -501
                  or          t0, tp, t1
                  srli        a7, a6, 25
                  sub         t0, a1, a1
                  srai        t0, s8, 27
                  slti        s9, a2, 1622
                  lui         s2, 346560
                  srl         a5, s1, s3
                  or          s11, s11, zero
                  xori        a6, s9, 1721
                  nop
                  srli        ra, a3, 25
                  sltiu       zero, s1, -845
                  lui         gp, 479865
                  add         s5, s3, a5
                  slli        s2, ra, 18
                  nop
                  sub         zero, a4, gp
                  or          s9, sp, t5
                  srli        s0, s7, 0
                  sub         s0, ra, t0
                  srl         gp, a5, t3
                  srai        s4, s8, 30
                  sub         s6, s2, s4
                  slli        s1, a2, 16
                  xori        a7, s0, -845
                  andi        zero, s7, -1585
                  xor         zero, s7, s7
                  srl         s1, t3, t3
                  auipc       a3, 361551
                  andi        a3, tp, 50
                  addi        t1, a6, 963
                  addi        zero, a3, 217
                  or          a6, t5, s4
                  addi        s7, tp, 1549
                  slt         s7, s7, a4
                  nop
                  addi        tp, ra, -111
                  sub         zero, gp, a0
                  and         s3, s10, t0
                  slt         a5, s5, t1
                  auipc       a3, 862773
                  slt         s2, sp, s2
                  auipc       s6, 144840
                  sltu        gp, tp, a1
                  and         s4, s10, s1
                  addi        s11, t4, -470
                  sll         zero, s0, ra
                  xori        a1, s2, -657
                  xor         sp, s7, t1
                  nop
                  xori        gp, ra, -1781
                  sub         t1, s10, s0
                  srli        zero, s0, 27
                  or          s6, s10, s1
                  add         a4, t0, a4
                  add         s2, s4, a3
                  sltiu       a5, a0, -904
                  andi        a7, s7, -1289
                  slti        a1, t2, -977
                  slti        s5, s1, 1285
                  sltu        t2, a6, s5
                  sll         s6, s3, s7
                  srli        s8, s8, 15
                  sll         t1, tp, a4
                  auipc       s10, 338414
                  auipc       s3, 482028
                  srl         a1, s7, t3
                  srli        a4, a2, 27
                  slti        tp, s3, -1016
                  lui         t1, 129460
                  sub         s5, a1, s8
                  xor         a0, t3, s10
                  sub         a1, s1, s9
                  slti        s1, tp, -1690
                  sra         s11, s4, a5
                  sub         a2, s4, a2
                  add         s3, t4, a0
                  sll         gp, tp, t4
                  slli        zero, s3, 28
                  sltiu       zero, a1, 1284
                  sra         s8, a1, a3
                  addi        s5, s9, 1613
                  add         s9, s6, ra
                  slli        zero, t5, 31
                  srli        s4, a3, 3
                  or          s1, tp, sp
                  xor         s2, a2, tp
                  xor         sp, a3, a2
                  sltu        s5, s2, t4
                  slt         a4, sp, s5
                  sub         zero, ra, s7
                  xori        s5, s10, 1917
                  srl         t3, a1, s2
                  auipc       s6, 454918
                  ori         a1, s6, 610
                  xor         s8, s2, s11
                  andi        a4, a5, -948
                  sltiu       s10, t6, -1032
                  sub         s2, s9, sp
                  slli        zero, t5, 31
                  xori        a6, t3, 1921
                  sll         ra, t5, s1
                  srli        zero, s10, 11
                  sub         a1, t2, zero
                  addi        s11, s3, -1210
                  slli        t1, s11, 12
                  andi        sp, s4, -1596
                  nop
                  sll         a4, a3, s3
                  sll         s1, gp, a5
                  nop
                  sub         zero, a2, s3
                  srli        s9, s6, 28
                  sub         t3, a4, a2
                  sub         a1, s0, s0
                  nop
                  add         a1, t5, t0
                  nop
                  srli        s1, s6, 24
                  sltiu       a0, s8, -894
                  sll         t1, a1, s2
                  slli        s7, t5, 17
                  sltiu       a3, a1, 904
                  ori         a6, s11, 1865
                  xori        zero, s2, 1276
                  xori        s1, s0, 1892
                  slt         t1, a4, s4
                  sll         s7, s3, a3
                  addi        a0, t5, 1745
                  nop
                  or          zero, t3, a0
                  sra         t0, s0, sp
                  srli        zero, s10, 20
                  sll         t0, t3, s0
                  add         sp, t6, s6
                  sltu        a0, s11, sp
                  slli        a3, s7, 31
                  lui         s1, 27586
                  srai        s5, s9, 9
                  andi        s6, a3, -1797
                  slti        t1, sp, -49
                  xori        s7, s4, -206
                  auipc       t2, 664092
                  slli        s9, t5, 22
                  xor         s7, s11, s4
                  ori         gp, a7, -851
                  nop
                  sltu        a1, a6, t1
                  sub         sp, s2, a4
                  xori        s5, s0, 1037
                  sub         s2, t6, t6
                  slli        s7, t5, 3
                  sll         tp, a0, s3
                  nop
                  sub         s10, a7, zero
                  slt         a2, t6, t5
                  slli        zero, a4, 21
                  andi        a0, a3, -1713
                  srl         s6, t6, s7
                  xori        a2, sp, 995
                  sra         a1, t6, s6
                  ori         s9, s11, 586
                  add         zero, s9, a7
                  auipc       s4, 933767
                  add         s1, s7, s9
                  auipc       s7, 1034999
                  sltiu       a3, t2, -1397
                  slti        sp, a2, -2039
                  or          s5, s11, a1
                  srli        a2, s9, 14
                  addi        t1, s5, 1968
                  auipc       s4, 619943
                  sub         zero, s4, gp
                  ori         s2, t0, 1329
                  or          s10, a0, gp
                  sub         tp, s0, s8
                  lui         s5, 746665
                  auipc       t1, 960607
                  srli        ra, a1, 0
                  sll         a0, a7, s1
                  addi        a6, a1, 1200
                  sltu        s8, s2, a6
                  sra         a0, gp, s7
                  xor         s11, s8, s0
                  addi        s11, t1, 1802
                  addi        a3, s3, -1219
                  sub         s11, t2, a4
                  slli        s3, s4, 8
                  auipc       t2, 596561
                  srli        s1, a0, 0
                  andi        s10, sp, -279
                  add         a4, s9, s8
                  srl         s2, s6, t3
                  srl         s9, t6, s6
                  addi        a3, s8, -359
                  andi        zero, sp, -115
                  xori        sp, t1, 1591
                  sra         zero, s7, a4
                  and         a6, t3, t0
                  sra         t0, a7, a3
                  xori        a1, ra, 1196
                  and         gp, zero, a7
                  slt         s11, a1, a1
                  sltu        t2, sp, ra
                  sub         sp, t4, t3
                  sltu        a2, s1, s2
                  sltiu       s0, t5, -1101
                  or          s9, a7, s6
                  slti        s4, s0, -384
                  lui         s8, 359305
                  addi        s10, s5, 1704
                  slli        a0, s11, 6
                  ori         ra, s1, -731
                  andi        a4, t6, -76
                  nop
                  nop
                  slti        zero, a1, -410
                  lui         a6, 449505
                  srli        s0, t4, 2
                  sub         s8, t4, s2
                  sub         a3, sp, s5
                  sltiu       s3, a0, 1164
                  or          s10, a4, a0
                  nop
                  xor         s3, t2, gp
                  xori        s0, a5, 1199
                  slli        ra, a4, 5
                  sltu        s1, t6, zero
                  xor         a0, t0, s8
                  andi        a6, s7, -898
                  nop
                  auipc       s2, 279258
                  srai        s3, s10, 13
                  srli        t3, t5, 25
                  nop
                  sub         t0, a3, s9
                  nop
                  slt         s5, s1, a3
                  sub         s3, zero, a5
                  sll         s3, s6, a2
                  srai        s7, s1, 11
                  auipc       t1, 869405
                  sub         gp, a3, a4
                  lui         a4, 42492
                  sll         zero, s10, s10
                  srli        t0, ra, 11
                  sra         t1, a5, s2
                  ori         zero, s7, 1541
                  add         s9, a2, gp
                  nop
                  sltu        a4, s4, s6
                  slli        t2, s3, 17
                  slt         t0, s11, t3
                  slti        zero, a5, 959
                  or          t1, a2, s11
                  xor         t3, s6, s3
                  and         s5, t0, a0
                  xor         sp, s6, s10
                  xori        s6, s7, 34
                  slli        zero, s0, 1
                  slt         ra, t3, t5
                  sll         s6, a6, s0
                  sll         t0, s9, a6
                  nop
                  srli        t3, a6, 9
                  nop
                  auipc       s5, 121891
                  sra         t0, t4, t3
                  or          t2, sp, s1
                  xori        s8, zero, -1438
                  sltiu       a5, t6, -921
                  slti        s2, a0, -1331
                  srli        a2, t5, 18
                  sltu        s7, t5, a2
                  ori         s1, tp, 405
                  xori        t1, s10, 1665
                  srli        t0, sp, 11
                  srai        s10, t0, 10
                  sltiu       zero, a6, -1229
                  or          s0, t5, s9
                  add         a7, s7, t3
                  srai        t1, a0, 11
                  sll         t1, s8, a2
                  lui         zero, 900194
                  sltiu       tp, a1, -1444
                  addi        a0, s7, -1876
                  xor         s4, zero, t0
                  nop
                  add         s0, s9, t2
                  auipc       s0, 363914
                  xor         a7, s2, sp
                  xori        zero, s6, 577
                  slti        s9, s2, 1214
                  and         s6, s0, ra
                  slt         zero, zero, t0
                  srli        a3, s11, 23
                  slli        s11, a4, 22
                  sltiu       ra, zero, 66
                  srai        zero, s5, 3
                  slti        t1, tp, 188
                  and         s0, s0, s10
                  ori         a0, tp, 236
                  sltu        ra, a3, s3
                  srli        t2, a4, 12
                  add         a6, s4, a6
                  add         s0, s10, a3
                  and         t1, s0, a3
                  sll         s11, s11, a2
                  nop
                  slt         s8, sp, zero
                  add         s8, s8, s5
                  andi        s3, s5, 467
                  add         s3, t2, s2
                  ori         s5, t0, 1824
                  or          t0, t2, tp
                  slli        ra, a5, 24
                  sub         a4, s0, a5
                  addi        ra, t3, 484
                  sltiu       a6, a3, 147
                  nop
                  add         t0, a3, t3
                  and         tp, s1, t1
                  slli        a0, a1, 2
                  or          s4, a0, t0
                  addi        s10, t3, 355
                  or          a6, t1, a3
                  lui         s0, 101366
                  srli        s1, s11, 4
                  slti        t3, s10, 1069
                  addi        a6, t4, 675
                  sra         a5, s8, tp
                  nop
                  add         zero, t6, zero
                  srl         s5, s8, s11
                  slt         s7, t0, s6
                  srl         zero, a3, t3
                  auipc       a4, 586310
                  andi        s8, s10, -959
                  slt         s2, zero, a0
                  sub         s10, t1, s6
                  slli        a7, t4, 10
                  sub         t3, t4, s10
                  sll         s6, s8, t0
                  ori         s8, t0, 1315
                  sll         t2, ra, s5
                  lui         t0, 489030
                  sltiu       s1, a3, -1201
                  add         s6, s7, s2
                  or          a7, a4, s4
                  lui         a2, 371415
                  slti        a5, gp, 2023
                  sll         zero, t5, a2
                  xori        s10, s3, 97
                  and         a5, a3, a7
                  sub         a1, a4, s8
                  or          sp, s4, a3
                  sra         gp, s1, a7
                  xor         gp, a1, sp
                  ori         s11, t1, 1413
                  slti        t2, s4, 1488
                  or          s7, a3, a0
                  xor         a6, a7, gp
                  or          a3, t3, tp
                  srli        s5, a3, 31
                  srai        t1, tp, 29
                  sltiu       a3, a4, -1186
                  sra         t1, t0, s9
                  slt         s0, s1, s8
                  sll         s11, s8, s9
                  add         zero, s10, a5
                  xor         a7, t5, s3
                  or          zero, sp, s5
                  nop
                  xor         a6, tp, t1
                  slli        s0, s11, 23
                  or          a3, s7, s2
                  ori         a2, t6, -1694
                  andi        s11, sp, -11
                  slli        s6, s3, 31
                  and         s11, t5, sp
                  lui         zero, 520137
                  srl         s9, s4, a4
                  sll         t2, s7, s5
                  slt         ra, a1, s10
                  sltu        zero, s0, s4
                  srl         t3, s0, gp
                  sltu        s1, ra, t5
                  sra         t0, t0, s0
                  slli        gp, s10, 1
                  auipc       a2, 187868
                  slt         s7, t0, s0
                  sub         s3, s4, t4
                  sra         s4, a4, a4
                  sltiu       zero, t2, -860
                  and         s10, t5, gp
                  or          a0, t0, zero
                  slli        t0, ra, 13
                  lui         gp, 194802
                  xori        a0, s6, 1074
                  andi        a4, s5, 1679
                  slt         s3, t4, a4
                  sub         s8, s2, t4
                  addi        t0, a0, -1248
                  sll         zero, s6, a4
                  ori         t1, zero, -1673
                  sltu        a0, s7, s9
                  and         t0, t5, a2
                  addi        tp, sp, -853
                  slli        s0, s2, 31
                  nop
                  srai        s5, sp, 1
                  srai        s4, t3, 6
                  sra         a1, zero, s3
                  andi        a3, ra, -678
                  slti        t2, s0, -1879
                  xor         t3, s11, s0
                  srli        ra, t5, 8
                  srli        t0, t4, 1
                  sra         ra, s3, zero
                  and         s6, t5, a0
                  srli        t2, a0, 14
                  sub         s7, tp, sp
                  xori        ra, s9, 236
                  addi        s0, zero, 1315
                  sub         ra, a2, gp
                  sll         a7, s9, s7
                  nop
                  srli        ra, s4, 20
                  slti        a6, s10, 1296
                  xori        zero, t4, 1187
                  sll         zero, a5, s2
                  sltiu       t2, ra, 473
                  sll         a6, t4, t1
                  sltu        t3, s3, s0
                  slti        zero, t4, -168
                  or          gp, t6, t0
                  slti        zero, a0, -720
                  sltu        a7, s8, t5
                  auipc       a6, 767830
                  sra         t0, zero, s6
                  slli        zero, a0, 7
                  sub         t0, s1, a1
                  sltu        zero, a6, s11
                  srai        t3, s1, 16
                  sra         t1, a1, zero
                  addi        a5, s11, 1316
                  sltiu       zero, s6, 1862
                  slti        a6, tp, 599
                  sub         zero, s5, s0
                  andi        zero, a3, 1905
                  sltu        a7, t3, s11
                  ori         a7, zero, -879
                  sra         s2, s3, s3
                  sra         zero, s0, a6
                  slti        zero, s6, 1960
                  lui         s7, 331545
                  lui         sp, 121254
                  sltu        s7, s0, a0
                  andi        s9, s1, 1336
                  sltu        t0, s4, s10
                  xor         a1, a4, s10
                  slt         s4, t3, a5
                  lui         t0, 160779
                  ori         s6, a7, 428
                  sra         s1, t2, s0
                  andi        t1, a3, 1473
                  srli        s4, ra, 6
                  slti        a2, s5, -887
                  slti        a3, t4, 1783
                  xor         a3, t2, t0
                  sltiu       s10, s4, -1840
                  add         a7, a2, s11
                  sltu        s8, t5, t5
                  and         a2, a1, t5
                  srl         s2, s6, t4
                  nop
                  sub         gp, a1, s6
                  sra         zero, s10, t1
                  or          s10, s1, t2
                  xor         s9, zero, s2
                  xor         t0, sp, a6
                  srli        zero, s6, 27
                  slti        a7, gp, 532
                  srai        zero, gp, 10
                  xor         ra, sp, t0
                  andi        a0, zero, 1578
                  sra         t0, ra, s9
                  addi        ra, s9, 697
                  srai        s0, s6, 19
                  slli        a2, a1, 30
                  add         s6, tp, gp
                  addi        a0, s0, 1666
                  add         sp, s9, tp
                  sll         ra, s2, a6
                  sll         s7, s5, gp
                  or          ra, zero, a0
                  slli        a5, s10, 22
                  sltu        a6, t5, s4
                  add         t1, zero, s11
                  sll         s5, a4, a1
                  slti        zero, t4, -1771
                  ori         a0, s2, -254
                  sub         t1, t2, s7
                  add         a7, ra, s1
                  sltiu       zero, s6, 212
                  andi        t1, s0, 2039
                  xor         s10, t0, s8
                  or          zero, tp, a5
                  slt         tp, a3, t2
                  auipc       gp, 448956
                  sra         a1, s11, a2
                  andi        s11, t5, 825
                  andi        t0, a5, 63
                  add         zero, t2, a6
                  slli        s6, ra, 26
                  srai        a4, a6, 6
                  srli        zero, a6, 2
                  ori         a4, s6, -727
                  nop
                  sll         s5, t4, s10
                  sltiu       a2, s4, -35
                  or          a7, s7, t2
                  and         s0, sp, s0
                  slti        a2, s4, -233
                  auipc       a7, 906935
                  add         a6, s7, a4
                  sra         a2, ra, t4
                  sltiu       s11, a5, 1477
                  sltiu       a4, t5, -291
                  sub         s9, a3, sp
                  srai        t1, a4, 23
                  srai        s4, t2, 30
                  srl         zero, s5, t1
                  srl         s6, a6, tp
                  xor         a3, a2, s5
                  ori         a6, s11, 1077
                  slt         s5, a6, a1
                  sltu        a4, t5, s6
                  slti        a4, s4, 1516
                  sltiu       s9, s7, 9
                  nop
                  or          zero, t1, tp
                  sll         t1, a2, s6
                  srai        s8, a3, 29
                  or          s8, s4, t6
                  slli        a3, s1, 0
                  srl         a7, s2, t0
                  xori        ra, s5, 1070
                  xori        s7, s5, -440
                  srl         t0, s6, t5
                  slti        s4, s7, -261
                  xor         s10, a7, t0
                  add         a0, t1, a2
                  addi        sp, s0, 896
                  lui         s10, 756491
                  ori         a0, sp, 1992
                  slt         zero, s0, a2
                  sub         s10, s10, s9
                  or          zero, s10, s10
                  ori         s6, s8, 602
                  and         a6, gp, gp
                  addi        s1, t3, -920
                  srai        sp, s4, 20
                  auipc       s2, 908000
                  auipc       a5, 971591
                  xori        s2, s8, -6
                  auipc       t3, 531127
                  add         sp, a2, t3
                  nop
                  auipc       zero, 168150
                  slti        s7, s1, -1089
                  sltu        s4, sp, a7
                  srli        a0, s8, 19
                  auipc       s4, 650975
                  srai        s8, a3, 29
                  srl         t2, a1, s11
                  slti        gp, a4, -791
                  srai        s8, a2, 11
                  auipc       t3, 110676
                  lui         s6, 157236
                  add         a2, a4, s4
                  addi        t1, t2, 621
                  sll         t2, s11, a3
                  ori         s6, s11, 1502
                  sra         ra, s10, s8
                  sub         t1, a6, t1
                  addi        a1, t6, -1752
                  srli        a0, t3, 4
                  nop
                  slti        a3, t4, -639
                  ori         a5, t5, -669
                  add         zero, a1, a6
                  sltu        a5, s5, t1
                  andi        a7, t5, -1590
                  auipc       zero, 910845
                  addi        s0, a1, -533
                  add         a7, s10, s11
                  srai        tp, a6, 17
                  slti        s2, zero, -918
                  srli        s10, gp, 7
                  sltiu       s3, ra, 657
                  nop
                  sltu        s9, t3, t5
                  slt         zero, a2, s8
                  auipc       a7, 889684
                  slt         s11, s5, s5
                  slt         s10, s2, t1
                  xori        s5, s9, -1010
                  auipc       zero, 920916
                  add         s7, a6, a3
                  sll         ra, s4, s8
                  or          ra, a2, s3
                  sub         zero, s10, t4
                  sll         t1, t0, s8
                  sub         s10, s11, zero
                  auipc       a5, 384577
                  and         s9, a1, a0
                  nop
                  nop
                  nop
                  sltu        s1, a2, a6
                  sra         s1, a5, t2
                  lui         t0, 348368
                  slt         s10, zero, t1
                  addi        t3, s4, -1563
                  slt         tp, a5, t4
                  xori        s8, tp, -1566
                  lui         s3, 755001
                  sra         s10, s1, s5
                  srli        a4, s9, 16
                  srli        s1, ra, 26
                  srai        s0, t5, 30
                  sra         s8, zero, a4
                  sll         s4, s4, a2
                  xor         zero, s10, a1
                  sll         s2, a0, s9
                  add         a7, zero, t6
                  auipc       s2, 915427
                  and         gp, tp, s3
                  sll         s4, s3, gp
                  sltiu       s2, s6, -1961
                  addi        sp, zero, 1276
                  and         zero, a5, gp
                  sltu        t3, a6, ra
                  srl         zero, a7, t1
                  andi        s8, a3, -1752
                  sll         s1, ra, s1
                  nop
                  sltu        s0, a1, s0
                  ori         s11, zero, 1479
                  ori         t3, t0, 44
                  xor         zero, s7, s5
                  and         s4, t3, a7
                  sra         t2, t0, s7
                  or          s7, t1, t6
                  add         s6, a2, s4
                  auipc       t0, 529295
                  or          a1, t5, t6
                  lui         a6, 93905
                  sll         ra, a4, sp
                  slti        tp, a0, 160
                  slli        s10, a0, 1
                  slt         a3, a5, a7
                  or          s4, t3, s3
                  srl         s11, s6, a0
                  sll         s10, s2, a4
                  srli        gp, a2, 3
                  sra         a0, s0, s10
                  srai        tp, tp, 5
                  slti        s10, s5, -1184
                  ori         s1, sp, -581
                  sub         s6, s6, s4
                  srli        a0, a3, 18
                  sltu        s7, a4, t5
                  auipc       ra, 848285
                  srl         a7, t1, a6
                  and         s6, zero, t0
                  xor         zero, sp, s0
                  sltiu       a6, ra, -1532
                  addi        a2, s10, -712
                  xor         t1, s5, t0
                  xori        s11, s2, 192
                  sltu        a0, zero, s2
                  sll         s4, s4, s2
                  ori         s3, s3, 1195
                  or          a7, t0, t0
                  xori        sp, a1, -604
                  auipc       t1, 447314
                  add         a4, t2, a1
                  slti        s2, s8, -910
                  sltu        a3, ra, a4
                  srai        t2, t5, 18
                  or          sp, s6, ra
                  sra         zero, a1, t6
                  slti        gp, ra, -1835
                  sll         a6, a1, s5
                  sra         a2, sp, t6
                  or          s10, a0, t4
                  xor         a6, t3, t5
                  addi        gp, s0, -326
                  nop
                  slti        s7, s11, -1944
                  andi        a0, a0, 1982
                  sll         a1, a7, gp
                  slli        s11, s0, 16
                  sltiu       tp, s10, -30
                  or          s8, s5, a0
                  sltiu       s3, a0, 1695
                  ori         s10, s11, -1525
                  srli        s2, s10, 8
                  sll         s11, s8, s7
                  sltu        s2, s2, s8
                  nop
                  ori         s5, s0, 953
                  auipc       s1, 397243
                  sltu        s8, s7, zero
                  lui         a0, 989375
                  slt         zero, s6, a1
                  andi        s6, t1, 458
                  sltu        t0, a1, t4
                  srai        a2, s5, 18
                  srl         s5, a2, t6
                  lui         s5, 167938
                  add         s5, s9, a0
                  add         t1, a1, zero
                  sltiu       zero, ra, 319
                  nop
                  or          s4, s6, s10
                  sll         s7, zero, t3
                  ori         a0, sp, -94
                  add         a1, a0, s3
                  nop
                  slti        s5, s2, -1486
                  xori        a7, a5, 962
                  nop
                  nop
                  lui         s2, 945653
                  or          a4, a6, s10
                  andi        sp, s5, -1659
                  lui         a2, 653806
                  sll         a2, t1, s10
                  srai        s2, s2, 8
                  slt         tp, s6, s8
                  li         s2, 0x136b28f8 #start riscv_int_numeric_corner_stream_10
                  li         t3, 0x1
                  li         s11, 0x3960657b
                  li         s10, 0x0
                  li         a0, 0x4250dadd
                  li         t0, 0x0
                  li         s9, 0x4a880b60
                  li         s5, 0x341de20f
                  li         s8, 0x6bd90fb6
                  li         s0, 0x0
                  sub         t2, a6, s0
                  sub         s5, zero, t0
                  addi        t3, t1, 833
                  nop
                  sub         a1, a1, a5
                  sub         s0, s2, t5
                  add         zero, t0, a1
                  add         s5, a7, s8
                  add         s6, t2, s2
                  add         s2, t5, a4
                  lui         s8, 918308
                  lui         s10, 716426
                  nop
                  sub         a3, zero, a5
                  addi        t1, s0, -1985
                  sub         a3, a6, a5
                  lui         s6, 854940
                  sub         sp, a1, t4 #end riscv_int_numeric_corner_stream_10
                  srli        s10, a4, 26
                  xor         s0, t5, s5
                  slt         t3, s7, s2
                  sltu        s9, s10, t3
                  slt         s0, ra, tp
                  sub         s11, sp, s0
                  sltiu       s3, s3, 1110
                  sub         s0, s5, t3
                  sra         s8, t4, s5
                  sra         s5, a1, gp
                  and         zero, t5, s5
                  lui         zero, 174883
                  sltu        a5, tp, t1
                  or          zero, sp, s10
                  add         s0, a0, t3
                  and         tp, a3, t0
                  sltu        a0, s10, t5
                  or          a4, s3, a0
                  lui         s7, 656933
                  sra         gp, s0, s11
                  sra         s5, a6, tp
                  sltu        sp, s5, s4
                  xor         zero, t1, a6
                  auipc       t1, 844129
                  auipc       s7, 491442
                  xor         zero, s2, t4
                  or          s7, s11, s9
                  slli        ra, t0, 28
                  srl         s6, a5, s7
                  lui         gp, 833394
                  srli        sp, a1, 14
                  slt         a6, s9, a1
                  srli        ra, t2, 7
                  or          gp, t3, sp
                  srl         s8, t0, ra
                  slti        s3, s3, -1353
                  ori         a1, a7, -995
                  slti        zero, gp, -1037
                  sll         a2, s2, t4
                  slli        s4, a5, 11
                  xori        zero, s5, 2026
                  sltu        t2, a1, s8
                  add         s11, a2, a4
                  lui         zero, 599439
                  or          a6, t1, t5
                  addi        zero, a7, 120
                  slti        s4, tp, -1233
                  slt         zero, s3, gp
                  sltu        a2, s6, a0
                  add         gp, s10, a5
                  slli        a5, s3, 9
                  srai        a5, tp, 28
                  sra         a3, t2, t5
                  sra         s4, s6, a5
                  xor         zero, a1, a7
                  and         zero, t4, s11
                  and         zero, s0, zero
                  nop
                  sub         s11, tp, sp
                  slli        s2, zero, 21
                  slli        ra, a6, 4
                  sltu        s1, t3, s9
                  sltu        t0, a7, t3
                  slt         s7, a4, sp
                  sltiu       zero, a2, -117
                  lui         s7, 274626
                  sll         s4, a6, a0
                  andi        a0, t5, -617
                  sltiu       t1, s3, 1405
                  xor         s3, tp, s9
                  sltiu       sp, a1, 1167
                  or          zero, a1, t4
                  sub         s4, s5, s11
                  addi        s6, tp, -20
                  sltiu       a0, a6, 1172
                  sra         ra, s3, a0
                  sltu        s9, s7, ra
                  srli        sp, s0, 11
                  xor         zero, a2, a7
                  andi        s5, ra, -2033
                  sltu        s0, t2, a0
                  xor         a6, s9, s4
                  ori         sp, t6, 335
                  addi        t3, tp, -223
                  sll         s2, a1, t0
                  srli        t2, a3, 8
                  srl         a2, s6, t5
                  lui         s4, 656730
                  srli        s6, s1, 5
                  slli        s9, s2, 15
                  srl         s10, a5, gp
                  srai        a1, t4, 13
                  sll         s7, s9, s3
                  addi        a2, ra, 1879
                  slt         s0, s4, t3
                  and         gp, s5, s2
                  nop
                  nop
                  nop
                  sltiu       gp, zero, 850
                  srai        tp, t0, 3
                  lui         t1, 379906
                  addi        s1, s10, 1735
                  xor         a3, s3, a6
                  slt         t1, s11, a0
                  addi        s9, t4, -620
                  srai        a3, a4, 1
                  lui         a0, 70542
                  add         s11, s1, s6
                  andi        s6, t1, 652
                  slli        gp, zero, 19
                  slli        t3, t4, 13
                  sra         s1, s3, a7
                  slti        a2, s0, -907
                  sltiu       sp, a5, 1998
                  srl         s1, s9, t2
                  and         gp, tp, s8
                  nop
                  srl         a5, s4, tp
                  srli        s3, a0, 10
                  ori         ra, a6, 1617
                  sll         s11, a6, s4
                  add         a1, s8, s9
                  add         ra, s11, t2
                  slli        ra, zero, 19
                  slli        s7, t2, 5
                  srai        a5, s9, 7
                  slt         zero, s2, s6
                  slti        a1, s7, 508
                  addi        s7, tp, -68
                  sll         zero, s9, a4
                  slti        a3, t6, -200
                  srli        s10, t6, 18
                  auipc       sp, 633301
                  srli        tp, s3, 25
                  ori         s2, t4, 1616
                  and         s5, sp, s6
                  slti        a3, t1, 1123
                  auipc       a7, 487687
                  and         s9, a2, s9
                  and         s0, sp, ra
                  sra         s1, s11, s5
                  addi        s6, t6, -943
                  nop
                  slli        s4, zero, 3
                  or          zero, s8, s9
                  andi        s0, a2, 1755
                  add         s10, s6, t1
                  xori        tp, t0, -1378
                  or          a1, t5, t6
                  andi        a0, s8, 785
                  slt         a4, a6, sp
                  sra         zero, t0, t3
                  or          a4, s7, a1
                  or          tp, t4, a7
                  xor         zero, sp, t1
                  slli        s2, s1, 5
                  nop
                  slli        s10, a2, 6
                  slli        s2, t4, 9
                  lui         a6, 343747
                  ori         a3, s5, 677
                  auipc       a1, 927059
                  sra         s9, t5, s7
                  auipc       s4, 17039
                  and         sp, s9, s1
                  slti        s4, gp, 1977
                  ori         zero, s0, 318
                  auipc       s0, 16250
                  sra         a6, s1, a6
                  auipc       zero, 959105
                  sltiu       a4, a6, 1794
                  xori        a5, s7, -281
                  addi        a2, t4, 269
                  addi        s11, s0, -1669
                  xori        ra, zero, -1050
                  sra         s3, s3, s3
                  andi        t1, a1, -233
                  nop
                  or          s1, a2, s10
                  slt         t2, s3, a0
                  addi        sp, s9, 97
                  add         s6, s9, a7
                  slt         zero, a2, gp
                  slli        s8, t6, 20
                  sub         zero, s11, tp
                  andi        a2, tp, 1777
                  and         s6, s7, a5
                  slli        s1, gp, 25
                  sub         a0, s11, s1
                  slt         s7, a0, ra
                  sltiu       s8, zero, -1982
                  andi        a6, sp, -625
                  nop
                  sltiu       s1, t4, 1027
                  sltu        s7, s3, t3
                  or          a7, a7, s10
                  add         sp, t0, s4
                  srli        s11, t3, 16
                  sra         s9, t2, a7
                  sll         sp, a7, s10
                  addi        zero, s7, 1860
                  sra         a7, t0, ra
                  and         s4, t3, s0
                  andi        s2, t4, -1923
                  srai        s0, a0, 19
                  srli        a7, zero, 12
                  slt         t1, gp, a1
                  slli        s1, t6, 6
                  slli        s2, t1, 6
                  add         zero, s2, sp
                  lui         sp, 148380
                  srai        zero, s9, 20
                  xori        s11, tp, 1452
                  add         a3, a1, a5
                  add         a4, s1, t0
                  sltu        s3, s5, sp
                  add         a4, a7, s8
                  lui         t1, 105537
                  sub         a1, a5, a0
                  lui         s7, 955108
                  and         t1, s6, s2
                  xor         t1, t2, sp
                  sltu        s7, s0, s8
                  srl         s5, a1, s11
                  xor         s3, sp, a0
                  sltiu       t3, a4, -742
                  xor         zero, tp, sp
                  lui         s1, 604737
                  sub         zero, t2, s3
                  slt         a5, t6, s4
                  andi        zero, s8, 730
                  and         zero, a0, s7
                  sltiu       t3, a0, 2044
                  srl         s5, t4, a3
                  sltiu       a6, a6, 728
                  srli        tp, s5, 2
                  andi        s1, s4, 788
                  addi        s1, t2, 618
                  sltu        ra, a6, s11
                  xor         s8, a5, t5
                  auipc       s6, 240450
                  andi        t1, t5, 506
                  srli        s7, zero, 31
                  sltu        a0, a0, s5
                  auipc       a1, 545443
                  slti        s6, a1, -56
                  or          a0, gp, s9
                  and         t1, a0, ra
                  xori        s5, s1, -1696
                  slli        t0, s9, 31
                  slli        t3, s6, 26
                  sra         a2, s10, t4
                  sltu        t1, a2, a1
                  and         zero, a0, a5
                  sltiu       a4, a7, 260
                  and         a5, t4, s8
                  or          zero, a6, s2
                  slt         s4, s7, t1
                  sub         sp, a3, t3
                  sll         a2, a7, s6
                  slt         s3, s2, a6
                  lui         a7, 380855
                  xori        s2, s8, 1924
                  xor         a3, t2, a7
                  andi        a1, s7, 1913
                  or          a6, s7, s5
                  xori        zero, a7, 145
                  slti        a0, s3, -719
                  slli        s1, s3, 19
                  sltiu       s11, s3, -200
                  xor         zero, sp, s5
                  sra         zero, s4, s5
                  sub         a2, s10, a3
                  srai        s1, ra, 3
                  auipc       s10, 379502
                  sra         a0, s11, s4
                  or          s0, t5, a1
                  andi        a5, ra, -1170
                  srai        s0, s5, 8
                  sra         s7, t4, a5
                  sra         s5, t5, t6
                  xori        sp, t0, -1077
                  sra         s1, t6, s9
                  srl         s8, t6, a2
                  add         a6, a3, ra
                  ori         t0, s4, 1668
                  lui         a0, 624115
                  slti        s11, s3, 303
                  srli        s5, gp, 9
                  srl         a3, s0, s4
                  addi        ra, s5, -1374
                  addi        s2, gp, -2038
                  slti        zero, s7, 307
                  addi        a1, s6, -435
                  add         zero, s7, t0
                  srl         zero, gp, s2
                  srl         t3, s7, s1
                  lui         zero, 888405
                  sltiu       t2, s5, 1524
                  lui         s8, 176069
                  nop
                  srli        sp, s10, 6
                  ori         zero, s5, 202
                  srl         s10, a6, sp
                  ori         a4, zero, -2004
                  srai        s3, t6, 10
                  addi        t2, s10, -1844
                  addi        s11, sp, 1654
                  slli        a2, tp, 30
                  sub         s4, s7, s7
                  slt         a3, s11, s10
                  addi        tp, ra, -1720
                  srli        gp, a1, 13
                  or          t0, a5, tp
                  add         zero, sp, s0
                  andi        s6, a5, -1687
                  slti        zero, a6, 1907
                  nop
                  xor         a2, t3, s0
                  slt         zero, a3, s8
                  sra         t1, s11, s3
                  slt         ra, t3, ra
                  sltu        a1, s9, s3
                  or          zero, a4, s2
                  sll         s3, a1, s2
                  srli        s0, t0, 30
                  or          gp, s1, t4
                  sra         a2, t6, t4
                  sltiu       zero, ra, 852
                  slti        t2, a7, 528
                  andi        t3, a2, 1774
                  sltiu       s11, t3, 387
                  xor         a6, s7, zero
                  add         gp, t0, gp
                  auipc       s8, 707555
                  addi        s7, a2, -1173
                  srai        a2, s10, 15
                  sll         zero, a5, s11
                  slti        s2, a1, -242
                  sltiu       s7, t3, -1305
                  lui         t2, 435709
                  xor         a3, s9, s5
                  sltiu       sp, t4, 287
                  nop
                  xori        s6, a1, 610
                  slti        s1, s8, 1828
                  srai        t0, zero, 20
                  slti        s9, a1, 1910
                  sltu        s7, a3, s8
                  sltiu       zero, s5, -1094
                  slt         a6, t1, tp
                  addi        zero, t2, 487
                  or          s9, gp, t2
                  xori        a2, ra, -1485
                  auipc       a5, 431036
                  srai        s6, s9, 8
                  and         gp, s1, sp
                  slli        s8, a5, 4
                  srl         sp, a4, s6
                  sltu        s0, s10, s5
                  xor         zero, t6, s9
                  sll         zero, t4, gp
                  srl         a2, gp, a6
                  srai        a3, s8, 25
                  srai        t1, zero, 31
                  nop
                  nop
                  xori        t0, a4, -1325
                  xori        s10, a6, 1370
                  slt         sp, t0, t0
                  sub         s8, t2, ra
                  xor         a6, s10, t6
                  sub         t3, a6, s10
                  sra         gp, zero, sp
                  xori        t3, s10, -231
                  srai        sp, t6, 20
                  sll         a4, t0, s1
                  slti        s10, ra, 108
                  slti        t0, t4, 1486
                  and         s2, t0, t4
                  addi        gp, a6, -1654
                  and         s7, s7, t5
                  lui         t2, 330956
                  nop
                  slti        zero, a2, 790
                  srl         s4, s2, a5
                  xor         zero, s5, a4
                  slti        s2, a0, 1640
                  lui         t2, 210643
                  sll         s5, s10, t1
                  sra         ra, gp, s4
                  nop
                  addi        a7, s3, 1516
                  ori         s1, t4, -1762
                  or          ra, ra, sp
                  sub         tp, s5, s9
                  or          ra, s3, s6
                  slli        a6, a3, 21
                  sub         s0, t5, s2
                  xor         a7, s3, s7
                  sltu        a1, gp, s2
                  xori        gp, a2, -1944
                  or          s3, t4, t4
                  and         s2, gp, t0
                  ori         tp, s1, -660
                  nop
                  sra         s7, s5, s9
                  lui         a1, 639282
                  slt         s10, ra, s7
                  or          a3, s8, s0
                  addi        a4, a0, -607
                  and         s8, a7, s1
                  sltu        t0, s9, a4
                  lui         ra, 821909
                  add         s2, ra, s6
                  srai        zero, t1, 14
                  srli        a1, a0, 14
                  and         zero, tp, s3
                  xori        s4, s4, 1502
                  slti        s1, a2, 212
                  add         s2, s1, s4
                  andi        a1, s2, -1827
                  slli        a7, t1, 2
                  sll         a7, a1, s6
                  srai        zero, sp, 20
                  srli        s5, a1, 24
                  slt         s3, s7, a2
                  srli        s0, s4, 23
                  add         s3, a4, s7
                  addi        zero, t3, 606
                  and         a6, t0, a4
                  nop
                  or          s1, t0, s3
                  li         s11, 0x1a7cacd6 #start riscv_int_numeric_corner_stream_9
                  li         s10, 0x1
                  li         s9, 0x0
                  li         a0, 0x0
                  li         s0, 0x0
                  li         t3, 0x0
                  li         t1, 0x1
                  li         s8, 0x26fe438
                  li         s1, 0x0
                  li         a1, 0x0
                  add         s11, s6, t1
                  addi        zero, s8, 1814
                  nop
                  nop
                  nop
                  add         s5, tp, s7
                  add         s3, t0, t6
                  add         s6, s1, s3
                  add         a3, s3, a1
                  lui         s3, 482504
                  nop
                  add         ra, t1, t2
                  add         a2, a7, t2
                  addi        t0, s8, -966
                  nop
                  add         s1, a2, sp
                  lui         tp, 1034768
                  nop
                  nop
                  nop
                  add         s3, a2, s11 #end riscv_int_numeric_corner_stream_9
                  ori         ra, s6, 552
                  srl         t1, a5, tp
                  xori        a1, sp, -18
                  sra         a0, a7, t5
                  or          a4, a2, s4
                  srai        t1, t3, 2
                  srai        t3, t1, 5
                  ori         s3, a4, -81
                  add         s10, s10, t0
                  xor         tp, s6, s4
                  sltu        s9, s11, a1
                  sll         a0, s0, s4
                  ori         a4, s2, -77
                  add         s4, a7, a0
                  sltu        s2, a1, a4
                  add         s1, ra, s7
                  sub         zero, t0, s3
                  slli        a0, zero, 18
                  auipc       zero, 660376
                  auipc       s7, 381250
                  lui         t0, 589955
                  sltiu       a7, s3, 1772
                  ori         s7, s10, 1965
                  or          zero, s6, ra
                  srli        s8, s2, 30
                  srli        s4, s9, 11
                  xori        sp, s4, -1182
                  sra         t2, a2, a0
                  sll         a2, a3, a2
                  xor         s9, a0, t5
                  sub         t3, s3, t5
                  srai        gp, s0, 25
                  slt         s0, a7, t2
                  srl         s7, a2, t0
                  sra         t1, a3, t0
                  sra         s6, t3, t0
                  or          s10, tp, s2
                  lui         t3, 235411
                  addi        a1, s3, 1332
                  sub         a4, tp, s4
                  lui         a5, 987402
                  sll         ra, a6, s0
                  sub         s0, t0, t1
                  srl         zero, tp, s11
                  slti        t0, s8, -1871
                  andi        a6, sp, -1145
                  srai        a6, gp, 30
                  nop
                  srli        s6, t0, 5
                  add         a1, s5, zero
                  lui         s3, 190515
                  slti        s3, s6, -715
                  lui         a7, 572827
                  add         a2, s9, s6
                  xori        s1, s8, -1413
                  xori        t1, s7, -1470
                  slti        a4, ra, -1706
                  addi        gp, s7, 663
                  ori         a5, s1, 1748
                  ori         sp, a5, 2033
                  and         a4, tp, s6
                  ori         zero, s10, -1866
                  sra         a7, s11, a1
                  sltu        s11, a5, s9
                  srli        a5, sp, 9
                  srl         t2, gp, s9
                  srl         a2, sp, s7
                  srl         zero, a3, tp
                  xor         s5, gp, s11
                  or          s0, a2, t0
                  sub         t1, s4, a0
                  and         s2, a6, a7
                  srai        zero, s0, 10
                  slt         a2, s0, s0
                  ori         t3, t2, 357
                  srl         s9, s3, s9
                  andi        gp, t4, -1661
                  xori        zero, sp, -1437
                  and         s4, s7, a6
                  sra         s0, s1, ra
                  sltiu       t2, zero, -1401
                  add         gp, s2, s7
                  slli        a4, s3, 0
                  sra         s6, a2, sp
                  sra         a4, s10, s7
                  ori         a5, t0, -25
                  sltiu       t0, s0, 1932
                  slt         s0, s2, a5
                  add         s9, s2, sp
                  andi        t2, a2, 1460
                  andi        a7, s7, 1434
                  ori         s0, a0, -526
                  slti        s4, s3, 123
                  xor         a2, s0, s9
                  srli        s1, s1, 18
                  slt         t3, t3, t1
                  slti        s1, a1, -1117
                  srai        a1, a2, 5
                  and         s4, s5, tp
                  auipc       t3, 290159
                  xori        t2, t1, -1485
                  and         s10, t0, a7
                  or          s4, s8, s2
                  addi        s0, t5, -1194
                  sltiu       t3, s10, -1041
                  addi        a0, t4, 1348
                  add         s7, zero, s1
                  nop
                  slti        sp, t5, 1508
                  nop
                  or          zero, t2, s4
                  srli        t3, t0, 10
                  slt         s5, a5, t1
                  auipc       s1, 523893
                  sltiu       a4, ra, -744
                  and         ra, s4, s9
                  and         s6, t4, tp
                  sll         s4, s2, a4
                  or          s2, sp, s10
                  sll         a4, s0, s7
                  addi        zero, t5, 792
                  xori        t0, t5, 611
                  srai        a0, t0, 22
                  xor         a0, s10, a3
                  sltu        s10, s8, s0
                  xor         zero, a4, t0
                  auipc       s6, 385010
                  addi        a7, t5, -1115
                  and         s6, s2, a6
                  sub         a0, t2, t1
                  or          s11, s6, s2
                  srai        s4, t0, 31
                  sub         zero, a1, s5
                  auipc       s8, 1043188
                  addi        s2, t3, 1999
                  andi        a4, s6, 223
                  sltiu       s7, ra, -423
                  andi        s1, a1, -1128
                  add         a4, s4, t4
                  slli        s11, s0, 0
                  xori        s9, a7, -1868
                  sltu        s6, t2, s4
                  slli        zero, a3, 13
                  add         t2, s2, a5
                  sra         a2, s5, a1
                  slli        zero, s4, 5
                  and         t3, t0, t3
                  srli        a6, s7, 29
                  auipc       s9, 743833
                  sll         s5, a2, a3
                  sub         a3, s8, t5
                  srl         a4, a6, a1
                  srli        s1, s5, 12
                  slti        t0, a0, -1482
                  sltiu       s8, s10, -198
                  sll         s5, sp, ra
                  xori        sp, s3, 748
                  and         a1, s7, s9
                  lui         gp, 420069
                  ori         zero, a4, 615
                  or          zero, s2, a2
                  xor         s2, a4, a3
                  lui         s2, 16358
                  lui         s4, 897533
                  xor         sp, s5, a5
                  or          ra, s3, tp
                  or          s9, s8, t2
                  and         sp, tp, a7
                  sll         s7, zero, ra
                  slli        a5, a2, 12
                  ori         s3, ra, 528
                  slt         s4, a4, s5
                  xori        s1, t2, 1401
                  lui         a6, 903500
                  and         s3, s11, a4
                  and         a0, tp, t3
                  auipc       ra, 585926
                  slli        s11, s5, 6
                  andi        s11, s0, -1112
                  auipc       tp, 47456
                  slti        s8, a5, -1388
                  nop
                  and         s10, tp, t5
                  srai        a6, tp, 7
                  add         s2, s7, ra
                  slli        s5, a7, 4
                  addi        a3, s5, 75
                  ori         s9, s1, 2020
                  lui         t1, 264206
                  and         sp, t1, t1
                  ori         s8, s9, -453
                  lui         zero, 830352
                  sra         s4, gp, a7
                  sltu        a4, gp, s11
                  slti        a3, sp, -255
                  sltu        s7, zero, s0
                  srl         gp, a4, t4
                  nop
                  sltu        t3, gp, a7
                  sub         a3, s1, zero
                  add         s2, sp, s10
                  lui         s0, 529003
                  sub         zero, a2, zero
                  xori        a5, t2, -354
                  auipc       zero, 1036488
                  nop
                  srai        s4, t5, 6
                  xor         gp, tp, t3
                  andi        t1, a6, -1250
                  srli        ra, tp, 1
                  srl         a1, s2, s8
                  and         a7, t5, s0
                  sra         a0, s11, a4
                  sltiu       s2, s7, 988
                  xor         s0, s5, t0
                  lui         zero, 336411
                  ori         a0, t2, 1031
                  sra         tp, s1, t3
                  and         sp, a0, s0
                  or          zero, t6, a0
                  sltu        a4, a6, s6
                  xor         t2, t4, a6
                  sll         t1, t1, s4
                  sra         s9, a7, t5
                  slt         a3, tp, sp
                  andi        a4, t0, 1128
                  xori        a1, t4, 164
                  slti        zero, a2, 241
                  slt         sp, s10, s7
                  sub         t2, zero, ra
                  sra         a4, a3, tp
                  addi        zero, s6, -1404
                  nop
                  nop
                  slti        zero, s4, -1857
                  ori         a5, gp, -1280
                  slt         a5, s10, s1
                  and         s9, a2, a3
                  sll         a2, t0, t5
                  or          s2, s3, a6
                  srli        s2, a4, 14
                  xori        zero, t1, -729
                  ori         zero, s10, 482
                  slli        zero, t2, 24
                  nop
                  slti        s5, t1, 1298
                  add         s7, t2, s11
                  srli        s0, t1, 6
                  srl         s0, a2, t6
                  andi        a7, a6, 1243
                  auipc       tp, 1018305
                  lui         s5, 220555
                  sltu        s5, a0, s9
                  nop
                  xor         sp, gp, s9
                  xori        zero, t3, -1258
                  lui         s7, 801361
                  slti        zero, s8, -584
                  auipc       a5, 424139
                  sltu        gp, t2, a2
                  sll         a0, t3, gp
                  xor         t1, a1, t1
                  slli        zero, sp, 11
                  andi        a0, s11, 1125
                  ori         ra, tp, 1506
                  sll         s6, s5, s6
                  and         t0, s9, t5
                  sra         s9, t6, s7
                  srli        s10, s7, 0
                  sltiu       sp, t5, -1801
                  and         zero, a7, s10
                  sll         a5, tp, zero
                  sll         zero, a0, tp
                  srl         t0, s9, s6
                  sll         s1, s7, s8
                  auipc       a6, 7004
                  sll         s11, ra, a4
                  ori         t1, a3, 906
                  sub         a2, t4, s6
                  and         s5, s1, s8
                  sub         s2, s5, t6
                  sltu        s2, a1, gp
                  sub         tp, s7, a7
                  addi        s6, s4, -1559
                  nop
                  srai        t0, a0, 24
                  sltiu       a6, zero, -489
                  or          a0, tp, t1
                  nop
                  xori        s2, sp, -114
                  or          a7, t2, a0
                  andi        a6, s10, -338
                  xori        a6, s4, -1975
                  or          s8, a5, s0
                  srli        s2, gp, 13
                  sltiu       zero, s1, -1259
                  lui         a5, 955121
                  lui         a3, 483784
                  sltiu       s5, ra, 1588
                  xor         s0, t3, s0
                  addi        t3, sp, 676
                  sll         s7, s0, t1
                  sra         a1, s2, s10
                  addi        a0, a3, 1637
                  auipc       s10, 779250
                  xori        t3, tp, 888
                  sltiu       s1, t3, -1771
                  add         tp, s4, a3
                  or          tp, sp, s6
                  add         sp, s2, zero
                  slt         zero, s3, a2
                  sltu        s7, t2, sp
                  ori         s6, s8, 1902
                  sll         s11, t5, t2
                  sra         s6, s1, t2
                  sltu        s4, s0, a7
                  srai        zero, s7, 30
                  andi        a0, a4, -275
                  sub         s7, a7, s2
                  and         a0, s8, t1
                  nop
                  srli        a3, gp, 2
                  xor         a3, t5, s3
                  sltiu       a7, a5, 116
                  srai        s4, a7, 7
                  sub         t2, t6, s10
                  sltu        gp, s5, s3
                  srai        zero, t1, 5
                  add         s0, zero, s5
                  or          sp, s6, s6
                  ori         s5, t5, 1433
                  andi        s1, s4, -1019
                  slt         zero, t0, a6
                  slt         s11, t4, s9
                  slti        t2, a0, -417
                  sll         zero, a6, t0
                  auipc       a3, 142000
                  slti        a4, gp, 1816
                  slti        s3, a1, -297
                  sltu        s5, t4, s4
                  ori         a3, s8, -263
                  slti        s4, a5, -527
                  sltu        s7, t2, s4
                  addi        s5, s3, -138
                  slti        a0, t6, 533
                  sll         s2, t6, t2
                  and         t2, s4, a2
                  sra         s1, a4, t2
                  lui         a0, 667849
                  xori        zero, a4, 1971
                  slti        tp, t5, -288
                  nop
                  auipc       gp, 606821
                  srli        s4, s1, 30
                  sra         a4, ra, t0
                  slti        a0, a0, 804
                  slti        t0, a3, 1590
                  sltiu       s6, a3, 249
                  xor         a2, s10, s8
                  ori         a0, s1, 1015
                  sltiu       s7, t0, 1526
                  slti        a7, tp, -1626
                  xor         t2, t3, a3
                  addi        s10, a7, 1776
                  slti        s2, a7, 834
                  or          s6, t0, s0
                  sra         s6, a4, s8
                  lui         a5, 474724
                  slt         s7, s8, s9
                  xor         s1, s3, s0
                  srl         s0, s3, s8
                  srl         a0, a7, tp
                  xor         zero, ra, s9
                  xor         s5, s2, t4
                  sub         s7, s3, ra
                  sll         a7, zero, t5
                  ori         t0, gp, 1384
                  sltiu       a1, t5, -1367
                  and         gp, zero, s2
                  or          s4, tp, a3
                  xor         tp, t1, t1
                  slli        t0, t2, 11
                  sll         s10, ra, t2
                  andi        s7, gp, -85
                  sll         a1, sp, s7
                  srl         a1, s6, a5
                  slli        gp, s11, 25
                  xor         a6, tp, a1
                  sltu        t2, zero, ra
                  sll         s0, a7, s4
                  or          a7, a0, s4
                  sltiu       s3, tp, -2019
                  slt         s11, zero, s10
                  nop
                  addi        a4, s4, 707
                  add         a5, a6, s5
                  sub         zero, s6, a3
                  srl         s11, a6, t3
                  srl         s4, a2, s7
                  sub         tp, a3, t2
                  xor         tp, s2, s0
                  sltiu       s5, ra, -919
                  srl         a0, a4, s3
                  srai        a4, s7, 9
                  srl         a2, a3, t2
                  slt         a6, a5, t1
                  or          s3, a0, t4
                  sltiu       s4, sp, -935
                  xor         t3, s8, s0
                  add         a5, s11, sp
                  slt         a6, s7, gp
                  sll         zero, t6, t2
                  sltiu       s11, s7, 1702
                  auipc       t2, 804748
                  addi        a2, sp, 1895
                  slli        tp, a1, 19
                  or          s0, s1, sp
                  xor         a2, s5, s1
                  slti        s2, s11, 571
                  and         t3, s11, t4
                  slli        zero, t5, 11
                  slti        s6, a0, -817
                  srai        a5, t3, 17
                  and         s9, t1, s8
                  add         gp, s9, sp
                  lui         a3, 660563
                  srai        a6, gp, 18
                  slli        t1, s11, 8
                  nop
                  srai        gp, sp, 8
                  xori        tp, t4, -1334
                  addi        a6, a2, 1535
                  srai        s11, ra, 23
                  nop
                  sub         s4, a1, s8
                  srl         s5, ra, s9
                  nop
                  or          a4, a5, sp
                  addi        sp, s4, 969
                  xori        s4, a7, -251
                  slti        zero, s2, 552
                  sra         a6, t3, a4
                  addi        s1, a2, 1877
                  slli        zero, s9, 16
                  xor         zero, t2, ra
                  andi        t1, a7, -693
                  sltiu       s9, a7, -94
                  srli        s7, s5, 26
                  auipc       a0, 458453
                  addi        a6, t0, -1870
                  sltiu       s1, gp, -1475
                  and         s7, gp, s11
                  xor         s10, t4, s0
                  lui         t1, 186750
                  lui         a2, 675287
                  xor         gp, s6, s6
                  xor         s4, t6, tp
                  addi        s1, tp, 1608
                  or          sp, s3, t4
                  slli        a1, a0, 2
                  srl         a5, s8, s3
                  srl         sp, s9, a6
                  xori        a1, ra, -974
                  addi        s11, s5, -1956
                  auipc       s7, 652953
                  srli        s11, t1, 31
                  srl         a2, t2, t2
                  or          ra, s9, t5
                  sltu        s2, s6, t4
                  srli        s10, t5, 26
                  srai        t2, a4, 19
                  ori         t1, s6, -568
                  nop
                  slli        t3, ra, 30
                  sub         a2, s10, s11
                  sll         s0, s1, t1
                  lui         a4, 351013
                  sltiu       ra, t5, -793
                  addi        a2, t0, 967
                  xor         a3, sp, t2
                  sra         ra, a4, a0
                  nop
                  addi        s11, sp, -266
                  xori        zero, tp, 963
                  or          zero, t1, a2
                  sltu        s9, t2, s1
                  lui         zero, 939444
                  xor         s4, s2, s2
                  srli        s8, gp, 20
                  nop
                  sll         s6, s5, t5
                  andi        t0, s10, 1063
                  addi        zero, s10, -1571
                  sub         sp, s6, sp
                  lui         zero, 218649
                  slt         s7, s10, a3
                  sltiu       a0, gp, -550
                  xori        zero, s1, 1898
                  sltu        s10, a3, a5
                  xori        s11, s7, 1726
                  srli        a7, s6, 12
                  ori         a1, s8, -361
                  sltiu       s5, s10, -1964
                  add         a6, zero, ra
                  sll         s9, s3, s9
                  slt         sp, a6, s4
                  sll         s9, a1, a6
                  slt         t3, t4, t6
                  or          s7, t4, s8
                  sltiu       s9, a2, -255
                  nop
                  lui         a4, 224056
                  sub         zero, sp, t4
                  slt         s8, s2, s10
                  slt         a3, s0, a0
                  auipc       sp, 196719
                  addi        ra, s6, -572
                  lui         a4, 163878
                  or          s5, ra, a5
                  auipc       zero, 312095
                  sltu        s10, s6, a1
                  and         a6, gp, s0
                  and         zero, s7, t4
                  slt         a1, t6, s10
                  auipc       s8, 244080
                  srli        a7, t0, 14
                  sll         zero, s4, a1
                  slti        t0, s9, -1408
                  lui         s0, 499018
                  andi        a4, a4, 1764
                  srli        t0, t5, 18
                  addi        ra, t4, -340
                  xor         zero, s3, t2
                  slti        s2, a0, -803
                  nop
                  addi        s10, zero, 643
                  srai        s8, t6, 25
                  slt         a2, a6, s3
                  sltu        s5, s5, t4
                  slli        s1, a0, 7
                  xori        a6, s7, -124
                  sub         zero, s10, t6
                  xori        t3, s4, -530
                  slli        s6, s3, 31
                  slt         a6, s3, t4
                  sll         zero, gp, sp
                  sll         gp, a7, s5
                  or          t0, s10, t4
                  srl         a5, sp, a1
                  and         t1, t5, a7
                  slti        ra, s5, -334
                  sub         s0, ra, a7
                  xori        zero, s3, 377
                  xori        zero, a4, -390
                  sll         s5, s0, s1
                  srai        a4, s3, 17
                  sltu        zero, s0, s11
                  and         s11, s4, s6
                  srl         s1, s5, gp
                  add         t0, a5, s9
                  addi        t2, t1, -1833
                  or          s0, t2, t2
                  srl         a2, gp, s8
                  sltu        t2, s0, t1
                  nop
                  andi        a6, s5, -1414
                  nop
                  srl         gp, t6, s4
                  srli        zero, gp, 9
                  xor         zero, t2, s10
                  andi        s2, zero, 739
                  xor         s6, s0, tp
                  sltu        a1, a2, gp
                  slli        ra, s4, 14
                  nop
                  xor         t2, a3, t6
                  nop
                  xor         zero, a0, ra
                  add         tp, a6, t0
                  nop
                  sltu        s9, s10, s2
                  slt         sp, t6, t6
                  xor         s3, t1, t2
                  sra         s5, t6, a1
                  srli        t0, s5, 4
                  xori        ra, a3, -341
                  sltiu       sp, t1, -1944
                  xor         s7, s8, t3
                  slt         zero, a4, t6
                  sub         s2, a2, t4
                  auipc       a7, 569806
                  slt         a3, t3, s8
                  and         t0, s3, t1
                  sll         zero, zero, zero
                  andi        a5, s9, -1741
                  srli        s6, s7, 7
                  andi        a7, s6, -1256
                  and         zero, t2, a7
                  slti        s0, a7, -1163
                  xor         a4, s2, s2
                  sll         s1, t3, t3
                  nop
                  sra         s3, t2, t4
                  slli        s4, s6, 23
                  sltiu       s1, a6, 1886
                  auipc       zero, 140913
                  slli        zero, a0, 30
                  srli        s5, t3, 13
                  sltu        s7, t5, t5
                  srl         s2, s2, t5
                  sub         t0, s7, a4
                  sltiu       a5, a4, -554
                  xori        tp, tp, -1312
                  and         a5, s7, ra
                  andi        a4, a3, 1426
                  xor         s3, a1, s3
                  add         s7, tp, a7
                  sltiu       s6, a1, 1856
                  ori         s8, gp, 932
                  srli        zero, s8, 30
                  and         t3, a7, tp
                  add         s7, s11, a6
                  sltu        t1, s10, ra
                  slt         t0, sp, s4
                  sra         ra, t1, a5
                  srl         s8, tp, zero
                  slli        s5, s6, 7
                  xori        s0, s0, -1027
                  sra         t0, t0, s5
                  slli        t2, s5, 30
                  or          s9, s5, t6
                  slti        t3, a3, -27
                  nop
                  sltu        a1, a2, a2
                  ori         zero, t6, -762
                  sra         s4, a4, s6
                  srli        sp, s4, 20
                  ori         s5, tp, 963
                  srai        zero, a5, 29
                  or          s8, s10, a7
                  sll         t0, t3, s10
                  srl         t1, s6, t1
                  add         a2, s5, t4
                  andi        t3, sp, -516
                  addi        zero, a3, -107
                  slli        zero, a6, 6
                  slli        a7, a5, 3
                  nop
                  sra         s5, a4, a6
                  sltiu       s10, s7, -548
                  srl         s8, s11, s0
                  sra         s2, s1, s11
                  sltu        s6, t4, t2
                  slli        zero, a5, 26
                  or          s10, s7, s11
                  sll         a3, a3, s2
                  sltu        s3, t0, a5
                  slli        s3, t1, 2
                  sub         s3, s2, a5
                  sll         t1, a1, t4
                  srli        a1, a1, 27
                  sra         zero, a6, s9
                  sub         s11, a0, t5
                  add         a3, s8, a4
                  slt         s3, s10, a5
                  addi        zero, ra, -1424
                  slti        t2, s8, 1579
                  srl         s5, s3, s10
                  addi        s10, s10, 100
                  and         a6, t2, a1
                  andi        a0, t2, 773
                  srli        s6, a2, 6
                  sub         a3, a4, a2
                  sltiu       t3, t6, -1581
                  srli        s8, s0, 21
                  andi        t3, t4, -695
                  sub         zero, tp, tp
                  srli        a0, a3, 27
                  xor         s6, a3, s8
                  or          a7, a1, a2
                  addi        a2, s6, -869
                  sltu        s10, s9, s5
                  auipc       gp, 441364
                  slli        gp, t1, 17
                  slli        s6, gp, 17
                  addi        a4, a2, 589
                  lui         t3, 1031570
                  srl         s3, s4, ra
                  or          t0, s4, s8
                  andi        ra, a3, 767
                  nop
                  slt         a3, s4, s2
                  lui         zero, 437694
                  slti        s4, t0, 364
                  srli        a1, s7, 1
                  xori        zero, t5, 536
                  andi        t2, a4, 1624
                  sltu        a1, a2, s1
                  ori         s1, s9, -1466
                  slti        gp, s1, -1748
                  ori         a4, a3, 1127
                  add         a4, s6, a4
                  lui         s9, 940626
                  lui         zero, 968656
                  ori         gp, s11, 13
                  slli        ra, s9, 14
                  slli        t0, t5, 2
                  srl         s5, a0, a0
                  sub         s6, t3, a2
                  sra         s2, s2, a4
                  slli        s10, ra, 3
                  sll         t3, s6, s1
                  ori         zero, t3, -1929
                  andi        a2, t1, -1985
                  slti        a0, a1, 654
                  xor         a2, t4, zero
                  slli        t3, s6, 4
                  sra         s3, a6, s0
                  lui         a2, 657308
                  srl         s10, s8, a6
                  slt         t3, s3, t5
                  addi        a6, a3, 223
                  srai        a3, ra, 19
                  xori        s4, a3, -1273
                  auipc       sp, 919765
                  or          s6, s2, s8
                  slt         t3, s1, t3
                  addi        a5, zero, -1650
                  sltu        s6, s8, gp
                  auipc       tp, 937070
                  lui         s11, 975464
                  addi        a1, t5, -962
                  ori         gp, a7, -1319
                  srl         s7, sp, t3
                  sltiu       sp, a1, -267
                  sltiu       s2, a4, -109
                  sub         zero, t3, a5
                  xori        t2, t0, -67
                  sub         s5, a7, s9
                  sub         sp, t2, a4
                  add         s8, gp, t4
                  or          t3, zero, s9
                  addi        ra, t3, 429
                  xor         a5, a7, s7
                  auipc       sp, 464245
                  slli        s5, s5, 18
                  srli        a3, s8, 4
                  add         s10, a6, a3
                  nop
                  nop
                  sll         s2, ra, s8
                  srai        a0, s9, 5
                  add         ra, ra, s1
                  slt         s11, s4, s9
                  xor         s4, s9, s9
                  sltu        s9, s10, t1
                  xor         a2, zero, zero
                  lui         s2, 648189
                  sub         tp, gp, t4
                  sltiu       zero, ra, 1186
                  slti        tp, s4, -1887
                  sltu        s6, s1, tp
                  add         zero, a0, s5
                  sltiu       s7, s4, 1400
                  sltu        a1, s0, t3
                  add         s3, t0, s5
                  nop
                  andi        a0, a4, 1009
                  sltiu       tp, a7, 951
                  addi        zero, a6, -1469
                  addi        a4, a4, -165
                  xori        s6, s10, 1863
                  xor         s6, t3, t0
                  or          t1, a4, s9
                  lui         tp, 747497
                  lui         zero, 396706
                  sltiu       s7, gp, 1558
                  andi        sp, a3, -970
                  xor         s7, t6, t0
                  srai        zero, s10, 19
                  sra         tp, a1, s0
                  sltu        t3, t1, s0
                  sll         t1, a0, s0
                  slti        tp, s2, 1158
                  add         t2, t2, a0
                  sltiu       zero, t6, 546
                  lui         zero, 569967
                  addi        s6, gp, -1912
                  lui         a3, 415891
                  sub         s4, t4, ra
                  add         s8, t1, gp
                  slt         s8, a4, t3
                  slti        tp, s10, 255
                  xori        t2, tp, -41
                  sll         a1, t5, a7
                  sra         zero, a0, s0
                  add         a1, s5, a4
                  srl         zero, s4, t1
                  srai        a5, t5, 31
                  ori         a3, s4, 1194
                  slt         gp, s2, tp
                  srai        s1, zero, 28
                  or          s4, s9, a6
                  slti        s5, gp, -681
                  xori        s0, s1, -676
                  addi        s4, a7, -1458
                  nop
                  or          zero, s6, t3
                  sltu        s11, t1, s11
                  srai        s10, a2, 17
                  sub         gp, s10, s3
                  sra         s1, gp, a7
                  sltiu       a4, t2, -768
                  add         a0, sp, s3
                  slli        a1, s2, 4
                  addi        t2, t1, -167
                  or          s1, t0, sp
                  srli        s2, ra, 19
                  or          s6, s3, s1
                  sltu        s10, t5, t4
                  srai        a4, s3, 13
                  nop
                  andi        zero, a0, -1967
                  andi        a0, s6, -1945
                  sll         s5, a4, s6
                  slli        a1, t3, 21
                  addi        s1, s10, -1496
                  srl         a4, s4, a7
                  or          s3, a1, s11
                  lui         t0, 935539
                  xor         s7, a7, s10
                  sll         s6, a2, t4
                  slli        t0, s7, 31
                  sltiu       zero, tp, 1036
                  sub         a4, a2, s3
                  srai        a7, s3, 23
                  srli        zero, t3, 28
                  auipc       a3, 23698
                  nop
                  ori         a6, tp, -1558
                  sub         t2, s2, a7
                  nop
                  add         t2, s3, s8
                  srl         s9, s6, a7
                  srl         a6, s2, t6
                  nop
                  sub         a0, t0, a2
                  lui         s0, 1008009
                  xor         zero, t0, a4
                  slti        s7, s3, -247
                  xor         a0, gp, t4
                  slli        zero, t6, 20
                  and         tp, t6, s2
                  sll         t3, s1, s8
                  ori         s2, s1, 474
                  or          ra, s5, s10
                  and         s10, s0, a3
                  xor         t1, s0, a6
                  xor         s10, s8, s3
                  slli        s0, t6, 16
                  srli        gp, s0, 9
                  xori        t0, gp, -444
                  srli        s0, s1, 23
                  srli        t0, tp, 25
                  xor         a5, s0, a0
                  andi        zero, a5, 897
                  lui         sp, 329375
                  slli        s1, s5, 11
                  lui         a2, 638673
                  sra         s10, s6, s10
                  srl         s1, t1, a0
                  srai        a0, a1, 11
                  sub         a1, s2, a3
                  auipc       a0, 349687
                  xori        s7, s2, 1536
                  xori        t1, gp, 209
                  slt         t2, sp, a0
                  sltu        s0, zero, t6
                  srai        t3, s6, 3
                  or          s7, s4, a2
                  and         ra, s10, s3
                  slti        s1, sp, -81
                  sll         s9, s1, a4
                  sltu        ra, t5, a7
                  and         s3, s1, s6
                  sltu        s11, s4, s11
                  sltu        tp, a1, zero
                  srl         s3, ra, t0
                  xori        a3, a1, 1242
                  xor         a3, s0, s4
                  slti        s6, t5, 1754
                  sll         s7, a5, s4
                  sltiu       a3, s11, 1475
                  srli        s1, sp, 20
                  sra         sp, a4, a2
                  slt         s6, t4, s8
                  ori         s7, t2, -1537
                  xori        s10, a1, 1185
                  and         a6, sp, t4
                  auipc       t2, 908477
                  srai        s7, t1, 14
                  add         a0, s10, a1
                  sub         ra, t6, s4
                  or          a6, t1, t3
                  add         t2, t4, gp
                  ori         t0, s5, 1132
                  slt         zero, tp, t5
                  sltiu       zero, sp, -136
                  sra         s10, a0, s7
                  andi        zero, s7, 1340
                  and         zero, s9, t2
                  srai        zero, t2, 2
                  or          s9, s3, t2
                  sltu        a5, sp, s2
                  xor         t3, s10, t1
                  srl         s7, t2, a3
                  ori         zero, zero, 2038
                  add         s5, s6, s10
                  srli        s5, a0, 7
                  srai        s8, s10, 14
                  sra         t0, s3, s9
                  slti        t3, a2, -1027
                  srl         a4, s10, a0
                  sra         s5, s6, s6
                  sub         a5, t0, a4
                  sltu        ra, s3, t1
                  nop
                  srli        t2, a3, 2
                  slli        a2, s9, 11
                  andi        a3, a5, -520
                  andi        zero, s10, 1740
                  srli        s0, t0, 18
                  xori        a3, ra, -1388
                  sll         s11, s3, s1
                  addi        s3, s5, -1091
                  sra         s8, s9, t0
                  ori         gp, s4, -474
                  andi        s0, t0, 1485
                  xori        s0, t0, 72
                  sub         s8, t0, s6
                  srli        s6, t1, 10
                  sll         t2, s0, s7
                  xori        s0, s11, -1565
                  sltu        a5, t2, t1
                  sub         a0, s10, zero
                  and         s3, t2, sp
                  srli        a3, s10, 27
                  sub         sp, t2, a0
                  sltu        zero, t5, a6
                  and         t1, a4, s1
                  srai        zero, a2, 30
                  auipc       zero, 789764
                  sltu        a6, a5, s7
                  add         t2, s0, t1
                  or          s3, s11, t5
                  srai        a7, s7, 13
                  sra         tp, s5, sp
                  sub         zero, a2, a0
                  slti        sp, gp, 156
                  add         a0, s5, t0
                  auipc       zero, 956770
                  sub         s7, ra, t3
                  slli        s10, s11, 30
                  xor         a3, t1, t1
                  sll         s2, a1, s7
                  xori        s5, s6, -1678
                  slt         t3, gp, s0
                  sub         a2, a1, s3
                  addi        t3, s3, 521
                  lui         zero, 656197
                  srl         s6, zero, t6
                  and         sp, s1, tp
                  addi        s6, a7, -370
                  sra         a2, t0, a3
                  sub         a7, s5, a6
                  sub         s0, s5, t5
                  lui         s3, 447778
                  srl         s8, a7, a2
                  ori         zero, a1, -1722
                  srl         zero, ra, zero
                  sltu        t1, t3, s8
                  ori         a3, tp, -463
                  srl         s4, t0, a5
                  srai        s1, s5, 1
                  srai        s10, zero, 13
                  xor         a7, s8, a5
                  srai        zero, a7, 26
                  xor         a2, s1, tp
                  slti        s8, sp, -1071
                  srli        t3, sp, 7
                  ori         a4, sp, 248
                  addi        a4, a0, -548
                  sra         a5, t0, t1
                  xori        s2, t3, -2021
                  xor         t2, ra, s11
                  srli        s4, a2, 30
                  or          a3, tp, sp
                  sltu        t2, a6, tp
                  addi        zero, t2, -1493
                  xor         s1, s1, s8
                  and         a2, t4, s11
                  xori        zero, t3, 1399
                  sltu        zero, s3, a0
                  or          t2, a3, t1
                  srai        s1, s7, 14
                  sub         s8, s4, t3
                  slt         s7, ra, s8
                  sub         a7, s5, a0
                  and         s7, t3, tp
                  slti        a7, a1, 1984
                  sltiu       s5, t6, -1341
                  ori         s2, t5, 752
                  srli        t2, s9, 4
                  lui         t1, 13742
                  srai        zero, t2, 22
                  sub         s1, gp, a6
                  sub         zero, s11, s4
                  or          zero, a3, a5
                  slti        s2, a7, 1550
                  nop
                  xor         s1, a1, s0
                  sub         t2, s1, a6
                  slli        s10, t2, 2
                  nop
                  auipc       sp, 380322
                  auipc       sp, 178597
                  nop
                  ori         a6, a6, 778
                  sltu        s8, t3, s4
                  xor         s7, t5, s2
                  sltiu       a7, t4, 936
                  or          s7, a6, a2
                  sltiu       s0, s0, -848
                  xori        a2, t1, 167
                  lui         tp, 74141
                  addi        s7, t4, -577
                  srai        a0, s9, 9
                  sll         t3, a5, t2
                  srli        s7, s4, 21
                  srai        a7, t2, 25
                  sub         s7, s8, t3
                  sll         s8, t1, s5
                  sltiu       a3, s11, -93
                  sub         a3, zero, s10
                  slli        tp, t1, 5
                  sltu        ra, a3, t5
                  ori         t0, s11, 1642
                  nop
                  slti        s8, s5, 1983
                  srl         a3, t6, t0
                  addi        a5, a7, -80
                  slli        s9, a0, 9
                  sll         s6, s2, t4
                  auipc       ra, 59174
                  add         s10, s5, tp
                  xori        ra, t0, -1878
                  slt         zero, t1, a0
                  nop
                  auipc       s5, 704924
                  auipc       s8, 449167
                  srl         tp, a6, a1
                  add         t3, a4, ra
                  srli        tp, s4, 16
                  sll         s2, a5, s3
                  srli        s0, a6, 1
                  srli        t3, s2, 23
                  xori        zero, t0, -788
                  ori         a3, sp, -1274
                  sltu        a6, s9, a7
                  sub         zero, t6, t0
                  xor         a4, sp, s10
                  srai        a4, ra, 20
                  srai        a6, s11, 18
                  slt         a0, s9, s3
                  slli        s3, a2, 18
                  slti        s6, t3, -1517
                  sltiu       s11, a5, 66
                  slt         s6, a3, s8
                  sltiu       zero, s5, -363
                  sltu        s5, s9, ra
                  srai        zero, a5, 26
                  and         zero, t0, s0
                  slt         zero, s2, a4
                  sub         a5, a0, a3
                  slli        zero, ra, 5
                  xori        a4, s11, -813
                  sra         s8, a5, t6
                  xori        zero, a2, -174
                  srl         t1, s1, t5
                  nop
                  slt         a5, s4, a3
                  sll         t1, t1, a4
                  nop
                  srai        a2, t3, 28
                  slti        t1, t3, 397
                  auipc       s1, 374330
                  srli        zero, t0, 17
                  slli        zero, zero, 28
                  add         s0, sp, t6
                  or          a6, ra, s11
                  lui         zero, 413661
                  slli        s0, a0, 5
                  auipc       s9, 970062
                  xor         t3, s1, t0
                  or          s3, t3, t1
                  srai        a7, s10, 29
                  or          s2, s9, s8
                  sub         s7, t5, t6
                  slti        s7, s9, 1635
                  srl         s2, a1, tp
                  xori        s5, s11, 1044
                  sll         a1, s10, s7
                  srai        s3, t0, 18
                  andi        s0, tp, 177
                  xor         zero, a5, s3
                  sltiu       a7, s4, -1177
                  nop
                  slt         t0, s3, s3
                  sub         s5, s0, a1
                  srli        s9, s7, 17
                  andi        s4, a4, -555
                  lui         gp, 440380
                  sltiu       ra, s8, -351
                  slli        s3, s1, 22
                  addi        s5, s2, -666
                  sll         s7, s9, s8
                  auipc       zero, 46911
                  srli        a5, a7, 28
                  add         s0, a5, s6
                  sltu        a1, t5, s1
                  sra         s2, gp, s5
                  or          a7, sp, s3
                  slti        s1, s2, 971
                  srli        s5, t4, 15
                  andi        s4, s9, -1305
                  lui         zero, 149079
                  srai        s5, a4, 27
                  nop
                  nop
                  xori        s5, s0, -1052
                  srli        t3, a7, 3
                  sltiu       a2, a0, -946
                  sra         t3, t4, t6
                  sra         tp, s0, t0
                  sltu        t3, tp, gp
                  sltu        s10, s11, s2
                  andi        a5, s4, -532
                  or          tp, ra, tp
                  xor         zero, sp, s0
                  sll         s6, t3, gp
                  xor         a5, t1, t4
                  slt         zero, s7, s8
                  srai        a1, s0, 19
                  xori        a2, sp, 1529
                  srl         zero, t3, t5
                  addi        s3, a5, 1798
                  slli        ra, a3, 6
                  xori        t0, s9, 513
                  slti        s11, t1, 763
                  or          sp, sp, t6
                  andi        ra, ra, 784
                  srai        s10, s6, 10
                  xori        zero, a3, -1305
                  nop
                  ori         s7, t2, -1407
                  slt         s4, tp, s5
                  sltiu       a0, s2, 390
                  slli        t1, s11, 1
                  add         s8, s1, gp
                  sra         s11, s10, s11
                  srai        s7, s7, 1
                  add         zero, a7, s2
                  or          t3, s6, a5
                  or          s9, a2, a1
                  xori        s7, ra, 398
                  xor         a7, t1, s8
                  add         s5, t1, t2
                  xor         t0, s2, s4
                  sltu        s4, ra, t5
                  srl         a0, gp, s2
                  slti        a1, s4, 494
                  srai        zero, s11, 16
                  nop
                  sub         s4, zero, t4
                  xor         tp, t6, s5
                  srli        a0, a7, 23
                  slli        s10, t5, 5
                  andi        sp, gp, -237
                  nop
                  srai        zero, a6, 24
                  sub         a5, s0, s5
                  sra         a2, t4, sp
                  addi        s4, t4, 64
                  slti        a3, s2, -593
                  ori         s6, s0, -343
                  xor         t1, t2, s10
                  lui         a3, 567911
                  nop
                  xori        t0, a0, -1536
                  xor         s3, s9, ra
                  xori        a6, gp, 546
                  sltiu       t2, a3, 1069
                  and         s1, zero, s10
                  ori         zero, s10, -810
                  auipc       t3, 830513
                  sltu        zero, t3, zero
                  sltiu       a1, tp, 568
                  ori         a6, sp, -400
                  auipc       t2, 573068
                  nop
                  slti        gp, s6, 570
                  lui         a0, 868937
                  lui         a7, 11984
                  sub         t2, s6, t6
                  and         s2, s0, s3
                  slti        s4, a1, -1258
                  auipc       s9, 794127
                  andi        s2, zero, -1568
                  slt         a5, s8, t1
                  slti        gp, s10, 167
                  nop
                  slt         s1, t2, s6
                  srl         s11, a4, s1
                  auipc       a7, 36161
                  slti        a2, s1, 364
                  xor         a6, s8, s6
                  srl         s0, s7, a7
                  xor         t1, tp, s4
                  addi        s1, s1, -859
                  sltu        a4, s8, s0
                  sltiu       s2, s8, -72
                  srai        a3, tp, 17
                  add         a2, zero, t3
                  srai        zero, s6, 1
                  lui         ra, 845806
                  ori         zero, t0, -1845
                  auipc       s1, 374646
                  srli        s8, t5, 9
                  slt         s6, a7, s6
                  xor         zero, tp, a1
                  xori        s11, t6, 420
                  addi        s9, a0, -1556
                  sra         gp, a0, t2
                  nop
                  lui         ra, 110283
                  slli        s6, a6, 5
                  xori        zero, a3, -1871
                  lui         s1, 253224
                  slti        a1, t3, -1447
                  and         s4, a2, a6
                  sltiu       a3, t3, -1251
                  srl         a4, t5, s7
                  srai        zero, s4, 22
                  srli        zero, zero, 18
                  srl         a7, a5, a4
                  srl         a4, t4, t2
                  srai        a3, ra, 10
                  sra         s1, tp, t1
                  addi        s8, s8, 1396
                  xor         s4, s9, s9
                  ori         a4, s4, 1553
                  srli        zero, a4, 13
                  slti        s1, s9, -275
                  sra         s3, t0, s10
                  xor         t3, t2, s7
                  sub         s5, a0, t2
                  nop
                  srli        s3, s10, 27
                  sltu        ra, ra, s6
                  or          a4, a7, s11
                  ori         a7, s7, -1804
                  nop
                  slti        zero, s1, -1451
                  sub         s0, s7, a1
                  or          zero, s0, t1
                  sub         s11, t5, s3
                  sra         a0, s10, s2
                  lui         t0, 1018701
                  add         a3, ra, a2
                  sltu        s8, gp, a4
                  and         s0, ra, zero
                  slti        s2, sp, -450
                  or          zero, a7, ra
                  slti        s5, s8, 1386
                  xor         t1, t0, t5
                  nop
                  add         a7, gp, gp
                  sra         zero, s2, s9
                  slt         a4, a5, t1
                  and         a5, a7, s10
                  slli        gp, t6, 19
                  slt         s8, zero, s3
                  ori         zero, a6, -144
                  slli        ra, s2, 3
                  addi        s0, s3, -982
                  sub         s1, s7, a7
                  sltiu       s11, s11, -567
                  or          s7, s8, t3
                  sll         s11, s10, a7
                  or          a7, a2, s7
                  sra         zero, a1, sp
                  sra         tp, a7, a0
                  auipc       t0, 959961
                  sltiu       s6, a7, 1286
                  sub         t2, s2, s3
                  ori         zero, a7, 1641
                  slt         s3, sp, t2
                  srli        a4, s5, 31
                  srli        a4, gp, 19
                  srl         a6, s8, s8
                  auipc       s2, 992707
                  slti        sp, a5, 1021
                  srl         a4, s3, a7
                  sub         t3, a0, s2
                  slti        s5, a6, -1300
                  sll         gp, s8, a7
                  srli        sp, s11, 8
                  slt         a4, gp, sp
                  sll         a4, t1, s5
                  andi        a2, gp, -2042
                  sub         s3, s3, t1
                  addi        a2, t2, 1383
                  ori         s6, s6, 1169
                  srl         s0, ra, s9
                  sltiu       s6, s9, -1030
                  and         s8, s0, a2
                  addi        zero, gp, 165
                  srl         s11, gp, s2
                  sll         t1, a4, ra
                  andi        a1, a4, 463
                  srai        s7, t3, 31
                  addi        s6, a1, 1913
                  add         s2, s3, t4
                  slt         zero, a2, sp
                  sltiu       sp, t6, -1620
                  sra         t2, s7, s5
                  xor         gp, s2, t2
                  sltu        t2, zero, a5
                  sltiu       s8, t0, -707
                  andi        sp, s4, -172
                  nop
                  sll         a5, s7, a4
                  auipc       s5, 543920
                  srli        s8, s6, 2
                  lui         a4, 763513
                  sra         ra, t6, t4
                  ori         t3, a3, -1504
                  auipc       s0, 156735
                  srai        s10, s0, 5
                  slli        s7, s6, 2
                  sra         a1, a4, s10
                  sub         a0, t0, s9
                  lui         s9, 907950
                  slti        sp, s1, 1531
                  and         s1, s11, t5
                  auipc       a2, 385147
                  srai        t0, s6, 7
                  addi        a4, s1, -509
                  slli        zero, a6, 17
                  auipc       s0, 467132
                  slti        a1, a3, -112
                  addi        a5, gp, -194
                  or          s4, tp, s1
                  slt         sp, s9, s7
                  add         sp, t5, a6
                  auipc       s10, 908181
                  sltu        a3, tp, s0
                  sltu        zero, a0, s4
                  sub         s1, tp, s5
                  auipc       zero, 699050
                  xori        gp, s11, 1605
                  xori        a7, a4, 1868
                  addi        zero, t1, -236
                  slt         zero, s0, t2
                  addi        s8, s11, -1789
                  sltiu       s1, a4, -40
                  slti        zero, s10, 2002
                  slti        s8, tp, 1423
                  sltiu       a0, t6, -697
                  nop
                  addi        a1, zero, -511
                  or          s8, s7, tp
                  slti        ra, t0, -510
                  ori         a4, t0, -376
                  or          zero, t4, t0
                  srli        ra, t5, 5
                  sra         s10, s1, s3
                  sltiu       s7, s10, -1929
                  slti        tp, a7, 329
                  sltiu       s1, t2, -655
                  sltiu       s5, t2, 591
                  xor         ra, t0, gp
                  auipc       s8, 409620
                  auipc       a2, 583020
                  auipc       s4, 371275
                  or          tp, a4, tp
                  srai        t2, s6, 23
                  or          zero, a1, s5
                  srli        zero, ra, 14
                  andi        zero, a2, 1548
                  sltiu       sp, s7, -1291
                  slt         sp, s2, t5
                  xori        a1, a2, 944
                  srl         s4, t2, s10
                  xor         zero, t0, s0
                  srli        sp, s6, 4
                  xori        a1, s8, 1757
                  ori         s7, t2, 1417
                  auipc       sp, 469448
                  li         sp, 0x3f34e6f1 #start riscv_int_numeric_corner_stream_14
                  li         t3, 0x1
                  li         t2, 0x1
                  li         a1, 0x0
                  li         s11, 0x596b7cc0
                  li         s9, 0x0
                  li         s8, 0x1
                  li         s10, 0x720e6961
                  li         a7, 0x1
                  li         a0, 0x1
                  add         ra, s4, t1
                  nop
                  lui         t1, 339195
                  addi        zero, t6, -301
                  lui         s3, 934173
                  nop
                  nop
                  sub         zero, t1, a6
                  sub         gp, s10, t0
                  nop
                  addi        gp, s2, -1840
                  lui         ra, 327437
                  addi        t3, s1, -1955
                  addi        sp, a6, -558
                  addi        s1, a1, 172
                  sub         s7, t1, t4
                  lui         a4, 217285
                  nop
                  addi        s2, s7, 1086
                  sub         s5, zero, a4
                  lui         zero, 618680
                  lui         s11, 655383
                  nop
                  addi        s7, t6, -1025
                  lui         zero, 755734
                  sub         t0, s3, t6 #end riscv_int_numeric_corner_stream_14
                  sra         a6, t2, s7
                  ori         t3, t1, -1566
                  xori        a0, a7, -1314
                  slli        s6, s8, 19
                  sub         s3, a3, a0
                  srai        s11, a2, 6
                  sra         s1, a6, s6
                  sll         t3, a5, t5
                  srl         a0, s1, a7
                  andi        t2, s3, -1537
                  sll         zero, s6, t1
                  andi        s4, a7, 941
                  nop
                  addi        a0, s3, 1065
                  sub         a2, s9, ra
                  sltu        s4, t6, s1
                  slti        gp, s8, -918
                  slli        tp, a4, 9
                  slti        t1, s6, 984
                  or          a7, a7, tp
                  ori         a6, zero, 1993
                  andi        s5, ra, 646
                  srl         tp, zero, s0
                  andi        s7, t5, -1364
                  add         a7, s5, t6
                  add         a4, a3, t6
                  and         t0, t0, a4
                  slli        s1, t5, 30
                  slt         a6, t1, tp
                  slt         a0, t5, a4
                  andi        s7, a3, 1362
                  sra         zero, a1, s10
                  lui         zero, 577716
                  sll         zero, a5, s1
                  ori         gp, zero, 1308
                  srl         zero, s7, s2
                  xor         t0, s5, t5
                  ori         gp, t0, 629
                  ori         s7, tp, -1627
                  auipc       s2, 444201
                  xori        zero, s3, -2004
                  or          gp, sp, s0
                  lui         s9, 261980
                  sltu        gp, s10, t6
                  or          zero, sp, s3
                  xor         a4, a2, a6
                  sltu        s5, zero, s1
                  auipc       s5, 773505
                  sub         zero, s6, s1
                  addi        a6, s5, -1180
                  srl         a5, a5, s11
                  slli        t1, s10, 17
                  and         s9, t5, ra
                  and         ra, s5, s3
                  xori        t3, a4, 1776
                  nop
                  xor         a1, s5, s4
                  lui         a6, 625412
                  nop
                  xori        s0, gp, -1863
                  add         t3, s0, s8
                  sra         a6, s4, t6
                  or          s8, a1, ra
                  srai        tp, sp, 3
                  srl         t3, s1, a1
                  lui         zero, 695249
                  ori         sp, gp, 919
                  slli        s10, s1, 3
                  xori        t2, zero, 2003
                  slt         s4, t3, s2
                  andi        zero, s5, -12
                  ori         a0, a0, 915
                  add         a3, s3, s8
                  srl         zero, zero, s4
                  slli        t0, t6, 2
                  sll         t0, s0, t1
                  srai        a7, s9, 1
                  sltu        s0, s6, t6
                  xori        s11, a5, -797
                  srl         t0, s7, t2
                  slt         t0, sp, tp
                  sltiu       s4, s7, -1432
                  slti        a7, t2, 59
                  sub         s8, s2, t1
                  lui         a3, 483116
                  slti        t3, t0, 321
                  srai        a5, a3, 19
                  xori        t1, s6, -934
                  addi        s8, gp, 520
                  ori         s11, s9, 991
                  slt         ra, a2, t4
                  sra         s2, a5, t6
                  srli        tp, s0, 13
                  nop
                  srl         gp, s7, t4
                  auipc       a2, 708448
                  and         zero, s9, s11
                  sltiu       s3, a5, -91
                  auipc       s8, 364624
                  slli        s6, a7, 20
                  addi        t1, s7, 323
                  nop
                  andi        t0, a5, -1074
                  addi        s1, s6, -368
                  addi        a7, s7, -1661
                  sll         t2, t1, s7
                  sltiu       a5, a3, 227
                  xori        s2, s1, -117
                  sll         zero, s7, t3
                  or          gp, t3, s2
                  sll         zero, s0, s11
                  slti        a3, s9, 1813
                  slt         s11, s9, t6
                  sltu        a6, s10, a0
                  andi        gp, a6, 2004
                  or          gp, a1, s9
                  slli        tp, a4, 25
                  add         zero, t4, s9
                  or          t1, s7, a1
                  srli        s3, sp, 2
                  sub         zero, t1, s6
                  lui         t1, 256853
                  srli        s1, t1, 30
                  srli        a1, s3, 6
                  sra         a2, s8, t0
                  sltu        s0, a1, s11
                  sll         s7, s10, a1
                  slt         zero, tp, a0
                  slli        s2, t3, 17
                  andi        zero, t1, -824
                  srl         sp, a0, a0
                  sub         a5, a2, s8
                  srl         zero, t3, s11
                  sltu        zero, t6, s1
                  and         s5, t3, s3
                  auipc       a5, 976939
                  srl         s1, t2, ra
                  slt         sp, a4, a2
                  slli        s0, ra, 17
                  sltiu       t2, s8, 1235
                  sltu        t2, a3, tp
                  sra         ra, s11, s1
                  andi        a2, tp, -792
                  sll         s2, a1, s9
                  xori        s9, a6, 1969
                  or          a2, s0, t6
                  srai        t3, s1, 19
                  srai        t0, t0, 7
                  addi        t0, s2, -217
                  ori         s2, t1, -508
                  nop
                  sub         a4, tp, a0
                  slli        a5, s10, 18
                  slli        s2, s6, 28
                  addi        s8, a6, -1210
                  addi        t2, ra, -1380
                  slti        s11, a3, -446
                  ori         a3, s0, -1595
                  addi        s1, s11, 1635
                  nop
                  sltiu       s1, a3, -1015
                  xor         sp, t3, s9
                  sll         a0, s5, s10
                  addi        s7, s2, 1565
                  srl         a2, zero, t1
                  auipc       s2, 857394
                  srai        zero, s8, 25
                  add         zero, s11, s4
                  sub         t3, a1, a1
                  or          a0, s4, s9
                  xor         s9, t3, zero
                  slt         s10, s4, a7
                  and         t0, s10, s5
                  and         s4, s4, t3
                  sra         s9, a7, t6
                  ori         a0, s6, 695
                  lui         s10, 842756
                  sub         s11, s7, a5
                  xor         s7, s5, a0
                  srli        a7, a6, 23
                  sll         s1, t6, s3
                  slli        t2, gp, 14
                  andi        a1, a7, 446
                  andi        a4, s8, 1674
                  sltiu       s11, zero, -304
                  srli        zero, s2, 17
                  sll         a3, a6, t6
                  slti        a3, s7, 784
                  add         s4, a3, sp
                  nop
                  andi        zero, s9, -1687
                  addi        a2, s7, 717
                  xor         gp, a7, t1
                  slli        zero, tp, 0
                  and         a0, t3, s4
                  nop
                  nop
                  sub         t0, a5, ra
                  xor         a1, s10, a7
                  sub         s8, ra, t4
                  slti        s2, a3, 384
                  sra         t2, tp, a6
                  sltu        s10, a7, tp
                  srai        gp, t6, 18
                  andi        t3, s10, -1790
                  nop
                  sltu        s6, t5, t3
                  slti        s4, s11, 1378
                  auipc       a6, 299945
                  slti        a2, t2, 1125
                  sltu        a6, a5, s7
                  srai        zero, a5, 27
                  sltu        s10, s10, s6
                  slt         gp, a0, t6
                  and         s1, a7, t4
                  or          zero, s4, sp
                  sltiu       s1, t4, 1804
                  nop
                  sra         a4, sp, sp
                  add         t3, ra, s1
                  add         s4, t5, s11
                  slli        a0, a4, 3
                  sra         a4, s10, a3
                  sub         s8, t3, a2
                  slt         s0, s11, a4
                  addi        s7, t4, -1220
                  sll         s6, a3, ra
                  srli        tp, tp, 13
                  srli        s5, t3, 13
                  srai        s7, t5, 19
                  sltu        s9, t3, s1
                  sll         gp, t1, a3
                  lui         tp, 826765
                  and         a4, t6, s9
                  auipc       t0, 236369
                  add         t3, t6, t6
                  xori        a7, gp, 603
                  sub         s11, s11, ra
                  xor         s4, a3, s6
                  and         s10, s1, sp
                  slli        zero, s4, 8
                  slt         a3, s6, ra
                  sll         a2, gp, t5
                  xori        ra, s4, -591
                  slli        s9, t5, 20
                  andi        s10, t3, 1944
                  slti        a2, a7, 876
                  xor         s7, a3, a5
                  add         a1, t2, gp
                  xori        s6, s1, -1996
                  sll         gp, s3, s8
                  nop
                  ori         zero, s11, -29
                  and         s5, s0, t3
                  xor         zero, zero, tp
                  srai        s8, s8, 11
                  xori        s1, s11, 981
                  auipc       s4, 110674
                  xori        a5, tp, 1714
                  srai        s10, a5, 0
                  slt         a1, t6, s2
                  srli        a6, a6, 20
                  sltiu       t2, a2, 614
                  sub         a6, t0, tp
                  andi        t1, s4, -535
                  slt         zero, gp, t3
                  andi        s9, ra, -190
                  sltu        s11, sp, s10
                  sltiu       t2, t1, -495
                  srai        s2, a0, 1
                  sll         a6, s9, s3
                  slt         s10, sp, t1
                  sltu        t2, s1, t2
                  or          zero, s4, a3
                  nop
                  lui         s0, 852755
                  or          a5, t1, a2
                  srai        a1, s6, 0
                  srl         s11, t0, s1
                  or          a6, t3, a6
                  nop
                  or          t3, t2, t4
                  and         s7, s9, zero
                  sll         s4, s3, s5
                  andi        s10, t3, 2004
                  srl         t3, s10, ra
                  and         s2, ra, a3
                  ori         t3, t1, -538
                  slt         t3, a1, s8
                  ori         zero, a1, -895
                  addi        a7, s5, 461
                  auipc       s1, 598684
                  srai        zero, t0, 17
                  and         zero, a1, t5
                  xori        zero, s10, 204
                  srl         gp, a0, s0
                  srli        s8, a6, 1
                  srli        t0, t1, 10
                  lui         a6, 790792
                  ori         ra, a5, 147
                  slti        a0, gp, -1740
                  lui         sp, 367326
                  sltiu       t0, s9, 1436
                  srl         s10, s8, s0
                  nop
                  ori         zero, t1, -1436
                  srli        s9, s2, 18
                  auipc       s8, 565671
                  srai        s4, a6, 0
                  auipc       s10, 71588
                  sra         s1, a1, t1
                  sub         t0, s11, s1
                  slli        t1, zero, 3
                  sltiu       s9, s1, -1994
                  and         s9, s5, s9
                  sltu        zero, zero, a7
                  sll         s6, s5, s7
                  srli        t2, s9, 18
                  srli        s1, s9, 19
                  slli        t2, a3, 9
                  add         t3, s6, t5
                  addi        ra, ra, -1209
                  sltu        t3, gp, s6
                  add         t3, t4, s5
                  auipc       s0, 20633
                  xor         a3, t1, a6
                  slli        a1, a4, 15
                  srli        a1, a3, 20
                  sltu        s10, s8, s1
                  sra         a1, s1, s6
                  xor         s2, s4, s8
                  nop
                  and         zero, zero, s4
                  slti        s5, s11, 288
                  sltiu       s7, s5, -1076
                  xori        t2, gp, -411
                  slt         zero, t4, a0
                  srli        s2, t3, 18
                  lui         s8, 901668
                  and         gp, t1, t6
                  slt         s5, s1, s2
                  ori         t0, tp, -1396
                  srai        a6, t5, 29
                  and         s4, a2, s4
                  nop
                  or          a0, a4, ra
                  srai        a2, a0, 13
                  xor         s3, t5, sp
                  add         zero, s8, s7
                  auipc       s9, 619257
                  slt         a1, t6, t2
                  sltu        zero, a5, s3
                  addi        zero, s1, -1262
                  srai        s0, tp, 28
                  ori         zero, a6, 1558
                  and         a3, s0, sp
                  sltiu       s2, s5, 673
                  addi        s1, a0, 921
                  and         ra, a0, zero
                  andi        a5, a0, -1342
                  nop
                  sub         s7, gp, t6
                  sltu        zero, s4, s8
                  andi        s5, gp, 981
                  slli        zero, s8, 12
                  slli        sp, s2, 7
                  sltu        a5, a1, s2
                  sltu        zero, s5, gp
                  slt         a6, s10, gp
                  sltiu       s9, t4, 1794
                  slt         t0, s9, s6
                  slli        a6, tp, 9
                  or          a0, s1, t0
                  sltiu       ra, gp, -773
                  sra         s4, a2, s8
                  xori        s8, a5, -2010
                  sltu        s9, t0, s10
                  slli        a4, sp, 17
                  srl         s1, a0, s4
                  lui         a4, 73135
                  sub         s11, t3, a6
                  or          zero, zero, a6
                  slti        s8, a3, 1454
                  sltiu       zero, s3, 1073
                  ori         a6, sp, 1428
                  sll         s4, tp, t1
                  sub         s10, ra, s6
                  xori        s2, t5, 131
                  auipc       t2, 648798
                  add         s9, s10, gp
                  xor         a1, gp, s2
                  slti        s4, a6, -1433
                  xori        zero, s2, -1457
                  nop
                  add         s11, a6, a1
                  andi        zero, tp, 343
                  xor         s9, t6, t0
                  or          s3, a3, t4
                  slti        s9, s6, 31
                  slli        sp, t3, 28
                  xor         a3, sp, sp
                  or          a2, a2, ra
                  sll         s8, t6, a3
                  add         t3, a1, ra
                  andi        a7, zero, -682
                  slt         t1, a1, s10
                  sltu        a3, s0, s7
                  slt         s8, t5, t6
                  or          a6, s3, sp
                  xor         zero, s7, a7
                  xori        a7, s8, -1756
                  sll         t2, s2, a5
                  slti        tp, t2, -1671
                  lui         a1, 160283
                  andi        s7, tp, 1431
                  slti        zero, s8, 44
                  slli        zero, s1, 2
                  add         a4, t5, s2
                  srl         a4, gp, a4
                  or          a0, s0, s1
                  slti        s10, zero, 854
                  srli        zero, t1, 30
                  ori         s4, s1, -1992
                  and         zero, t5, a0
                  lui         gp, 637270
                  addi        a1, a5, 1719
                  srl         s4, zero, gp
                  sll         s11, a4, s5
                  slli        zero, s2, 4
                  slli        ra, s2, 5
                  sltiu       a1, s6, 1477
                  sra         t1, s4, s1
                  add         zero, s5, s3
                  auipc       a2, 847310
                  andi        s4, s4, 392
                  sltu        s9, s7, a0
                  sra         s2, s9, gp
                  sll         zero, s8, s3
                  slt         a2, tp, t1
                  srai        a5, sp, 5
                  auipc       ra, 804061
                  ori         gp, s5, 303
                  sra         s8, ra, a7
                  add         a2, t5, a6
                  auipc       s5, 450679
                  xori        gp, gp, -1992
                  ori         a5, s0, 1653
                  andi        s4, t6, -510
                  slli        a2, s11, 19
                  or          sp, s1, tp
                  auipc       a6, 794111
                  slti        s3, t2, 197
                  sra         s3, s7, a2
                  slli        s1, s11, 12
                  ori         t1, s0, 1178
                  auipc       a4, 371415
                  xor         s5, a4, t6
                  add         tp, a4, zero
                  slti        a2, t5, -278
                  slti        a2, s3, 117
                  auipc       s10, 147288
                  and         s9, s10, gp
                  xori        zero, s3, 1323
                  and         s4, tp, s6
                  add         gp, a3, t2
                  ori         gp, t2, -127
                  srai        s1, s3, 31
                  slti        a0, sp, -526
                  lui         t1, 797225
                  lui         a7, 250874
                  auipc       zero, 129427
                  auipc       a0, 426116
                  sra         a5, s8, t3
                  slti        a5, t1, -1226
                  xori        s6, a0, -274
                  sra         zero, t1, t1
                  andi        a5, s5, -955
                  xor         gp, a3, a5
                  srl         t2, a2, a2
                  xor         a5, a7, a3
                  ori         zero, t2, 355
                  xor         s3, ra, t5
                  sltiu       s0, s0, -120
                  addi        s5, gp, -1988
                  addi        t3, a1, -657
                  and         s11, t1, zero
                  addi        a5, t3, -1584
                  and         a3, ra, t4
                  sltiu       a3, gp, -1744
                  slt         s8, a3, t2
                  srl         gp, s1, a5
                  sra         a2, s8, t1
                  add         s5, a1, a7
                  lui         tp, 708110
                  andi        a0, t4, 184
                  nop
                  andi        s7, a0, 1215
                  sub         a3, t2, a7
                  slt         a1, s4, s3
                  sra         s6, a5, a4
                  add         s10, s0, t3
                  lui         zero, 520483
                  sub         s0, s2, s10
                  auipc       a1, 473932
                  srai        tp, t0, 30
                  nop
                  andi        s8, s0, -261
                  nop
                  slli        t1, t4, 31
                  srl         gp, s5, t0
                  add         gp, a5, s8
                  xori        a4, t4, 922
                  sub         a4, s8, a5
                  slli        tp, s5, 9
                  srl         a6, ra, s10
                  or          s5, sp, s11
                  srai        zero, t3, 0
                  srl         s9, s4, a1
                  sub         zero, t0, s10
                  nop
                  xori        s1, s3, -1757
                  srli        s5, gp, 18
                  slti        a6, s5, -233
                  ori         s0, ra, -1776
                  sra         zero, t4, s9
                  auipc       s11, 32984
                  sltu        s1, a1, t2
                  auipc       gp, 614413
                  nop
                  andi        tp, s6, 1704
                  auipc       t2, 332978
                  srli        sp, s5, 20
                  auipc       s4, 428636
                  add         s7, s1, t3
                  or          s8, a3, t5
                  sub         zero, s0, t5
                  ori         a1, a0, -1489
                  add         ra, zero, t5
                  xor         sp, t4, a3
                  sra         gp, s9, a3
                  slti        t3, gp, -1692
                  ori         s9, s11, 1118
                  sltu        zero, a4, s5
                  andi        s2, a4, -1512
                  sub         t0, s2, gp
                  slti        zero, t5, 1673
                  sltu        a6, t4, t3
                  srl         a3, s9, a4
                  and         ra, a1, a0
                  srai        s5, s8, 23
                  srai        a5, t3, 21
                  lui         ra, 730275
                  sltu        t1, t3, tp
                  addi        a1, a6, -530
                  andi        t1, a7, -387
                  sll         sp, s10, t4
                  srli        tp, s3, 10
                  sltiu       tp, sp, 1704
                  xor         a2, s6, gp
                  srl         gp, t4, s11
                  srl         s10, a6, a1
                  sltiu       s1, s2, -1674
                  andi        s10, tp, -513
                  auipc       t0, 912750
                  andi        t3, s6, 1653
                  addi        s10, t5, 690
                  sll         s10, s7, a0
                  srli        s11, s0, 19
                  sra         s11, s0, s9
                  slti        s4, s3, 759
                  sub         s7, zero, a3
                  xor         t1, a3, s10
                  nop
                  sltiu       a6, s5, 1059
                  sra         a0, s2, t5
                  sub         a4, s0, gp
                  srli        a2, zero, 15
                  or          a3, a7, a6
                  sra         t0, s2, a2
                  sltiu       sp, s0, 196
                  sll         a5, a6, a7
                  add         s11, s11, t5
                  slti        zero, s4, 1465
                  sltiu       zero, zero, -1272
                  xori        a4, s1, 441
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align 2
mtvec_handler:    
                  csrrw x29, 0x340, x29
                  add x29, x31, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x21, 0x300 # MSTATUS
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 31
                  bne x21, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x5, 0xb # ECALL_MMODE
                  beq x21, x5, ecall_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x30, write_tohost
                  jalr x0, x30, 0

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  lw x1, 4(x29)
                  lw x2, 8(x29)
                  lw x3, 12(x29)
                  lw x4, 16(x29)
                  lw x5, 20(x29)
                  lw x6, 24(x29)
                  lw x7, 28(x29)
                  lw x8, 32(x29)
                  lw x9, 36(x29)
                  lw x10, 40(x29)
                  lw x11, 44(x29)
                  lw x12, 48(x29)
                  lw x13, 52(x29)
                  lw x14, 56(x29)
                  lw x15, 60(x29)
                  lw x16, 64(x29)
                  lw x17, 68(x29)
                  lw x18, 72(x29)
                  lw x19, 76(x29)
                  lw x20, 80(x29)
                  lw x21, 84(x29)
                  lw x22, 88(x29)
                  lw x23, 92(x29)
                  lw x24, 96(x29)
                  lw x25, 100(x29)
                  lw x26, 104(x29)
                  lw x27, 108(x29)
                  lw x28, 112(x29)
                  lw x29, 116(x29)
                  lw x30, 120(x29)
                  lw x31, 124(x29)
                  addi x29, x29, 124
                  add x31, x29, zero
                  csrrw x29, 0x340, x29
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  lw x1, 4(x29)
                  lw x2, 8(x29)
                  lw x3, 12(x29)
                  lw x4, 16(x29)
                  lw x5, 20(x29)
                  lw x6, 24(x29)
                  lw x7, 28(x29)
                  lw x8, 32(x29)
                  lw x9, 36(x29)
                  lw x10, 40(x29)
                  lw x11, 44(x29)
                  lw x12, 48(x29)
                  lw x13, 52(x29)
                  lw x14, 56(x29)
                  lw x15, 60(x29)
                  lw x16, 64(x29)
                  lw x17, 68(x29)
                  lw x18, 72(x29)
                  lw x19, 76(x29)
                  lw x20, 80(x29)
                  lw x21, 84(x29)
                  lw x22, 88(x29)
                  lw x23, 92(x29)
                  lw x24, 96(x29)
                  lw x25, 100(x29)
                  lw x26, 104(x29)
                  lw x27, 108(x29)
                  lw x28, 112(x29)
                  lw x29, 116(x29)
                  lw x30, 120(x29)
                  lw x31, 124(x29)
                  addi x29, x29, 124
                  add x31, x29, zero
                  csrrw x29, 0x340, x29
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
