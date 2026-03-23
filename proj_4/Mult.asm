//load r0 into m
@R0
D=M
@m
M=D

//load r1 into n
@R1
D=M
@n
M=D

//create prod as a pointer to r2
@R2
M=0
D=A
@prod
M=D

//loop
(MUL)

    //JMP to end, if n = 0
    @n
    D=M
    @END
    D;JEQ

    //prod = prod + m
    @m
    D=M
    @prod
    A=M
    M=D+M

    //n = n - 1
    @n
    M=M-1

    //jump back to MUL otherwise
    @MUL
    0;JMP

(END)
    @END
    0;JMP