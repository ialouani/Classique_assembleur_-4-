CFLAGS= -std=c99
ASSEMBLY_FLAGS= -felf64

code3: multiplie_dependances.o multiplie_dependances.c
	gcc $(CFLAGS) multiplie_dependances.o multiplie_dependances.c -o code3
multiplie_dependances.o: multiplie_dependances.s
	yasm $(ASSEMBLY_FLAGS) multiplie_dependances.s
code2: multiplie_deroulement.o multiplie_deroulement.c
	gcc $(CFLAGS) multiplie_deroulement.o multiplie_deroulement.c -o code2
multiplie_deroulement.o: multiplie_deroulement.s
	yasm $(ASSEMBLY_FLAGS) multiplie_deroulement.s 
code1: multiplie.o multiplie.c
	gcc $(CFLAGS) multiplie.o multiplie.c -o code1
multiplie.o: multiplie.s
	yasm $(ASSEMBLY_FLAGS) multiplie.s
execution_10: multiplie1.sh
	./multiplie1.sh
execution_10_deroulement4_1: multiplie_deroulement.sh code2
	./multiplie_deroulement.sh
execution_10_deroulement4_2: multiplie_dependances.sh code3
	./multiplie_dependances.sh
clean:
	 rm -f code1 code2 code3 *.o *.s~ *.c~ *.sh~
