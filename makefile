CC = gcc
CFLAGS = -Wall

all: shell

shell: shell.o
	$(CC) $(CFLAGS) -o shell shell.o  -lpthread

shell.o: shell.c
	$(CC) $(CFLAGS) -c shell.c -lpthread

clean:
	rm -f shell shell.o -lpthread
