	section .text
	global multiplier2
multiplier2:
		;deroulement en 4 (rdi multiple de 4) et sans dependances
	rdtsc
	push rax
	mov r9,2
	mov r10,2
	mov r11,2
	mov r12,2
	mov rbx,0
	mov rcx,0
boucle:
	imul r9,r9
	add rbx,2
	imul r10,r10
	add rcx,2
	imul r11,r11
	add r14,2
	imul r12,r12
	add r15,2
				;rdi>=4 (au moins 4 fois)
	sub rdi,4
	cmp rdi,0
	jnz boucle
fin:
	rdtsc
	pop r13
	sub rax,r13
	ret
