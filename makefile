CC=gcc
CFLAGS=-I.
DEPS = headers.h
OBJ = prog.o cfunc.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: $(OBJ)
	$(CC) -o $@.exe $^ $(CFLAGS)
clean:
	rm *.o
