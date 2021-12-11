	section .text
	global multiplier2
multiplier2:
	rdtsc
	push rax
boucle:
	imul r10,r9
	imul r11,r10
	imul r12,r11
	imul r9,r12
	sub rdi,4
	cmp rdi,0
	jnz boucle
fin:
	rdtsc
	pop r13
	sub rax,r13
	ret
