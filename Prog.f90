        PROGRAM TEST
        PRINT *, 'HELLO WORLD'
        A=4
        PRINT *, 'A squared:',A**2
        PI = 4*ATAN(1.0)
        PRINT *, 'PI:',PI
        Call SR(A)
        Print *, 'Final value of A:',A
        END
        Subroutine SR(Arg)
! Just a test
        WRITE(*,*)'IN SUBROUTINE SR'
        Arg = Arg+1
        Return
        END
