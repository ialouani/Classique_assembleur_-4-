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
	add r8,2		;pas utilise
	imul r10,r10
	add rcx,2
	add rdx,2		;pas grave car rdtsc met une valeur
				;petite dans un registre DE 128 BITS et donc vu qu'on recupere
				;rax qui selon ce qu'on vient de dire est la vraie valeur
				;car valeur dans 64 bits suffisantes le rdx ne changera pas
	;et donc avec ses remarques, on pourrait jouer avec.
	imul r11,r11
	add r14,2
	add rsi,2		;pas de 2ieme argument
	imul r12,r12
	add r15,2
	add rax,2		;c'est l'appel |rdtsc| qui ecrase l'ancienne
				;valeur de rax c'est pas le rax qui fonctionne tout au long
				;et l'appel le retourne
	;sinon cela impliquerait une initialisation au debut ce qui est faux
				;rdi>=4 (au moins 4 fois)
	sub rdi,4
	cmp rdi,0
	jnz boucle
fin:
	rdtsc
	pop r13
	sub rax,r13
	ret
