# -- Machine type PW
# mark_description "Intel(R) C++ Compiler for applications running on IA-32, Version 11.1    Build 20091012 %s";
# mark_description "-long_double -O2 -parallel -par-report -std=c99 -S";
	.file "2_2.c"
	.text
..TXTST0:
# -- Begin  calculate
# mark_begin;
       .align    16,0x90
	.globl calculate
calculate:
# parameter 1: 24 + %esp
# parameter 2: 28 + %esp
..B1.1:                         # Preds ..B1.0
        pushl     %edi                                          #7.1
        pushl     %esi                                          #7.1
        pushl     %ebx                                          #7.1
        subl      $8, %esp                                      #7.1
        movl      24(%esp), %ecx                                #6.7
        movl      28(%esp), %edx                                #6.7
        xorl      %eax, %eax                                    #10.9
        movl      %eax, %ebx                                    #10.9
        movl      %edx, %esi                                    #10.9
        movl      %ecx, %edi                                    #10.9
                                # LOE ebx ebp esi edi
..B1.2:                         # Preds ..B1.3 ..B1.1
        pushl     (%esi,%ebx,4)                                 #12.8
        pushl     (%edi,%ebx,4)                                 #12.8
        call      calc                                          #12.8
                                # LOE ebx ebp esi edi f1
..B1.7:                         # Preds ..B1.2
        fstps     8(%esp)                                       #12.8
        movss     8(%esp), %xmm0                                #12.8
        addl      $8, %esp                                      #12.8
                                # LOE ebx ebp esi edi xmm0
..B1.3:                         # Preds ..B1.7
        incl      %ebx                                          #10.17
        cmpl      $10000, %ebx                                  #10.15
        jl        ..B1.2        # Prob 99%                      #10.15
                                # LOE ebx ebp esi edi xmm0
..B1.4:                         # Preds ..B1.3
        movss     %xmm0, (%esp)                                 #14.12
        flds      (%esp)                                        #14.12
        addl      $8, %esp                                      #14.12
        popl      %ebx                                          #14.12
        popl      %esi                                          #14.12
        popl      %edi                                          #14.12
        ret                                                     #14.12
        .align    16,0x90
                                # LOE
# mark_end;
	.type	calculate,@function
	.size	calculate,.-calculate
	.data
# -- End  calculate
	.data
	.section .note.GNU-stack, ""
# End
