# -- Machine type PW
# mark_description "Intel(R) C++ Compiler for applications running on IA-32, Version 11.1    Build 20091012 %s";
# mark_description "-long_double -O2 -ipo -ipo-S";
	.file "ipo_out.c"
	.text
..TXTST0:
# -- Begin  main
# mark_begin;
       .align    16,0x90
	.globl main
main:
..B1.1:                         # Preds ..B1.0
        pushl     %ebp                                          #4.1
        movl      %esp, %ebp                                    #4.1
        andl      $-128, %esp                                   #4.1
        subl      $128, %esp                                    #4.1
        pushl     $3                                            #4.1
        call      __intel_new_proc_init                         #4.1
                                # LOE ebx esi edi
..B1.6:                         # Preds ..B1.1
        stmxcsr   4(%esp)                                       #4.1
        orl       $32768, 4(%esp)                               #4.1
        ldmxcsr   4(%esp)                                       #4.1
        pushl     $_2__STRING.0.4                               #11.5
        call      printf                                        #11.5
                                # LOE ebx esi edi
..B1.2:                         # Preds ..B1.6
        movl      $5, %eax                                      #13.5
        pushl     %eax                                          #13.5
        pushl     %eax                                          #13.5
        pushl     %eax                                          #13.5
        pushl     $_2__STRING.1.4                               #13.5
        call      printf                                        #13.5
                                # LOE ebx esi edi
..B1.3:                         # Preds ..B1.2
        movl      $1, %eax                                      #14.11
        movl      %ebp, %esp                                    #14.11
        popl      %ebp                                          #14.11
        ret                                                     #14.11
        .align    16,0x90
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.text
# -- Begin  unknown
# mark_begin;
       .align    16,0x90
	.globl unknown
unknown:
# parameter 1: 4 + %esp
..B2.1:                         # Preds ..B2.0
        ret                                                     #5.1
        .align    16,0x90
                                # LOE
# mark_end;
	.type	unknown,@function
	.size	unknown,.-unknown
	.data
# -- End  unknown
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
_2__STRING.0.4:
	.byte	97
	.byte	61
	.byte	61
	.byte	53
	.byte	10
	.byte	0
	.type	_2__STRING.0.4,@object
	.size	_2__STRING.0.4,6
	.space 2	# pad
	.align 4
_2__STRING.1.4:
	.byte	37
	.byte	100
	.byte	32
	.byte	37
	.byte	100
	.byte	32
	.byte	37
	.byte	100
	.byte	10
	.byte	0
	.type	_2__STRING.1.4,@object
	.size	_2__STRING.1.4,10
	.data
	.section .note.GNU-stack, ""
# End
