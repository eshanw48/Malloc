all: memgrind

mymalloc.o: mymalloc.c mymalloc.h
	gcc -c mymalloc.c

memgrind: memgrind.c mymalloc.o
	gcc -o memgrind memgrind.c mymalloc.o

clean:
	rm -f mymalloc.o memgrind
