# -- Machine type PW
# mark_description "Intel(R) C++ Compiler for applications running on IA-32, Version 11.1    Build 20091012 %s";
# mark_description "-long_double -O2 -parallel -std=c99 -ipo -ipo-S";
	.file "ipo_out.c"
	.text
..TXTST0:
# -- Begin  main, L_main_14__hpo_threaded_loop0_2.34, L_main_19__hpo_threaded_loop1_2.59
# mark_begin;
       .align    16,0x90
	.globl main
main:
..B1.1:                         # Preds ..B1.0
        pushl     %ebp                                          #8.1
        movl      %esp, %ebp                                    #8.1
        andl      $-128, %esp                                   #8.1
        pushl     %edi                                          #8.1
        pushl     %esi                                          #8.1
        pushl     %ebx                                          #8.1
        subl      $244, %esp                                    #8.1
        pushl     $3                                            #8.1
        call      __intel_new_proc_init                         #8.1
                                # LOE esi
..B1.104:                       # Preds ..B1.1
        stmxcsr   132(%esp)                                     #8.1
        orl       $32768, 132(%esp)                             #8.1
        ldmxcsr   132(%esp)                                     #8.1
        pushl     $0                                            #8.1
        pushl     $.2.4_2_hpo_loc_struct_pack.9                 #8.1
        call      __kmpc_begin                                  #8.1
                                # LOE esi
..B1.2:                         # Preds ..B1.104
        pushl     $.2.4_2_hpo_loc_struct_pack.25                #8.1
        call      __kmpc_global_thread_num                      #8.1
                                # LOE eax esi
..B1.3:                         # Preds ..B1.2
        movl      %eax, 160(%esp)                               #8.1
        pushl     $40000                                        #12.17
        call      malloc                                        #12.17
                                # LOE eax esi
..B1.106:                       # Preds ..B1.3
        movl      %eax, %ebx                                    #12.17
                                # LOE ebx esi
..B1.4:                         # Preds ..B1.106
        pushl     $40000                                        #13.17
        call      malloc                                        #13.17
                                # LOE eax ebx esi
..B1.107:                       # Preds ..B1.4
        movl      %eax, %edi                                    #13.17
                                # LOE ebx esi edi
..B1.5:                         # Preds ..B1.107
        pushl     $.2.4_2_hpo_loc_struct_pack.36                #14.5
        call      __kmpc_ok_to_fork                             #14.5
                                # LOE eax ebx esi edi
..B1.108:                       # Preds ..B1.5
        addl      $28, %esp                                     #14.5
                                # LOE eax ebx esi edi
..B1.6:                         # Preds ..B1.108
        testl     %eax, %eax                                    #14.5
        je        ..B1.8        # Prob 50%                      #14.5
                                # LOE ebx esi edi
..B1.7:                         # Preds ..B1.6
        movl      $0, 136(%esp)                                 #14.5
        movl      %ebx, 128(%esp)                               #14.5
        movl      %edi, 132(%esp)                               #14.5
        lea       128(%esp), %ecx                               #14.5
        lea       132(%esp), %edx                               #14.5
        lea       136(%esp), %eax                               #14.5
        pushl     %eax                                          #14.5
        pushl     %edx                                          #14.5
        pushl     %ecx                                          #14.5
        pushl     $L_main_14__hpo_threaded_loop0_2.34           #14.5
        pushl     $3                                            #14.5
        pushl     $.2.4_2_hpo_loc_struct_pack.36                #14.5
        call      __kmpc_fork_call                              #14.5
                                # LOE ebx esi edi
..B1.109:                       # Preds ..B1.7
        addl      $24, %esp                                     #14.5
        jmp       ..B1.26       # Prob 100%                     #14.5
                                # LOE ebx esi edi
..B1.8:                         # Preds ..B1.6
        pushl     144(%esp)                                     #14.5
        pushl     $.2.4_2_hpo_loc_struct_pack.36                #14.5
        call      __kmpc_serialized_parallel                    #14.5
                                # LOE ebx esi edi
..B1.110:                       # Preds ..B1.8
        addl      $8, %esp                                      #14.5
                                # LOE ebx esi edi
..B1.9:                         # Preds ..B1.110
        movl      %edi, %eax                                    #14.5
        andl      $15, %eax                                     #14.5
        je        ..B1.14       # Prob 50%                      #14.5
                                # LOE eax ebx esi edi
..B1.10:                        # Preds ..B1.9
        testb     $3, %al                                       #14.5
        jne       ..B1.96       # Prob 10%                      #14.5
                                # LOE eax ebx esi edi
..B1.11:                        # Preds ..B1.10
        negl      %eax                                          #14.5
        addl      $16, %eax                                     #14.5
        shrl      $2, %eax                                      #14.5
        xorl      %ecx, %ecx                                    #14.5
        xorl      %edx, %edx                                    #
                                # LOE eax edx ecx ebx edi
..B1.12:                        # Preds ..B1.12 ..B1.11
        pxor      %xmm0, %xmm0                                  #16.9
        lea       1(%edx), %esi                                 #17.9
        pxor      %xmm1, %xmm1                                  #17.20
        decl      %edx                                          #14.5
        cvtsi2ssl %ecx, %xmm0                                   #16.9
        movss     %xmm0, (%ebx,%ecx,4)                          #12.24
        cvtsi2ssl %esi, %xmm1                                   #17.20
        movss     %xmm1, (%edi,%ecx,4)                          #13.24
        incl      %ecx                                          #14.5
        cmpl      %eax, %ecx                                    #14.5
        jb        ..B1.12       # Prob 99%                      #14.5
                                # LOE eax edx ecx ebx edi
..B1.14:                        # Preds ..B1.12 ..B1.9
        movl      %ebx, 128(%esp)                               #
        movl      %eax, %ebx                                    #14.5
        movl      %edi, 132(%esp)                               #
        negl      %ebx                                          #14.5
        movl      %ebx, %edx                                    #14.5
        andl      $7, %edx                                      #14.5
        negl      %edx                                          #14.5
        addl      $10000, %edx                                  #14.5
        movl      %edx, 136(%esp)                               #14.5
        lea       1(%eax), %esi                                 #14.5
        lea       2(%eax), %edi                                 #14.5
        lea       3(%eax), %edx                                 #14.5
        movl      $4, %ecx                                      #14.5
        movd      %ecx, %xmm1                                   #14.5
        pshufd    $0, %xmm1, %xmm1                              #14.5
        movl      $-4, %ecx                                     #17.20
        movd      %eax, %xmm2                                   #14.5
        movd      %esi, %xmm0                                   #14.5
        punpckldq %xmm0, %xmm2                                  #14.5
        movd      %edi, %xmm4                                   #14.5
        movd      %edx, %xmm3                                   #14.5
        punpckldq %xmm3, %xmm4                                  #14.5
        punpcklqdq %xmm4, %xmm2                                 #14.5
        lea       1(%ebx), %esi                                 #17.20
        lea       -1(%ebx), %edi                                #17.20
        lea       -2(%ebx), %edx                                #17.20
        movd      %ecx, %xmm5                                   #17.20
        pshufd    $0, %xmm5, %xmm3                              #17.20
        movd      %esi, %xmm0                                   #17.20
        movd      %ebx, %xmm6                                   #17.20
        punpckldq %xmm6, %xmm0                                  #17.20
        lea       (,%eax,4), %ebx                               #
        movl      %ebx, 140(%esp)                               #
        movl      128(%esp), %ebx                               #12.24
        lea       (%ebx,%eax,4), %ecx                           #12.24
        testb     $15, %cl                                      #14.5
        movd      %edi, %xmm4                                   #17.20
        movd      %edx, %xmm7                                   #17.20
        punpckldq %xmm7, %xmm4                                  #17.20
        movl      136(%esp), %edx                               #14.5
        movl      132(%esp), %edi                               #14.5
        punpcklqdq %xmm4, %xmm0                                 #17.20
        je        ..B1.18       # Prob 60%                      #14.5
                                # LOE eax edx ebx esi edi dl bl dh bh xmm0 xmm1 xmm2 xmm3
..B1.15:                        # Preds ..B1.14
        movl      140(%esp), %ecx                               #
                                # LOE eax edx ecx ebx esi edi xmm0 xmm1 xmm2 xmm3
..B1.16:                        # Preds ..B1.16 ..B1.15
        cvtdq2ps  %xmm2, %xmm4                                  #16.9
        movups    %xmm4, (%ecx,%ebx)                            #12.24
        cvtdq2ps  %xmm0, %xmm5                                  #17.20
        movaps    %xmm5, (%ecx,%edi)                            #13.24
        paddd     %xmm1, %xmm2                                  #17.9
        cvtdq2ps  %xmm2, %xmm6                                  #16.9
        movups    %xmm6, 16(%ebx,%eax,4)                        #12.24
        paddd     %xmm3, %xmm0                                  #17.20
        cvtdq2ps  %xmm0, %xmm7                                  #17.20
        movaps    %xmm7, 16(%edi,%eax,4)                        #13.24
        paddd     %xmm1, %xmm2                                  #17.9
        paddd     %xmm3, %xmm0                                  #17.20
        addl      $32, %ecx                                     #14.5
        addl      $8, %eax                                      #14.5
        cmpl      %edx, %eax                                    #14.5
        jb        ..B1.16       # Prob 99%                      #14.5
        jmp       ..B1.21       # Prob 100%                     #14.5
                                # LOE eax edx ecx ebx esi edi xmm0 xmm1 xmm2 xmm3
..B1.18:                        # Preds ..B1.14
        movl      140(%esp), %ecx                               #
                                # LOE eax edx ecx ebx esi edi xmm0 xmm1 xmm2 xmm3
..B1.19:                        # Preds ..B1.19 ..B1.18
        cvtdq2ps  %xmm2, %xmm4                                  #16.9
        cvtdq2ps  %xmm0, %xmm5                                  #17.20
        movaps    %xmm4, (%ecx,%ebx)                            #12.24
        movaps    %xmm5, (%ecx,%edi)                            #13.24
        paddd     %xmm1, %xmm2                                  #17.9
        cvtdq2ps  %xmm2, %xmm6                                  #16.9
        movaps    %xmm6, 16(%ebx,%eax,4)                        #12.24
        paddd     %xmm3, %xmm0                                  #17.20
        cvtdq2ps  %xmm0, %xmm7                                  #17.20
        movaps    %xmm7, 16(%edi,%eax,4)                        #13.24
        paddd     %xmm1, %xmm2                                  #17.9
        paddd     %xmm3, %xmm0                                  #17.20
        addl      $32, %ecx                                     #14.5
        addl      $8, %eax                                      #14.5
        cmpl      %edx, %eax                                    #14.5
        jb        ..B1.19       # Prob 99%                      #14.5
                                # LOE eax edx ecx ebx esi edi xmm0 xmm1 xmm2 xmm3
..B1.21:                        # Preds ..B1.19 ..B1.16 ..B1.96
        movl      %edx, %eax                                    #
        negl      %eax                                          #
        cmpl      $10000, %edx                                  #14.5
        jae       ..B1.25       # Prob 0%                       #14.5
                                # LOE eax edx ebx esi edi
..B1.23:                        # Preds ..B1.21 ..B1.23
        pxor      %xmm0, %xmm0                                  #16.9
        lea       1(%eax), %ecx                                 #17.9
        pxor      %xmm1, %xmm1                                  #17.20
        decl      %eax                                          #14.5
        cvtsi2ssl %edx, %xmm0                                   #16.9
        movss     %xmm0, (%ebx,%edx,4)                          #12.24
        cvtsi2ssl %ecx, %xmm1                                   #17.20
        movss     %xmm1, (%edi,%edx,4)                          #13.24
        incl      %edx                                          #14.5
        cmpl      $10000, %edx                                  #14.5
        jb        ..B1.23       # Prob 99%                      #14.5
                                # LOE eax edx ebx esi edi
..B1.25:                        # Preds ..B1.23 ..B1.21
        pushl     144(%esp)                                     #14.5
        pushl     $.2.4_2_hpo_loc_struct_pack.36                #14.5
        call      __kmpc_end_serialized_parallel                #14.5
                                # LOE ebx esi edi
..B1.111:                       # Preds ..B1.25
        addl      $8, %esp                                      #14.5
                                # LOE ebx esi edi
..B1.26:                        # Preds ..B1.111 ..B1.109
        pushl     $.2.4_2_hpo_loc_struct_pack.61                #19.12
        call      __kmpc_ok_to_fork                             #19.12
                                # LOE eax ebx esi edi
..B1.112:                       # Preds ..B1.26
        popl      %ecx                                          #19.12
                                # LOE eax ebx esi edi
..B1.27:                        # Preds ..B1.112
        testl     %eax, %eax                                    #19.12
        je        ..B1.30       # Prob 50%                      #19.12
                                # LOE ebx esi edi
..B1.28:                        # Preds ..B1.27
        movl      %edi, 144(%esp)                               #19.12
        movl      %ebx, 148(%esp)                               #19.12
        lea       140(%esp), %edi                               #19.12
        lea       144(%esp), %ebx                               #19.12
        lea       148(%esp), %ecx                               #19.12
        lea       152(%esp), %edx                               #19.12
        xorl      %eax, %eax                                    #19.12
        movl      %eax, 140(%esp)                               #19.12
        movl      %eax, 152(%esp)                               #19.12
        pushl     %edx                                          #19.12
        pushl     %ecx                                          #19.12
        pushl     %ebx                                          #19.12
        pushl     %edi                                          #19.12
        pushl     $L_main_19__hpo_threaded_loop1_2.59           #19.12
        pushl     $4                                            #19.12
        pushl     $.2.4_2_hpo_loc_struct_pack.61                #19.12
        call      __kmpc_fork_call                              #19.12
                                # LOE esi
..B1.113:                       # Preds ..B1.28
        addl      $28, %esp                                     #19.12
                                # LOE esi
..B1.29:                        # Preds ..B1.113
        movss     140(%esp), %xmm0                              #19.12
        jmp       ..B1.47       # Prob 100%                     #19.12
                                # LOE esi xmm0
..B1.30:                        # Preds ..B1.27
        pushl     144(%esp)                                     #19.12
        pushl     $.2.4_2_hpo_loc_struct_pack.61                #19.12
        call      __kmpc_serialized_parallel                    #19.12
                                # LOE ebx esi edi
..B1.114:                       # Preds ..B1.30
        addl      $8, %esp                                      #19.12
                                # LOE ebx esi edi
..B1.31:                        # Preds ..B1.114
        movl      %edi, %eax                                    #19.12
        andl      $15, %eax                                     #19.12
        je        ..B1.34       # Prob 50%                      #19.12
                                # LOE eax ebx esi edi
..B1.32:                        # Preds ..B1.31
        testb     $3, %al                                       #19.12
        jne       ..B1.97       # Prob 10%                      #19.12
                                # LOE eax ebx esi edi
..B1.33:                        # Preds ..B1.32
        negl      %eax                                          #19.12
        addl      $16, %eax                                     #19.12
        shrl      $2, %eax                                      #19.12
                                # LOE eax ebx esi edi
..B1.34:                        # Preds ..B1.33 ..B1.31
        movl      %eax, %edx                                    #19.12
        negl      %edx                                          #19.12
        andl      $7, %edx                                      #19.12
        negl      %edx                                          #19.12
        addl      $10000, %edx                                  #19.12
        lea       (%ebx,%eax,4), %ecx                           #12.24
        testb     $15, %cl                                      #19.12
        je        ..B1.39       # Prob 60%                      #19.12
                                # LOE eax edx ebx esi edi
..B1.36:                        # Preds ..B1.34 ..B1.36
        movups    16(%ebx,%eax,4), %xmm0                        #12.24
        addps     16(%edi,%eax,4), %xmm0                        #19.12
        addl      $8, %eax                                      #19.12
        cmpl      %edx, %eax                                    #19.12
        jb        ..B1.36       # Prob 99%                      #19.12
        jmp       ..B1.41       # Prob 100%                     #19.12
                                # LOE eax edx ebx esi edi xmm0
..B1.39:                        # Preds ..B1.34 ..B1.39
        movaps    16(%ebx,%eax,4), %xmm0                        #12.24
        addps     16(%edi,%eax,4), %xmm0                        #19.12
        addl      $8, %eax                                      #19.12
        cmpl      %edx, %eax                                    #19.12
        jb        ..B1.39       # Prob 99%                      #19.12
                                # LOE eax edx ebx esi edi xmm0
..B1.41:                        # Preds ..B1.39 ..B1.36
        shufps    $3, %xmm0, %xmm0                              #19.12
                                # LOE edx ebx esi edi xmm0
..B1.42:                        # Preds ..B1.41 ..B1.97
        cmpl      $10000, %edx                                  #19.12
        jae       ..B1.46       # Prob 0%                       #19.12
                                # LOE edx ebx esi edi xmm0
..B1.44:                        # Preds ..B1.42 ..B1.44
        movss     (%ebx,%edx,4), %xmm0                          #12.24
        addss     (%edi,%edx,4), %xmm0                          #19.12
        incl      %edx                                          #19.12
        cmpl      $10000, %edx                                  #19.12
        jb        ..B1.44       # Prob 99%                      #19.12
                                # LOE edx ebx esi edi xmm0
..B1.46:                        # Preds ..B1.44 ..B1.42
        pushl     144(%esp)                                     #19.12
        pushl     $.2.4_2_hpo_loc_struct_pack.61                #19.12
        movss     %xmm0, 148(%esp)                              #19.12
        call      __kmpc_end_serialized_parallel                #19.12
                                # LOE esi
..B1.115:                       # Preds ..B1.46
        movss     148(%esp), %xmm0                              #
        addl      $8, %esp                                      #19.12
                                # LOE esi xmm0
..B1.47:                        # Preds ..B1.29 ..B1.115
        movl      $_2__STRING.0.5, (%esp)                       #20.12
        pxor      %xmm1, %xmm1                                  #20.26
        movss     %xmm0, %xmm1                                  #20.26
        cvtps2pd  %xmm1, %xmm0                                  #20.26
        movsd     %xmm0, 4(%esp)                                #20.26
        call      printf                                        #20.5
                                # LOE esi
..B1.48:                        # Preds ..B1.47
        pushl     $.2.4_2_hpo_loc_struct_pack.17                #21.1
        call      __kmpc_end                                    #21.1
                                # LOE esi
..B1.49:                        # Preds ..B1.48
        xorl      %eax, %eax                                    #21.1
        addl      $248, %esp                                    #21.1
        popl      %ebx                                          #21.1
        popl      %esi                                          #21.1
        popl      %edi                                          #21.1
        movl      %ebp, %esp                                    #21.1
        popl      %ebp                                          #21.1
        ret                                                     #21.1
                                # LOE
L_main_19__hpo_threaded_loop1_2.59:
# parameter 1: 8 + %ebp
# parameter 2: 12 + %ebp
# parameter 3: 16 + %ebp
# parameter 4: 20 + %ebp
# parameter 5: 24 + %ebp
# parameter 6: 28 + %ebp
..B1.50:                        # Preds ..B1.0
        pushl     %ebp                                          #19.12
        movl      %esp, %ebp                                    #19.12
        andl      $-128, %esp                                   #19.12
        pushl     %edi                                          #19.12
        pushl     %esi                                          #19.12
        pushl     %ebx                                          #19.12
        subl      $244, %esp                                    #19.12
        pushl     $3                                            #19.12
        call      __intel_new_proc_init                         #19.12
                                # LOE
..B1.117:                       # Preds ..B1.50
        stmxcsr   136(%esp)                                     #19.12
        orl       $32768, 136(%esp)                             #19.12
        ldmxcsr   136(%esp)                                     #19.12
        movl      $10000, 156(%esp)                             #19.12
        lea       148(%esp), %edi                               #19.12
        xorl      %eax, %eax                                    #19.12
        movl      $1, %edx                                      #19.12
        movl      %eax, 148(%esp)                               #19.12
        movl      %edx, 152(%esp)                               #19.12
        movl      %edx, 132(%esp)                               #19.12
        lea       152(%esp), %esi                               #19.12
        lea       156(%esp), %ebx                               #19.12
        lea       132(%esp), %ecx                               #19.12
        pushl     %eax                                          #19.12
        movl      8(%ebp), %eax                                 #19.12
        pushl     %edx                                          #19.12
        pushl     %ecx                                          #19.12
        pushl     %ebx                                          #19.12
        pushl     %esi                                          #19.12
        pushl     %edi                                          #19.12
        pushl     $34                                           #19.12
        pushl     (%eax)                                        #19.12
        pushl     $.2.4_2_hpo_loc_struct_pack.61                #19.12
        call      __kmpc_for_static_init_4                      #19.12
                                # LOE
..B1.118:                       # Preds ..B1.117
        addl      $40, %esp                                     #19.12
                                # LOE
..B1.51:                        # Preds ..B1.118
        movl      24(%ebp), %ecx                                #19.12
        movl      20(%ebp), %edi                                #19.12
        movl      144(%esp), %esi                               #19.12
        movl      148(%esp), %eax                               #19.12
        movl      (%edi), %edi                                  #19.12
        movl      (%ecx), %ecx                                  #19.12
        movl      152(%esp), %ebx                               #19.12
        lea       -1(%eax), %edx                                #19.12
        cmpl      $10000, %eax                                  #19.12
        ja        ..B1.68       # Prob 50%                      #19.12
                                # LOE eax edx ecx ebx esi edi
..B1.52:                        # Preds ..B1.51
        subl      %edx, %ebx                                    #19.12
        lea       -4(,%eax,4), %eax                             #19.12
        movl      %eax, 132(%esp)                               #19.12
        addl      %eax, %edi                                    #13.24
        movl      %edi, %edx                                    #19.12
        andl      $15, %edx                                     #19.12
        movl      %edx, 136(%esp)                               #19.12
        je        ..B1.55       # Prob 50%                      #19.12
                                # LOE edx ecx ebx esi edi dl dh
..B1.53:                        # Preds ..B1.52
        testb     $3, 136(%esp)                                 #19.12
        jne       ..B1.98       # Prob 10%                      #19.12
                                # LOE edx ecx ebx esi edi dl dh
..B1.54:                        # Preds ..B1.53
        movl      %edx, %eax                                    #19.12
        negl      %eax                                          #19.12
        addl      $16, %eax                                     #19.12
        shrl      $2, %eax                                      #19.12
        movl      %eax, 136(%esp)                               #19.12
                                # LOE ecx ebx esi edi
..B1.55:                        # Preds ..B1.54 ..B1.52
        movl      136(%esp), %eax                               #19.12
        lea       8(%eax), %edx                                 #19.12
        cmpl      %edx, %ebx                                    #19.12
        jb        ..B1.98       # Prob 10%                      #19.12
                                # LOE eax ecx ebx esi edi al ah
..B1.56:                        # Preds ..B1.55
        movl      %ebx, %edx                                    #19.12
        subl      %eax, %edx                                    #19.12
        andl      $7, %edx                                      #19.12
        negl      %edx                                          #19.12
        addl      %ebx, %edx                                    #19.12
        movl      %edx, 140(%esp)                               #19.12
        movl      132(%esp), %edx                               #12.24
        addl      %ecx, %edx                                    #12.24
        lea       (%edx,%eax,4), %eax                           #19.12
        testb     $15, %al                                      #19.12
        movl      140(%esp), %eax                               #19.12
        je        ..B1.60       # Prob 60%                      #19.12
                                # LOE eax edx ecx ebx esi edi al dl ah dh
..B1.57:                        # Preds ..B1.56
        movl      %esi, 140(%esp)                               #
        movl      136(%esp), %esi                               #
                                # LOE eax edx ecx ebx esi edi
..B1.58:                        # Preds ..B1.58 ..B1.57
        movups    16(%edx,%esi,4), %xmm0                        #12.24
        addps     16(%edi,%esi,4), %xmm0                        #19.12
        addl      $8, %esi                                      #19.12
        cmpl      %eax, %esi                                    #19.12
        jb        ..B1.58       # Prob 99%                      #19.12
        jmp       ..B1.62       # Prob 100%                     #19.12
                                # LOE eax edx ecx ebx esi edi xmm0
..B1.60:                        # Preds ..B1.56
        movl      %esi, 140(%esp)                               #
        movl      136(%esp), %esi                               #
                                # LOE eax edx ecx ebx esi edi
..B1.61:                        # Preds ..B1.61 ..B1.60
        movaps    16(%edx,%esi,4), %xmm0                        #12.24
        addps     16(%edi,%esi,4), %xmm0                        #19.12
        addl      $8, %esi                                      #19.12
        cmpl      %eax, %esi                                    #19.12
        jb        ..B1.61       # Prob 99%                      #19.12
                                # LOE eax edx ecx ebx esi edi xmm0
..B1.62:                        # Preds ..B1.58 ..B1.61
        movl      140(%esp), %esi                               #
                                # LOE eax ecx ebx esi edi xmm0
..B1.63:                        # Preds ..B1.62
        shufps    $3, %xmm0, %xmm0                              #19.12
                                # LOE eax ecx ebx esi edi xmm0
..B1.64:                        # Preds ..B1.63 ..B1.98
        cmpl      %ebx, %eax                                    #19.12
        jae       ..B1.69       # Prob 0%                       #19.12
                                # LOE eax ecx ebx esi edi xmm0
..B1.65:                        # Preds ..B1.64
        addl      132(%esp), %ecx                               #12.24
                                # LOE eax ecx ebx esi edi
..B1.66:                        # Preds ..B1.66 ..B1.65
        movss     (%ecx,%eax,4), %xmm0                          #12.24
        addss     (%edi,%eax,4), %xmm0                          #19.12
        incl      %eax                                          #19.12
        cmpl      %ebx, %eax                                    #19.12
        jb        ..B1.66       # Prob 99%                      #19.12
        jmp       ..B1.69       # Prob 100%                     #19.12
                                # LOE eax ecx ebx esi edi xmm0
..B1.68:                        # Preds ..B1.51
        pxor      %xmm0, %xmm0                                  #
                                # LOE esi xmm0
..B1.69:                        # Preds ..B1.66 ..B1.64 ..B1.68
        testl     %esi, %esi                                    #19.12
        je        ..B1.71       # Prob 50%                      #19.12
                                # LOE xmm0
..B1.70:                        # Preds ..B1.69
        movl      16(%ebp), %eax                                #19.12
        movss     %xmm0, (%eax)                                 #19.12
                                # LOE
..B1.71:                        # Preds ..B1.69 ..B1.70
        movl      8(%ebp), %eax                                 #19.12
        pushl     (%eax)                                        #19.12
        pushl     $.2.4_2_hpo_loc_struct_pack.61                #19.12
        call      __kmpc_for_static_fini                        #19.12
                                # LOE
..B1.72:                        # Preds ..B1.71
        xorl      %eax, %eax                                    #19.12
        addl      $252, %esp                                    #19.12
        popl      %ebx                                          #19.12
        popl      %esi                                          #19.12
        popl      %edi                                          #19.12
        movl      %ebp, %esp                                    #19.12
        popl      %ebp                                          #19.12
        ret                                                     #19.12
                                # LOE
L_main_14__hpo_threaded_loop0_2.34:
# parameter 1: 8 + %ebp
# parameter 2: 12 + %ebp
# parameter 3: 16 + %ebp
# parameter 4: 20 + %ebp
# parameter 5: 24 + %ebp
..B1.73:                        # Preds ..B1.0
        pushl     %ebp                                          #14.5
        movl      %esp, %ebp                                    #14.5
        andl      $-128, %esp                                   #14.5
        pushl     %edi                                          #14.5
        pushl     %esi                                          #14.5
        pushl     %ebx                                          #14.5
        subl      $244, %esp                                    #14.5
        pushl     $3                                            #14.5
        call      __intel_new_proc_init                         #14.5
                                # LOE
..B1.120:                       # Preds ..B1.73
        stmxcsr   140(%esp)                                     #14.5
        orl       $32768, 140(%esp)                             #14.5
        ldmxcsr   140(%esp)                                     #14.5
        movl      $10000, 180(%esp)                             #14.5
        lea       132(%esp), %edi                               #14.5
        xorl      %eax, %eax                                    #14.5
        movl      $1, %edx                                      #14.5
        movl      %eax, 132(%esp)                               #14.5
        movl      %edx, 176(%esp)                               #14.5
        movl      %edx, 136(%esp)                               #14.5
        lea       176(%esp), %esi                               #14.5
        lea       180(%esp), %ebx                               #14.5
        lea       136(%esp), %ecx                               #14.5
        pushl     %eax                                          #14.5
        movl      8(%ebp), %eax                                 #14.5
        pushl     %edx                                          #14.5
        pushl     %ecx                                          #14.5
        pushl     %ebx                                          #14.5
        pushl     %esi                                          #14.5
        pushl     %edi                                          #14.5
        pushl     $34                                           #14.5
        pushl     (%eax)                                        #14.5
        pushl     $.2.4_2_hpo_loc_struct_pack.36                #14.5
        call      __kmpc_for_static_init_4                      #14.5
                                # LOE
..B1.121:                       # Preds ..B1.120
        addl      $40, %esp                                     #14.5
                                # LOE
..B1.74:                        # Preds ..B1.121
        movl      20(%ebp), %esi                                #14.5
        movl      16(%ebp), %ecx                                #14.5
        movl      172(%esp), %ebx                               #14.5
        movl      176(%esp), %edx                               #14.5
        movl      (%ecx), %ecx                                  #14.5
        movl      (%esi), %edi                                  #14.5
        lea       -1(%ebx), %eax                                #14.5
        cmpl      $10000, %ebx                                  #14.5
        ja        ..B1.94       # Prob 50%                      #14.5
                                # LOE eax edx ecx ebx edi
..B1.75:                        # Preds ..B1.74
        subl      %eax, %edx                                    #14.5
        lea       -4(,%ebx,4), %esi                             #17.9
        movl      %esi, 148(%esp)                               #17.9
        addl      %esi, %edi                                    #13.24
        movl      %edi, %esi                                    #14.5
        andl      $15, %esi                                     #14.5
        movl      %esi, 164(%esp)                               #14.5
        je        ..B1.78       # Prob 50%                      #14.5
                                # LOE eax edx ecx ebx esi edi
..B1.76:                        # Preds ..B1.75
        testb     $3, 164(%esp)                                 #14.5
        jne       ..B1.100      # Prob 10%                      #14.5
                                # LOE eax edx ecx ebx esi edi
..B1.77:                        # Preds ..B1.76
        negl      %esi                                          #14.5
        addl      $16, %esi                                     #14.5
        shrl      $2, %esi                                      #14.5
        movl      %esi, 164(%esp)                               #14.5
                                # LOE eax edx ecx ebx esi edi
..B1.78:                        # Preds ..B1.77 ..B1.75
        lea       8(%esi), %esi                                 #14.5
        cmpl      %esi, %edx                                    #14.5
        jb        ..B1.100      # Prob 10%                      #14.5
                                # LOE eax edx ecx ebx edi
..B1.79:                        # Preds ..B1.78
        movl      164(%esp), %esi                               #14.5
        movl      %edi, 168(%esp)                               #
        movl      %edx, %edi                                    #14.5
        subl      %esi, %edi                                    #14.5
        andl      $7, %edi                                      #14.5
        negl      %edi                                          #14.5
        addl      %edx, %edi                                    #14.5
        movl      %edi, 152(%esp)                               #14.5
        movl      148(%esp), %edi                               #12.24
        addl      %ecx, %edi                                    #12.24
        movl      %edi, 160(%esp)                               #12.24
        movl      168(%esp), %edi                               #14.5
        testl     %esi, %esi                                    #14.5
        jbe       ..B1.83       # Prob 0%                       #14.5
                                # LOE eax edx ecx ebx esi edi
..B1.80:                        # Preds ..B1.79
        movl      %edx, 136(%esp)                               #
        movl      160(%esp), %edx                               #
        movl      %ecx, 140(%esp)                               #
        movl      %esi, %ecx                                    #
        movl      %eax, 144(%esp)                               #
        xorl      %esi, %esi                                    #
                                # LOE edx ecx ebx esi edi
..B1.81:                        # Preds ..B1.81 ..B1.80
        lea       -1(%esi,%ebx), %eax                           #16.2
        pxor      %xmm0, %xmm0                                  #16.9
        pxor      %xmm1, %xmm1                                  #17.20
        cvtsi2ssl %eax, %xmm0                                   #16.9
        movss     %xmm0, (%edx,%esi,4)                          #12.24
        negl      %eax                                          #17.20
        incl      %eax                                          #17.20
        cvtsi2ssl %eax, %xmm1                                   #17.20
        movss     %xmm1, (%edi,%esi,4)                          #13.24
        incl      %esi                                          #14.5
        cmpl      %ecx, %esi                                    #14.5
        jb        ..B1.81       # Prob 99%                      #14.5
                                # LOE edx ecx ebx esi edi
..B1.82:                        # Preds ..B1.81
        movl      136(%esp), %edx                               #
        movl      144(%esp), %eax                               #
        movl      %ecx, 164(%esp)                               #
        movl      140(%esp), %ecx                               #
                                # LOE eax edx ecx ebx edi
..B1.83:                        # Preds ..B1.79 ..B1.82
        movl      %eax, 144(%esp)                               #
        movl      164(%esp), %eax                               #14.5
        movl      %ebx, 156(%esp)                               #
        movl      %ecx, 140(%esp)                               #
        movl      %edx, 136(%esp)                               #
        movl      %edi, 168(%esp)                               #
        lea       -1(%eax,%ebx), %ecx                           #14.5
        lea       1(%ecx), %ebx                                 #14.5
        lea       2(%ecx), %esi                                 #14.5
        lea       3(%ecx), %edi                                 #14.5
        movl      $4, %edx                                      #14.5
        movd      %edx, %xmm1                                   #14.5
        pshufd    $0, %xmm1, %xmm1                              #14.5
        movl      $-4, %edx                                     #17.20
        movd      %ecx, %xmm2                                   #14.5
        movd      %ebx, %xmm0                                   #14.5
        punpckldq %xmm0, %xmm2                                  #14.5
        movl      %eax, %ebx                                    #17.20
        negl      %ebx                                          #17.20
        movd      %esi, %xmm4                                   #14.5
        movd      %edi, %xmm3                                   #14.5
        punpckldq %xmm3, %xmm4                                  #14.5
        subl      144(%esp), %ebx                               #17.20
        punpcklqdq %xmm4, %xmm2                                 #14.5
        lea       1(%ebx), %ecx                                 #17.20
        lea       -1(%ebx), %esi                                #17.20
        lea       -2(%ebx), %edi                                #17.20
        movd      %edx, %xmm5                                   #17.20
        movl      160(%esp), %edx                               #16.2
        pshufd    $0, %xmm5, %xmm3                              #17.20
        lea       (%edx,%eax,4), %eax                           #16.2
        movl      136(%esp), %edx                               #14.5
        testb     $15, %al                                      #14.5
        movd      %ecx, %xmm0                                   #17.20
        movd      %ebx, %xmm6                                   #17.20
        punpckldq %xmm6, %xmm0                                  #17.20
        movl      140(%esp), %ecx                               #14.5
        movl      156(%esp), %ebx                               #14.5
        movd      %esi, %xmm4                                   #17.20
        movd      %edi, %xmm7                                   #17.20
        movl      168(%esp), %edi                               #14.5
        punpckldq %xmm7, %xmm4                                  #17.20
        punpcklqdq %xmm4, %xmm0                                 #17.20
        je        ..B1.87       # Prob 60%                      #14.5
                                # LOE edx ecx ebx edi dl cl bl dh ch bh xmm0 xmm1 xmm2 xmm3
..B1.84:                        # Preds ..B1.83
        movl      152(%esp), %eax                               #
        movl      164(%esp), %esi                               #
        movl      %ebx, 156(%esp)                               #
        movl      160(%esp), %ebx                               #
                                # LOE eax edx ecx ebx esi edi xmm0 xmm1 xmm2 xmm3
..B1.85:                        # Preds ..B1.85 ..B1.84
        cvtdq2ps  %xmm2, %xmm4                                  #16.9
        movups    %xmm4, (%ebx,%esi,4)                          #12.24
        cvtdq2ps  %xmm0, %xmm5                                  #17.20
        movaps    %xmm5, (%edi,%esi,4)                          #13.24
        paddd     %xmm1, %xmm2                                  #17.9
        cvtdq2ps  %xmm2, %xmm6                                  #16.9
        movups    %xmm6, 16(%ebx,%esi,4)                        #12.24
        paddd     %xmm3, %xmm0                                  #17.20
        cvtdq2ps  %xmm0, %xmm7                                  #17.20
        movaps    %xmm7, 16(%edi,%esi,4)                        #13.24
        paddd     %xmm1, %xmm2                                  #17.9
        paddd     %xmm3, %xmm0                                  #17.20
        addl      $8, %esi                                      #14.5
        cmpl      %eax, %esi                                    #14.5
        jb        ..B1.85       # Prob 99%                      #14.5
        jmp       ..B1.89       # Prob 100%                     #14.5
                                # LOE eax edx ecx ebx esi edi xmm0 xmm1 xmm2 xmm3
..B1.87:                        # Preds ..B1.83
        movl      152(%esp), %eax                               #
        movl      164(%esp), %esi                               #
        movl      %ebx, 156(%esp)                               #
        movl      160(%esp), %ebx                               #
                                # LOE eax edx ecx ebx esi edi xmm0 xmm1 xmm2 xmm3
..B1.88:                        # Preds ..B1.88 ..B1.87
        cvtdq2ps  %xmm2, %xmm4                                  #16.9
        cvtdq2ps  %xmm0, %xmm5                                  #17.20
        movaps    %xmm4, (%ebx,%esi,4)                          #12.24
        movaps    %xmm5, (%edi,%esi,4)                          #13.24
        paddd     %xmm1, %xmm2                                  #17.9
        cvtdq2ps  %xmm2, %xmm6                                  #16.9
        movaps    %xmm6, 16(%ebx,%esi,4)                        #12.24
        paddd     %xmm3, %xmm0                                  #17.20
        cvtdq2ps  %xmm0, %xmm7                                  #17.20
        movaps    %xmm7, 16(%edi,%esi,4)                        #13.24
        paddd     %xmm1, %xmm2                                  #17.9
        paddd     %xmm3, %xmm0                                  #17.20
        addl      $8, %esi                                      #14.5
        cmpl      %eax, %esi                                    #14.5
        jb        ..B1.88       # Prob 99%                      #14.5
                                # LOE eax edx ecx ebx esi edi xmm0 xmm1 xmm2 xmm3
..B1.89:                        # Preds ..B1.85 ..B1.88
        movl      156(%esp), %ebx                               #
        movl      %eax, 152(%esp)                               #
                                # LOE eax edx ecx ebx edi al ah
..B1.90:                        # Preds ..B1.89 ..B1.100
        cmpl      152(%esp), %edx                               #14.5
        jbe       ..B1.94       # Prob 0%                       #14.5
                                # LOE eax edx ecx ebx edi al ah
..B1.91:                        # Preds ..B1.90
        movl      %eax, %esi                                    #12.24
        addl      %ecx, 148(%esp)                               #12.24
        movl      148(%esp), %ecx                               #12.24
                                # LOE edx ecx ebx esi edi
..B1.92:                        # Preds ..B1.92 ..B1.91
        lea       -1(%esi,%ebx), %eax                           #16.2
        pxor      %xmm0, %xmm0                                  #16.9
        pxor      %xmm1, %xmm1                                  #17.20
        cvtsi2ssl %eax, %xmm0                                   #16.9
        movss     %xmm0, (%ecx,%esi,4)                          #12.24
        negl      %eax                                          #17.20
        incl      %eax                                          #17.20
        cvtsi2ssl %eax, %xmm1                                   #17.20
        movss     %xmm1, (%edi,%esi,4)                          #13.24
        incl      %esi                                          #14.5
        cmpl      %edx, %esi                                    #14.5
        jb        ..B1.92       # Prob 99%                      #14.5
                                # LOE edx ecx ebx esi edi
..B1.94:                        # Preds ..B1.92 ..B1.74 ..B1.90
        movl      8(%ebp), %eax                                 #14.5
        pushl     (%eax)                                        #14.5
        pushl     $.2.4_2_hpo_loc_struct_pack.36                #14.5
        call      __kmpc_for_static_fini                        #14.5
                                # LOE
..B1.95:                        # Preds ..B1.94
        xorl      %eax, %eax                                    #14.5
        addl      $252, %esp                                    #14.5
        popl      %ebx                                          #14.5
        popl      %esi                                          #14.5
        popl      %edi                                          #14.5
        movl      %ebp, %esp                                    #14.5
        popl      %ebp                                          #14.5
        ret                                                     #14.5
                                # LOE
..B1.96:                        # Preds ..B1.10                 # Infreq
        xorl      %edx, %edx                                    #14.5
        jmp       ..B1.21       # Prob 100%                     #14.5
                                # LOE edx ebx esi edi
..B1.97:                        # Preds ..B1.32                 # Infreq
        xorl      %edx, %edx                                    #
        pxor      %xmm0, %xmm0                                  #
        jmp       ..B1.42       # Prob 100%                     #
                                # LOE edx ebx esi edi xmm0
..B1.98:                        # Preds ..B1.55 ..B1.53         # Infreq
        xorl      %eax, %eax                                    #
        pxor      %xmm0, %xmm0                                  #
        jmp       ..B1.64       # Prob 100%                     #
                                # LOE eax ecx ebx esi edi xmm0
..B1.100:                       # Preds ..B1.78 ..B1.76         # Infreq
        xorl      %eax, %eax                                    #14.5
        movl      %eax, 152(%esp)                               #14.5
        jmp       ..B1.90       # Prob 100%                     #14.5
        .align    16,0x90
                                # LOE eax edx ecx ebx edi al ah
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
	.align 4
	.align 4
.2.4_2_hpo_loc_struct_pack.9:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.4_2__hpo_loc_pack.8
	.align 4
.2.4_2__hpo_loc_pack.8:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	49
	.byte	46
	.byte	99
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	56
	.byte	59
	.byte	56
	.byte	59
	.byte	59
	.align 4
.2.4_2_hpo_loc_struct_pack.25:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.4_2__hpo_loc_pack.24
	.align 4
.2.4_2__hpo_loc_pack.24:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	49
	.byte	46
	.byte	99
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	56
	.byte	59
	.byte	56
	.byte	59
	.byte	59
	.align 4
.2.4_2_hpo_loc_struct_pack.36:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.4_2__hpo_loc_pack.35
	.align 4
.2.4_2__hpo_loc_pack.35:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	49
	.byte	46
	.byte	99
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	52
	.byte	59
	.byte	49
	.byte	52
	.byte	59
	.byte	59
	.space 2	# pad
	.align 4
.2.4_2_hpo_loc_struct_pack.61:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.4_2__hpo_loc_pack.60
	.align 4
.2.4_2__hpo_loc_pack.60:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	49
	.byte	46
	.byte	99
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	57
	.byte	59
	.byte	49
	.byte	57
	.byte	59
	.byte	59
	.space 2	# pad
	.align 4
.2.4_2_hpo_loc_struct_pack.17:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.4_2__hpo_loc_pack.16
	.align 4
.2.4_2__hpo_loc_pack.16:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	49
	.byte	46
	.byte	99
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	50
	.byte	49
	.byte	59
	.byte	50
	.byte	49
	.byte	59
	.byte	59
	.data
# -- End  main, L_main_14__hpo_threaded_loop0_2.34, L_main_19__hpo_threaded_loop1_2.59
	.text
# -- Begin  calculate, L_calculate_10__hpo_threaded_loop0_2.120
# mark_begin;
       .align    16,0x90
	.globl calculate
calculate:
# parameter 1: 8 + %ebp
# parameter 2: 12 + %ebp
..B2.1:                         # Preds ..B2.0
        pushl     %ebp                                          #7.1
        movl      %esp, %ebp                                    #7.1
        andl      $-16, %esp                                    #7.1
        pushl     %esi                                          #7.1
        subl      $44, %esp                                     #7.1
        pushl     $.2.5_2_hpo_loc_struct_pack.111               #7.1
        call      __kmpc_global_thread_num                      #7.1
                                # LOE eax ebx edi
..B2.52:                        # Preds ..B2.1
        movl      %eax, 16(%esp)                                #7.1
                                # LOE ebx edi
..B2.2:                         # Preds ..B2.52
        pushl     $.2.5_2_hpo_loc_struct_pack.122               #10.5
        call      __kmpc_ok_to_fork                             #10.5
                                # LOE eax ebx edi
..B2.53:                        # Preds ..B2.2
        addl      $8, %esp                                      #10.5
                                # LOE eax ebx edi
..B2.3:                         # Preds ..B2.53
        movl      12(%ebp), %esi                                #10.5
        testl     %eax, %eax                                    #10.5
        je        ..B2.6        # Prob 50%                      #10.5
                                # LOE ebx esi edi
..B2.4:                         # Preds ..B2.3
        movl      %esi, 12(%esp)                                #10.5
        movl      8(%ebp), %esi                                 #10.5
        movl      %esi, 16(%esp)                                #10.5
        xorl      %eax, %eax                                    #10.5
        movl      %eax, 8(%esp)                                 #10.5
        movl      %eax, 20(%esp)                                #10.5
        lea       8(%esp), %esi                                 #10.5
        lea       12(%esp), %eax                                #10.5
        lea       16(%esp), %ecx                                #10.5
        lea       20(%esp), %edx                                #10.5
        pushl     %edx                                          #10.5
        pushl     %ecx                                          #10.5
        pushl     %eax                                          #10.5
        pushl     %esi                                          #10.5
        pushl     $L_calculate_10__hpo_threaded_loop0_2.120     #10.5
        pushl     $4                                            #10.5
        pushl     $.2.5_2_hpo_loc_struct_pack.122               #10.5
        call      __kmpc_fork_call                              #10.5
                                # LOE ebx edi
..B2.54:                        # Preds ..B2.4
        addl      $28, %esp                                     #10.5
                                # LOE ebx edi
..B2.5:                         # Preds ..B2.54
        movss     8(%esp), %xmm0                                #10.5
        jmp       ..B2.23       # Prob 100%                     #10.5
                                # LOE ebx edi xmm0
..B2.6:                         # Preds ..B2.3
        movl      12(%esp), %eax                                #7.1
        movl      %eax, 8(%esp)                                 #7.1
        pushl     %eax                                          #10.5
        pushl     $.2.5_2_hpo_loc_struct_pack.122               #10.5
        call      __kmpc_serialized_parallel                    #10.5
                                # LOE ebx esi edi
..B2.55:                        # Preds ..B2.6
        addl      $8, %esp                                      #10.5
                                # LOE ebx esi edi
..B2.7:                         # Preds ..B2.55
        movl      %esi, %eax                                    #10.5
        andl      $15, %eax                                     #10.5
        je        ..B2.10       # Prob 50%                      #10.5
                                # LOE eax ebx esi edi
..B2.8:                         # Preds ..B2.7
        testb     $3, %al                                       #10.5
        jne       ..B2.47       # Prob 10%                      #10.5
                                # LOE eax ebx esi edi
..B2.9:                         # Preds ..B2.8
        negl      %eax                                          #10.5
        addl      $16, %eax                                     #10.5
        shrl      $2, %eax                                      #10.5
                                # LOE eax ebx esi edi
..B2.10:                        # Preds ..B2.9 ..B2.7
        movl      8(%ebp), %ecx                                 #10.5
        movl      %eax, %edx                                    #10.5
        negl      %edx                                          #10.5
        andl      $7, %edx                                      #10.5
        negl      %edx                                          #10.5
        addl      $10000, %edx                                  #10.5
        lea       (%ecx,%eax,4), %ecx                           #10.5
        testb     $15, %cl                                      #10.5
        je        ..B2.14       # Prob 60%                      #10.5
                                # LOE eax edx ebx esi edi
..B2.11:                        # Preds ..B2.10
        movl      8(%ebp), %ecx                                 #
                                # LOE eax edx ecx ebx esi edi
..B2.12:                        # Preds ..B2.12 ..B2.11
        movups    16(%ecx,%eax,4), %xmm0                        #12.8
        addps     16(%esi,%eax,4), %xmm0                        #12.8
        addl      $8, %eax                                      #10.5
        cmpl      %edx, %eax                                    #10.5
        jb        ..B2.12       # Prob 99%                      #10.5
        jmp       ..B2.17       # Prob 100%                     #10.5
                                # LOE eax edx ecx ebx esi edi xmm0
..B2.14:                        # Preds ..B2.10
        movl      8(%ebp), %ecx                                 #
                                # LOE eax edx ecx ebx esi edi
..B2.15:                        # Preds ..B2.15 ..B2.14
        movaps    16(%ecx,%eax,4), %xmm0                        #12.8
        addps     16(%esi,%eax,4), %xmm0                        #12.8
        addl      $8, %eax                                      #10.5
        cmpl      %edx, %eax                                    #10.5
        jb        ..B2.15       # Prob 99%                      #10.5
                                # LOE eax edx ecx ebx esi edi xmm0
..B2.17:                        # Preds ..B2.15 ..B2.12
        shufps    $3, %xmm0, %xmm0                              #10.5
                                # LOE edx ebx esi edi xmm0
..B2.18:                        # Preds ..B2.17 ..B2.47
        cmpl      $10000, %edx                                  #10.5
        jae       ..B2.22       # Prob 0%                       #10.5
                                # LOE edx ebx esi edi xmm0
..B2.19:                        # Preds ..B2.18
        movl      8(%ebp), %eax                                 #
                                # LOE eax edx ebx esi edi
..B2.20:                        # Preds ..B2.20 ..B2.19
        movss     (%eax,%edx,4), %xmm0                          #12.2
        addss     (%esi,%edx,4), %xmm0                          #12.8
        incl      %edx                                          #10.5
        cmpl      $10000, %edx                                  #10.5
        jb        ..B2.20       # Prob 99%                      #10.5
                                # LOE eax edx ebx esi edi xmm0
..B2.22:                        # Preds ..B2.20 ..B2.18
        pushl     8(%esp)                                       #10.5
        pushl     $.2.5_2_hpo_loc_struct_pack.122               #10.5
        movss     %xmm0, 20(%esp)                               #10.5
        call      __kmpc_end_serialized_parallel                #10.5
                                # LOE ebx edi
..B2.56:                        # Preds ..B2.22
        movss     20(%esp), %xmm0                               #
        addl      $8, %esp                                      #10.5
                                # LOE ebx edi xmm0
..B2.23:                        # Preds ..B2.5 ..B2.56
        movss     %xmm0, 8(%esp)                                #14.12
        flds      8(%esp)                                       #14.12
        addl      $44, %esp                                     #14.12
        popl      %esi                                          #14.12
        movl      %ebp, %esp                                    #14.12
        popl      %ebp                                          #14.12
        ret                                                     #14.12
                                # LOE
L_calculate_10__hpo_threaded_loop0_2.120:
# parameter 1: 8 + %ebp
# parameter 2: 12 + %ebp
# parameter 3: 16 + %ebp
# parameter 4: 20 + %ebp
# parameter 5: 24 + %ebp
# parameter 6: 28 + %ebp
..B2.24:                        # Preds ..B2.0
        pushl     %ebp                                          #10.5
        movl      %esp, %ebp                                    #10.5
        andl      $-16, %esp                                    #10.5
        pushl     %esi                                          #10.5
        subl      $44, %esp                                     #10.5
        movl      %ebx, 4(%esp)                                 #10.5
        movl      %edi, (%esp)                                  #10.5
        movl      $10000, 32(%esp)                              #10.5
        xorl      %eax, %eax                                    #10.5
        movl      $1, %edx                                      #10.5
        movl      %eax, 24(%esp)                                #10.5
        movl      %edx, 28(%esp)                                #10.5
        movl      %edx, 8(%esp)                                 #10.5
        lea       24(%esp), %edi                                #10.5
        lea       28(%esp), %esi                                #10.5
        lea       32(%esp), %ebx                                #10.5
        lea       8(%esp), %ecx                                 #10.5
        pushl     %eax                                          #10.5
        movl      8(%ebp), %eax                                 #10.5
        pushl     %edx                                          #10.5
        pushl     %ecx                                          #10.5
        pushl     %ebx                                          #10.5
        pushl     %esi                                          #10.5
        pushl     %edi                                          #10.5
        pushl     $34                                           #10.5
        pushl     (%eax)                                        #10.5
        pushl     $.2.5_2_hpo_loc_struct_pack.122               #10.5
        call      __kmpc_for_static_init_4                      #10.5
                                # LOE
..B2.57:                        # Preds ..B2.24
        addl      $36, %esp                                     #10.5
                                # LOE
..B2.25:                        # Preds ..B2.57
        movl      24(%ebp), %edi                                #10.5
        movl      20(%ebp), %ecx                                #10.5
        movl      24(%esp), %esi                                #10.5
        movl      28(%esp), %eax                                #10.5
        movl      (%ecx), %ecx                                  #10.5
        movl      (%edi), %edi                                  #10.5
        movl      32(%esp), %ebx                                #10.5
        lea       -1(%eax), %edx                                #10.5
        cmpl      $10000, %eax                                  #10.5
        ja        ..B2.42       # Prob 50%                      #10.5
                                # LOE eax edx ecx ebx esi edi
..B2.26:                        # Preds ..B2.25
        subl      %edx, %ebx                                    #10.5
        lea       -4(,%eax,4), %eax                             #12.18
        movl      %eax, 12(%esp)                                #12.18
        addl      %eax, %ecx                                    #10.5
        movl      %ecx, %edx                                    #10.5
        andl      $15, %edx                                     #10.5
        movl      %edx, 16(%esp)                                #10.5
        je        ..B2.29       # Prob 50%                      #10.5
                                # LOE edx ecx ebx esi edi dl dh
..B2.27:                        # Preds ..B2.26
        testb     $3, 16(%esp)                                  #10.5
        jne       ..B2.48       # Prob 10%                      #10.5
                                # LOE edx ecx ebx esi edi dl dh
..B2.28:                        # Preds ..B2.27
        movl      %edx, %eax                                    #10.5
        negl      %eax                                          #10.5
        addl      $16, %eax                                     #10.5
        shrl      $2, %eax                                      #10.5
        movl      %eax, 16(%esp)                                #10.5
                                # LOE ecx ebx esi edi
..B2.29:                        # Preds ..B2.28 ..B2.26
        movl      16(%esp), %eax                                #10.5
        lea       8(%eax), %edx                                 #10.5
        cmpl      %edx, %ebx                                    #10.5
        jb        ..B2.48       # Prob 10%                      #10.5
                                # LOE eax ecx ebx esi edi al ah
..B2.30:                        # Preds ..B2.29
        movl      %ebx, %edx                                    #10.5
        subl      %eax, %edx                                    #10.5
        andl      $7, %edx                                      #10.5
        negl      %edx                                          #10.5
        addl      %ebx, %edx                                    #10.5
        movl      %edx, 20(%esp)                                #10.5
        movl      12(%esp), %edx                                #10.5
        addl      %edi, %edx                                    #10.5
        lea       (%edx,%eax,4), %eax                           #12.13
        testb     $15, %al                                      #10.5
        movl      20(%esp), %eax                                #10.5
        je        ..B2.34       # Prob 60%                      #10.5
                                # LOE eax edx ecx ebx esi edi al dl ah dh
..B2.31:                        # Preds ..B2.30
        movl      %esi, 20(%esp)                                #
        movl      16(%esp), %esi                                #
                                # LOE eax edx ecx ebx esi edi
..B2.32:                        # Preds ..B2.32 ..B2.31
        movups    16(%edx,%esi,4), %xmm0                        #12.8
        addps     16(%ecx,%esi,4), %xmm0                        #12.8
        addl      $8, %esi                                      #10.5
        cmpl      %eax, %esi                                    #10.5
        jb        ..B2.32       # Prob 99%                      #10.5
        jmp       ..B2.36       # Prob 100%                     #10.5
                                # LOE eax edx ecx ebx esi edi xmm0
..B2.34:                        # Preds ..B2.30
        movl      %esi, 20(%esp)                                #
        movl      16(%esp), %esi                                #
                                # LOE eax edx ecx ebx esi edi
..B2.35:                        # Preds ..B2.35 ..B2.34
        movaps    16(%edx,%esi,4), %xmm0                        #12.8
        addps     16(%ecx,%esi,4), %xmm0                        #12.8
        addl      $8, %esi                                      #10.5
        cmpl      %eax, %esi                                    #10.5
        jb        ..B2.35       # Prob 99%                      #10.5
                                # LOE eax edx ecx ebx esi edi xmm0
..B2.36:                        # Preds ..B2.32 ..B2.35
        movl      20(%esp), %esi                                #
                                # LOE eax ecx ebx esi edi xmm0
..B2.37:                        # Preds ..B2.36
        shufps    $3, %xmm0, %xmm0                              #10.5
                                # LOE eax ecx ebx esi edi xmm0
..B2.38:                        # Preds ..B2.37 ..B2.48
        cmpl      %ebx, %eax                                    #10.5
        jae       ..B2.43       # Prob 0%                       #10.5
                                # LOE eax ecx ebx esi edi xmm0
..B2.39:                        # Preds ..B2.38
        addl      %edi, 12(%esp)                                #
        movl      12(%esp), %edx                                #
                                # LOE eax edx ecx ebx esi
..B2.40:                        # Preds ..B2.40 ..B2.39
        movss     (%edx,%eax,4), %xmm0                          #12.2
        addss     (%ecx,%eax,4), %xmm0                          #12.8
        incl      %eax                                          #10.5
        cmpl      %ebx, %eax                                    #10.5
        jb        ..B2.40       # Prob 99%                      #10.5
        jmp       ..B2.43       # Prob 100%                     #10.5
                                # LOE eax edx ecx ebx esi xmm0
..B2.42:                        # Preds ..B2.25
        pxor      %xmm0, %xmm0                                  #
                                # LOE esi xmm0
..B2.43:                        # Preds ..B2.40 ..B2.38 ..B2.42
        testl     %esi, %esi                                    #10.5
        je        ..B2.45       # Prob 50%                      #10.5
                                # LOE xmm0
..B2.44:                        # Preds ..B2.43
        movl      16(%ebp), %eax                                #10.5
        movss     %xmm0, (%eax)                                 #10.5
                                # LOE
..B2.45:                        # Preds ..B2.43 ..B2.44
        movl      8(%ebp), %eax                                 #10.5
        pushl     (%eax)                                        #10.5
        pushl     $.2.5_2_hpo_loc_struct_pack.122               #10.5
        call      __kmpc_for_static_fini                        #10.5
                                # LOE
..B2.58:                        # Preds ..B2.45
        addl      $8, %esp                                      #10.5
                                # LOE
..B2.46:                        # Preds ..B2.58
        movl      4(%esp), %ebx                                 #10.5
        movl      (%esp), %edi                                  #10.5
        addl      $44, %esp                                     #10.5
        popl      %esi                                          #10.5
        movl      %ebp, %esp                                    #10.5
        popl      %ebp                                          #10.5
        ret                                                     #10.5
                                # LOE
..B2.47:                        # Preds ..B2.8                  # Infreq
        xorl      %edx, %edx                                    #
        pxor      %xmm0, %xmm0                                  #
        jmp       ..B2.18       # Prob 100%                     #
                                # LOE edx ebx esi edi xmm0
..B2.48:                        # Preds ..B2.29 ..B2.27         # Infreq
        xorl      %eax, %eax                                    #
        pxor      %xmm0, %xmm0                                  #
        jmp       ..B2.38       # Prob 100%                     #
        .align    16,0x90
                                # LOE eax ecx ebx esi edi xmm0
# mark_end;
	.type	calculate,@function
	.size	calculate,.-calculate
	.data
	.space 2	# pad
	.align 4
.2.5_2_hpo_loc_struct_pack.111:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.5_2__hpo_loc_pack.110
	.align 4
.2.5_2__hpo_loc_pack.110:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	50
	.byte	46
	.byte	99
	.byte	59
	.byte	99
	.byte	97
	.byte	108
	.byte	99
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	55
	.byte	59
	.byte	55
	.byte	59
	.byte	59
	.space 3	# pad
	.align 4
.2.5_2_hpo_loc_struct_pack.122:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.5_2__hpo_loc_pack.121
	.align 4
.2.5_2__hpo_loc_pack.121:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	50
	.byte	46
	.byte	99
	.byte	59
	.byte	99
	.byte	97
	.byte	108
	.byte	99
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	49
	.byte	48
	.byte	59
	.byte	49
	.byte	48
	.byte	59
	.byte	59
	.space 1	# pad
	.align 4
.2.5_2__hpo_loc_pack.102:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	50
	.byte	46
	.byte	99
	.byte	59
	.byte	99
	.byte	97
	.byte	108
	.byte	99
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	55
	.byte	59
	.byte	55
	.byte	59
	.byte	59
	.space 3	# pad
	.align 4
.2.5_2_hpo_loc_struct_pack.103:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.5_2__hpo_loc_pack.102
	.data
# -- End  calculate, L_calculate_10__hpo_threaded_loop0_2.120
	.text
# -- Begin  calc
# mark_begin;
       .align    16,0x90
	.globl calc
calc:
# parameter 1: 12 + %esp
# parameter 2: 16 + %esp
..B3.1:                         # Preds ..B3.0
        subl      $8, %esp                                      #2.1
        movss     12(%esp), %xmm0                               #1.7
        addss     16(%esp), %xmm0                               #3.14
        movss     %xmm0, (%esp)                                 #3.14
        flds      (%esp)                                        #3.14
        addl      $8, %esp                                      #3.14
        ret                                                     #3.14
        .align    16,0x90
                                # LOE
# mark_end;
	.type	calc,@function
	.size	calc,.-calc
	.data
	.align 4
.2.6_2__hpo_loc_pack.156:
	.byte	59
	.byte	47
	.byte	104
	.byte	111
	.byte	109
	.byte	101
	.byte	47
	.byte	115
	.byte	48
	.byte	49
	.byte	57
	.byte	54
	.byte	47
	.byte	72
	.byte	87
	.byte	53
	.byte	32
	.byte	45
	.byte	32
	.byte	105
	.byte	110
	.byte	116
	.byte	101
	.byte	114
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	100
	.byte	117
	.byte	114
	.byte	101
	.byte	32
	.byte	111
	.byte	112
	.byte	116
	.byte	47
	.byte	50
	.byte	47
	.byte	50
	.byte	95
	.byte	51
	.byte	46
	.byte	99
	.byte	59
	.byte	99
	.byte	97
	.byte	108
	.byte	99
	.byte	59
	.byte	50
	.byte	59
	.byte	50
	.byte	59
	.byte	59
	.align 4
.2.6_2_hpo_loc_struct_pack.157:
	.long	0
	.long	2
	.long	0
	.long	0
	.long	.2.6_2__hpo_loc_pack.156
	.data
# -- End  calc
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
_2__STRING.0.5:
	.byte	114
	.byte	101
	.byte	115
	.byte	32
	.byte	61
	.byte	32
	.byte	37
	.byte	102
	.byte	10
	.byte	0
	.type	_2__STRING.0.5,@object
	.size	_2__STRING.0.5,10
	.data
# mark_proc_addr_taken L_calculate_10__hpo_threaded_loop0_2.120;
# mark_proc_addr_taken L_main_19__hpo_threaded_loop1_2.59;
# mark_proc_addr_taken L_main_14__hpo_threaded_loop0_2.34;
	.section .note.GNU-stack, ""
# End
