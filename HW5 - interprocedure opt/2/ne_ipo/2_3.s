# -- Machine type PW
# mark_description "Intel(R) C++ Compiler for applications running on IA-32, Version 11.1    Build 20091012 %s";
# mark_description "-long_double -O2 -parallel -par-report -std=c99 -S";
	.file "2_3.c"
	.text
..TXTST0:
# -- Begin  calc
# mark_begin;
       .align    16,0x90
	.globl calc
calc:
# parameter 1: 12 + %esp
# parameter 2: 16 + %esp
..B1.1:                         # Preds ..B1.0
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
# -- End  calc
	.data
	.section .note.GNU-stack, ""
# End
