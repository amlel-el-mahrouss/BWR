.global start
.extern __cmain

.set noreorder

.set __STACK_SIZE, 0x1000

.section .text

start:
	la $sp, stack
	addiu $sp, __STACK_SIZE - 32
	jal __cmain
	nop
	b .
	nop

.section .bss
stack:
	.space STACKSIZE