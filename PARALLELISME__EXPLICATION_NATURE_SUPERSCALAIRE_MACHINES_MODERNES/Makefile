



all: code1 code2
code1: multiplie_deroulement.o multiplie_deroulement.c
	gcc -std=c99 multiplie_deroulement.o multiplie_deroulement.c -o code1
code2: multiplie_deroulement__2.o multiplie_deroulement.c
	gcc -std=c99 multiplie_deroulement__2.o multiplie_deroulement.c -o code2
multiplie_deroulement.o: multiplie_deroulement.s
	yasm -felf64 multiplie_deroulement.s
multiplie_deroulement__2.o: multiplie_deroulement__2.s
	yasm -felf64 multiplie_deroulement__2.s 
execution_10__1: multiplie_deroulement.sh code1
	./multiplie_deroulement.sh
execution_10__2: multiplie_deroulement__2.sh code2
	./multiplie_deroulement__2.sh
clean:
	rm -f *.c~ *.o *.s~ *.sh~ code1 code2
