CC=gcc
#MAC compiler
FC=gfortran
CFLAGS=-I.
DEPS = headers.h
OBJC = prog.o cfunc.o
OBJF = Prog.f90

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
%.o: %.f90 $(DEPS)
	$(FC) -c -o $@ $< $(CFLAGS)

hellomakef: $(OBJF)
	$(FC) -o $@.exe $^ $(CFLAGS)
hellomakec: $(OBJC)
	$(CC) -o $@.exe $^ $(CFLAGS)
clean:
	rm *.o *.exe
ofile:
	./hellomake.exe > ofile
