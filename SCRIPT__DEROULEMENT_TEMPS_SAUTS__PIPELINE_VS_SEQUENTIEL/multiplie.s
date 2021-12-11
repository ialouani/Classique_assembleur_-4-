	section .text
	global multiplier
				;de type long long int (*fct)(int)
multiplier:
				;stocker le temps en cycle jusqu'à maintenant
	rdtsc			;pas trop grand => rslt. dans rax
	push rax		;sauvegarde la valeur (temps en cycle depuis
				;le demarrage jusqu'à maintenant)
	mov r8,2
boucle:
	imul r8,r8		;r8 representera 2**(rdi) a la fin.
				;rdi==n INSTRUCTIONS imul.
	dec rdi
	;au moins n>=1
	cmp rdi,0
	jne boucle
fin:
	pop r9
	rdtsc
	sub rax,r9		;rax>=r9 et rax-r9 == le temps en cycle
				;le nombre de ticks(~) de ce programme
	ret
