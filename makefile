CC=gcc
CFLAGS=-I.
DEPS = headers.h
OBJ = helloprog.o hellofunc.o 
OBJ = prog.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: $(OBJ)
	$(CC) -o $@.exe $^ $(CFLAGS)
