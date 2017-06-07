# -- Machine type PW
# mark_description "Intel(R) C++ Compiler for applications running on IA-32, Version 11.1    Build 20091012 %s";
# mark_description "-long_double -O2 -S";
	.file "1_1.c"
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
        pushl     %esi                                          #4.1
        subl      $124, %esp                                    #4.1
        pushl     $3                                            #4.1
        call      __intel_new_proc_init                         #4.1
                                # LOE ebx edi
..B1.8:                         # Preds ..B1.1
        stmxcsr   4(%esp)                                       #4.1
        orl       $32768, 4(%esp)                               #4.1
        ldmxcsr   4(%esp)                                       #4.1
        movl      $5, 8(%esp)                                   #7.5
        lea       8(%esp), %eax                                 #9.13
        pushl     %eax                                          #9.5
        call      unknown                                       #9.5
                                # LOE ebx edi
..B1.9:                         # Preds ..B1.8
        addl      $8, %esp                                      #9.5
                                # LOE ebx edi
..B1.2:                         # Preds ..B1.9
        movl      4(%esp), %esi                                 #10.8
        cmpl      $5, %esi                                      #10.11
        jne       ..B1.4        # Prob 0%                       #10.11
                                # LOE ebx esi edi
..B1.3:                         # Preds ..B1.2
        pushl     $_2__STRING.0                                 #11.5
        call      printf                                        #11.5
                                # LOE ebx esi edi
..B1.10:                        # Preds ..B1.3
        popl      %ecx                                          #11.5
                                # LOE ebx esi edi
..B1.4:                         # Preds ..B1.10 ..B1.2
        pushl     $5                                            #13.5
        pushl     %esi                                          #13.5
        pushl     %esi                                          #13.5
        pushl     $_2__STRING.1                                 #13.5
        call      printf                                        #13.5
                                # LOE ebx edi
..B1.5:                         # Preds ..B1.4
        movl      $1, %eax                                      #14.11
        addl      $140, %esp                                    #14.11
        popl      %esi                                          #14.11
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
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
_2__STRING.0:
	.byte	97
	.byte	61
	.byte	61
	.byte	53
	.byte	10
	.byte	0
	.type	_2__STRING.0,@object
	.size	_2__STRING.0,6
	.space 2	# pad
	.align 4
_2__STRING.1:
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
	.type	_2__STRING.1,@object
	.size	_2__STRING.1,10
	.data
	.section .note.GNU-stack, ""
# End
