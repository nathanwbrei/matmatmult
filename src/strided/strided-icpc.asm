# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.4.196 Build 20170411";
# mark_description "";
# mark_description "-O3 -xMIC-AVX512 -std=c++11 -S -o src/strided/strided-icpc.asm";
	.file "strided.cpp"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value_main.1:
..L2:
                                                          #3.33
        pushq     %rbp                                          #3.33
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #3.33
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #3.33
        subq      $128, %rsp                                    #3.33 c1
        movq      $0x7389d9ffe, %rsi                            #3.33 c1
        movl      $3, %edi                                      #3.33 c3
        call      __intel_new_feature_proc_init                 #3.33 c5
                                # LOE rbx r12 r13 r14 r15
..B1.22:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  (%rsp)                                        #3.33 c1
        lea       8(%rsp), %rdi                                 #8.20 c1
        orl       $32832, (%rsp)                                #3.33 c3
        movl      $64, %esi                                     #8.20 c3
        movl      $512, %edx                                    #8.20 c3
        vldmxcsr  (%rsp)                                        #3.33 c5
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #8.20 c5
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.22
                                # Execution count [1.00e+00]
        lea       16(%rsp), %rdi                                #9.20 c1
        movl      $64, %esi                                     #9.20 c1
        movl      $512, %edx                                    #9.20 c1
#       posix_memalign(void **, size_t, size_t)
        call      posix_memalign                                #9.20 c3
                                # LOE rbx r12 r13 r14 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        movq      8(%rsp), %rcx                                 #12.3 c1
        movq      16(%rsp), %rdx                                #13.3 c1
        xorl      %eax, %eax                                    #11.2 c1
        vpxorq    %zmm0, %zmm0, %zmm0                           #13.10 c1
        vmovups   .L_2il0floatpacket.1(%rip), %zmm3             #12.3 c5 stall 1
        vmovdqu32 .L_2il0floatpacket.3(%rip), %zmm2             #12.3 c5
        vmovdqu32 .L_2il0floatpacket.4(%rip), %zmm1             #12.3 c11 stall 2
                                # LOE rax rdx rcx rbx r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3
..B1.4:                         # Preds ..B1.4 ..B1.3
                                # Execution count [6.40e+01]
        vextractf64x4 $1, %zmm2, %ymm4                          #12.10 c1
        vmovupd   %zmm0, (%rdx,%rax,8)                          #13.3 c1
        vextractf64x4 $1, %zmm1, %ymm5                          #12.10 c1
        vmovupd   %zmm0, 64(%rdx,%rax,8)                        #13.3 c1
        vmovupd   %zmm0, 128(%rdx,%rax,8)                       #13.3 c7 stall 1
        vmovupd   %zmm0, 192(%rdx,%rax,8)                       #13.3 c7
        vcvtdq2pd %ymm2, %zmm6                                  #12.10 c7
        vmovupd   %zmm6, (%rcx,%rax,8)                          #12.3 c13 stall 2
        vcvtdq2pd %ymm4, %zmm7                                  #12.10 c13
        vmovupd   %zmm7, 64(%rcx,%rax,8)                        #12.3 c15
        vcvtdq2pd %ymm1, %zmm8                                  #12.10 c15
        vmovupd   %zmm8, 128(%rcx,%rax,8)                       #12.3 c19 stall 1
        vcvtdq2pd %ymm5, %zmm9                                  #12.10 c19
        vmovupd   %zmm9, 192(%rcx,%rax,8)                       #12.3 c21
        addq      $32, %rax                                     #11.2 c21
        vpaddd    %zmm3, %zmm2, %zmm2                           #12.3 c21
        vpaddd    %zmm3, %zmm1, %zmm1                           #12.3 c21
        cmpq      $64, %rax                                     #11.2 c23
        jb        ..B1.4        # Prob 98%                      #11.2 c25
                                # LOE rax rdx rcx rbx r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        movl      $_ZSt4cout, %edi                              #16.12 c1
        movl      $.L_2__STRING.0, %esi                         #16.12 c1
..___tag_value_main.6:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #16.12
..___tag_value_main.7:
                                # LOE rax rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        movq      %rax, %rdi                                    #16.35 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #16.35 c1
..___tag_value_main.8:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #16.35
..___tag_value_main.9:
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
        movq      8(%rsp), %rax                                 #21.17 c1
        vmovdqu32 .L_2il0floatpacket.5(%rip), %zmm5             #21.17 c1
        movl      $204, %ecx                                    #21.17 c1
        movl      $_ZSt4cout, %edi                              #25.12 c1
        kmovw     %ecx, %k1                                     #21.17 c3
        movl      $240, %ecx                                    #21.17 c3
        vmovdqu32 (%rax), %zmm16                                #21.17 c5
        kmovw     %ecx, %k2                                     #21.17 c5
        movl      $.L_2__STRING.1, %esi                         #25.12 c5
        vmovdqu32 128(%rax), %zmm12                             #21.17 c7
        vmovdqu32 256(%rax), %zmm15                             #21.17 c11 stall 1
        vmovdqu32 384(%rax), %zmm14                             #21.17 c13
        vmovdqu32 .L_2il0floatpacket.6(%rip), %zmm2             #21.17 c17 stall 1
        vmovdqu32 .L_2il0floatpacket.7(%rip), %zmm4             #21.17 c19
        vmovdqu32 .L_2il0floatpacket.8(%rip), %zmm3             #21.17 c23 stall 1
        vmovdqu32 .L_2il0floatpacket.10(%rip), %zmm6            #21.17 c25
        vmovdqu32 .L_2il0floatpacket.11(%rip), %zmm7            #21.17 c29 stall 1
        vmovdqu32 .L_2il0floatpacket.12(%rip), %zmm8            #21.17 c31
        vmovdqu32 .L_2il0floatpacket.13(%rip), %zmm9            #21.17 c35 stall 1
        vmovdqu32 .L_2il0floatpacket.9(%rip), %zmm13            #21.17 c37
        vpermi2q  64(%rax), %zmm16, %zmm5                       #21.17 c41 stall 1
        vpermt2q  64(%rax), %zmm6, %zmm16                       #21.17 c43
        vpermi2q  192(%rax), %zmm12, %zmm2                      #21.17 c43
        vpermt2q  192(%rax), %zmm7, %zmm12                      #21.17 c45
        vpermi2q  320(%rax), %zmm15, %zmm4                      #21.17 c45
        vpblendmq %zmm2, %zmm5, %zmm1{%k1}                      #21.17 c45
        vpermt2q  %zmm2, %zmm13, %zmm5                          #21.17 c45
        vpermt2q  320(%rax), %zmm8, %zmm15                      #21.17 c47
        vpermi2q  448(%rax), %zmm14, %zmm3                      #21.17 c47
        vpblendmq %zmm12, %zmm16, %zmm11{%k1}                   #21.17 c47
        vpermt2q  %zmm12, %zmm13, %zmm16                        #21.17 c47
        vpermt2q  448(%rax), %zmm9, %zmm14                      #21.17 c49
        vpblendmq %zmm3, %zmm4, %zmm0{%k1}                      #21.17 c49
        vpermt2q  %zmm3, %zmm13, %zmm4                          #21.17 c49
        movq      16(%rsp), %rdx                                #21.4 c49
        vpblendmq %zmm14, %zmm15, %zmm10{%k1}                   #21.17 c51
        vpermt2q  %zmm14, %zmm13, %zmm15                        #21.17 c51
        vpblendmq %zmm0, %zmm1, %zmm17{%k2}                     #21.17 c53
        valignd   $8, %zmm1, %zmm0, %zmm19                      #21.17 c53
        vpblendmq %zmm4, %zmm5, %zmm21{%k2}                     #21.17 c55
        valignd   $8, %zmm5, %zmm4, %zmm23                      #21.17 c55
        vaddpd    .L_2il0floatpacket.2(%rip), %zmm17, %zmm18    #21.30 c55
        vmovupd   %zmm18, (%rdx)                                #21.4 c61 stall 2
        vpblendmq %zmm10, %zmm11, %zmm25{%k2}                   #21.17 c61
        valignd   $8, %zmm11, %zmm10, %zmm27                    #21.17 c61
        vaddpd    .L_2il0floatpacket.2(%rip), %zmm19, %zmm20    #21.30 c61
        vmovupd   %zmm20, 64(%rdx)                              #21.4 c67 stall 2
        vpblendmq %zmm15, %zmm16, %zmm29{%k2}                   #21.17 c67
        valignd   $8, %zmm16, %zmm15, %zmm31                    #21.17 c67
        vaddpd    .L_2il0floatpacket.2(%rip), %zmm21, %zmm22    #21.30 c67
        vmovupd   %zmm22, 128(%rdx)                             #21.4 c73 stall 2
        vaddpd    .L_2il0floatpacket.2(%rip), %zmm23, %zmm24    #21.30 c73
        vmovupd   %zmm24, 192(%rdx)                             #21.4 c79 stall 2
        vaddpd    .L_2il0floatpacket.2(%rip), %zmm25, %zmm26    #21.30 c79
        vmovupd   %zmm26, 256(%rdx)                             #21.4 c85 stall 2
        vaddpd    .L_2il0floatpacket.2(%rip), %zmm27, %zmm28    #21.30 c85
        vmovupd   %zmm28, 320(%rdx)                             #21.4 c91 stall 2
        vaddpd    .L_2il0floatpacket.2(%rip), %zmm29, %zmm30    #21.30 c91
        vmovupd   %zmm30, 384(%rdx)                             #21.4 c97 stall 2
        vaddpd    .L_2il0floatpacket.2(%rip), %zmm31, %zmm0     #21.30 c97
        vmovupd   %zmm0, 448(%rdx)                              #21.4 c103 stall 2
..___tag_value_main.10:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #25.12
..___tag_value_main.11:
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #26.2 c1
        movq      %r12, (%rsp)                                  #26.2[spill] c1
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x22
        movq      %rax, %r12                                    #26.2 c3
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.11 ..B1.8
                                # Execution count [6.40e+01]
        movq      8(%rsp), %rdx                                 #27.13 c1
        movl      $_ZSt4cout, %edi                              #27.13 c1
        vmovsd    (%rdx,%r12,8), %xmm0                          #27.13 c5 stall 1
..___tag_value_main.13:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #27.13
..___tag_value_main.14:
                                # LOE rax rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [6.40e+01]
        movq      %rax, %rdi                                    #27.21 c1
        movl      $.L_2__STRING.2, %esi                         #27.21 c1
..___tag_value_main.15:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #27.21
..___tag_value_main.16:
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [6.40e+01]
        addq      $1, %r12                                      #26.2 c1
        cmpq      $64, %r12                                     #26.2 c3
        jb        ..B1.9        # Prob 98%                      #26.2 c5
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
        movl      $_ZSt4cout, %edi                              #29.12 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #29.12 c1
        movq      (%rsp), %r12                                  #[spill] c1
	.cfi_restore 12
..___tag_value_main.18:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #29.12
..___tag_value_main.19:
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
        movl      $_ZSt4cout, %edi                              #31.12 c1
        movl      $.L_2__STRING.3, %esi                         #31.12 c1
..___tag_value_main.21:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #31.12
..___tag_value_main.22:
                                # LOE rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #32.2 c1
        movq      %r12, (%rsp)                                  #32.2[spill] c1
        movq      %rax, %r12                                    #32.2 c3
                                # LOE rbx r12 r13 r14 r15
..B1.15:                        # Preds ..B1.17 ..B1.14
                                # Execution count [6.40e+01]
        movq      16(%rsp), %rdx                                #33.13 c1
        movl      $_ZSt4cout, %edi                              #33.13 c1
        vmovsd    (%rdx,%r12,8), %xmm0                          #33.13 c5 stall 1
..___tag_value_main.23:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, double)
        call      _ZNSolsEd                                     #33.13
..___tag_value_main.24:
                                # LOE rax rbx r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15
                                # Execution count [6.40e+01]
        movq      %rax, %rdi                                    #33.21 c1
        movl      $.L_2__STRING.2, %esi                         #33.21 c1
..___tag_value_main.25:
#       std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>> &, const char *)
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #33.21
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.17:                        # Preds ..B1.16
                                # Execution count [6.40e+01]
        addq      $1, %r12                                      #32.2 c1
        cmpq      $64, %r12                                     #32.2 c3
        jb        ..B1.15       # Prob 98%                      #32.2 c5
                                # LOE rbx r12 r13 r14 r15
..B1.18:                        # Preds ..B1.17
                                # Execution count [1.00e+00]
        movl      $_ZSt4cout, %edi                              #35.12 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #35.12 c1
        movq      (%rsp), %r12                                  #[spill] c1
	.cfi_restore 12
..___tag_value_main.28:
#       std::basic_ostream<char, std::char_traits<char>>::operator<<(std::basic_ostream<char, std::char_traits<char>> *, std::basic_ostream<char, std::char_traits<char>>::__ostream_type &(*)(std::basic_ostream<char, std::char_traits<char>>::__ostream_type &))
        call      _ZNSolsEPFRSoS_E                              #35.12
..___tag_value_main.29:
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx r12 r13 r14 r15
..B1.19:                        # Preds ..B1.18
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #37.9 c1
        movq      %rbp, %rsp                                    #37.9 c5
        popq      %rbp                                          #37.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #37.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
..TXTST1:
# -- Begin  _ZNSt11char_traitsIcE6lengthEPKc
	.section .text._ZNSt11char_traitsIcE6lengthEPKc, "xaG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZNSt11char_traitsIcE6lengthEPKc
# --- std::char_traits<char>::length(const std::char_traits<char>::char_type *)
_ZNSt11char_traitsIcE6lengthEPKc:
# parameter 1: %rdi
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value__ZNSt11char_traitsIcE6lengthEPKc.34:
..L35:
                                                         #269.7
        pushq     %rsi                                          #269.7 c1
	.cfi_def_cfa_offset 16
        movq      %rdi, %rdx                                    #269.16 c1
        movq      %rdx, %rcx                                    #269.16 c3
        andq      $-16, %rdx                                    #269.16
        vpxor     %xmm0, %xmm0, %xmm0                           #269.16
        vpcmpeqb  (%rdx), %xmm0, %xmm0                          #269.16
        vpmovmskb %xmm0, %eax                                   #269.16
        andl      $15, %ecx                                     #269.16
        shrl      %cl, %eax                                     #269.16
        bsf       %eax, %eax                                    #269.16
        jne       ..L37         # Prob 60%                      #269.16
        movq      %rdx, %rax                                    #269.16
        addq      %rcx, %rdx                                    #269.16
        call      __intel_sse4_strlen                           #269.16
..L37:                                                          #
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        popq      %rcx                                          #269.16 c1
	.cfi_def_cfa_offset 8
        ret                                                     #269.16 c3
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
	.size	_ZNSt11char_traitsIcE6lengthEPKc,.-_ZNSt11char_traitsIcE6lengthEPKc
	.data
# -- End  _ZNSt11char_traitsIcE6lengthEPKc
	.text
# -- Begin  __sti__$E
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
# --- __sti__$E()
__sti__$E:
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
..___tag_value___sti__$E.40:
..L41:
                                                         #
        pushq     %rsi                                          # c1
	.cfi_def_cfa_offset 16
        movl      $_ZN17_INTERNAL339c80bfSt8__ioinitE, %edi     #74.25 c1
..___tag_value___sti__$E.43:
#       std::ios_base::Init::Init(std::ios_base::Init *)
        call      _ZNSt8ios_base4InitC1Ev                       #74.25
..___tag_value___sti__$E.44:
                                # LOE rbx rbp r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
                                # Execution count [1.00e+00]
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #74.25 c1
        movl      $_ZN17_INTERNAL339c80bfSt8__ioinitE, %esi     #74.25 c1
        movl      $__dso_handle, %edx                           #74.25 c3
        addq      $8, %rsp                                      #74.25 c3
	.cfi_def_cfa_offset 8
#       __cxa_atexit()
        jmp       __cxa_atexit                                  #74.25 c5
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.data
# -- End  __sti__$E
	.bss
	.align 4
	.align 1
_ZN17_INTERNAL339c80bfSt8__ioinitE:
	.type	_ZN17_INTERNAL339c80bfSt8__ioinitE,@object
	.size	_ZN17_INTERNAL339c80bfSt8__ioinitE,1
	.space 1	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.1:
	.long	0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020,0x00000020
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,64
	.align 64
.L_2il0floatpacket.2:
	.long	0x9999999a,0x400d9999,0x9999999a,0x400d9999,0x9999999a,0x400d9999,0x9999999a,0x400d9999,0x9999999a,0x400d9999,0x9999999a,0x400d9999,0x9999999a,0x400d9999,0x9999999a,0x400d9999
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,64
	.align 64
.L_2il0floatpacket.3:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,64
	.align 64
.L_2il0floatpacket.4:
	.long	0x00000010,0x00000011,0x00000012,0x00000013,0x00000014,0x00000015,0x00000016,0x00000017,0x00000018,0x00000019,0x0000001a,0x0000001b,0x0000001c,0x0000001d,0x0000001e,0x0000001f
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,64
	.align 64
.L_2il0floatpacket.5:
	.long	0x00000000,0x00000000,0x00000008,0x00000000,0x00000002,0x00000000,0x0000000a,0x00000000,0x00000001,0x00000000,0x00000009,0x00000000,0x00000003,0x00000000,0x0000000b,0x00000000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,64
	.align 64
.L_2il0floatpacket.6:
	.long	0x00000003,0x00000000,0x0000000b,0x00000000,0x00000000,0x00000000,0x00000008,0x00000000,0x00000002,0x00000000,0x0000000a,0x00000000,0x00000001,0x00000000,0x00000009,0x00000000
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,64
	.align 64
.L_2il0floatpacket.7:
	.long	0x00000001,0x00000000,0x00000009,0x00000000,0x00000003,0x00000000,0x0000000b,0x00000000,0x00000000,0x00000000,0x00000008,0x00000000,0x00000002,0x00000000,0x0000000a,0x00000000
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,64
	.align 64
.L_2il0floatpacket.8:
	.long	0x00000002,0x00000000,0x0000000a,0x00000000,0x00000001,0x00000000,0x00000009,0x00000000,0x00000003,0x00000000,0x0000000b,0x00000000,0x00000000,0x00000000,0x00000008,0x00000000
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,64
	.align 64
.L_2il0floatpacket.9:
	.long	0x00000002,0x00000000,0x00000003,0x00000000,0x0000000c,0x00000000,0x0000000d,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000,0x00000008,0x00000000,0x00000009,0x00000000
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,64
	.align 64
.L_2il0floatpacket.10:
	.long	0x00000004,0x00000000,0x0000000c,0x00000000,0x00000006,0x00000000,0x0000000e,0x00000000,0x00000005,0x00000000,0x0000000d,0x00000000,0x00000007,0x00000000,0x0000000f,0x00000000
	.type	.L_2il0floatpacket.10,@object
	.size	.L_2il0floatpacket.10,64
	.align 64
.L_2il0floatpacket.11:
	.long	0x00000007,0x00000000,0x0000000f,0x00000000,0x00000004,0x00000000,0x0000000c,0x00000000,0x00000006,0x00000000,0x0000000e,0x00000000,0x00000005,0x00000000,0x0000000d,0x00000000
	.type	.L_2il0floatpacket.11,@object
	.size	.L_2il0floatpacket.11,64
	.align 64
.L_2il0floatpacket.12:
	.long	0x00000005,0x00000000,0x0000000d,0x00000000,0x00000007,0x00000000,0x0000000f,0x00000000,0x00000004,0x00000000,0x0000000c,0x00000000,0x00000006,0x00000000,0x0000000e,0x00000000
	.type	.L_2il0floatpacket.12,@object
	.size	.L_2il0floatpacket.12,64
	.align 64
.L_2il0floatpacket.13:
	.long	0x00000006,0x00000000,0x0000000e,0x00000000,0x00000005,0x00000000,0x0000000d,0x00000000,0x00000007,0x00000000,0x0000000f,0x00000000,0x00000004,0x00000000,0x0000000c,0x00000000
	.type	.L_2il0floatpacket.13,@object
	.size	.L_2il0floatpacket.13,64
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1701736260
	.long	1768843552
	.long	1818323316
	.long	1852406377
	.word	103
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,18
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	540876897
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,5
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.word	32
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	540876898
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,5
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
	.data
	.hidden __dso_handle
# mark_proc_addr_taken __sti__$E;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
