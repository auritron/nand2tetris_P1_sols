(MAIN)

    //declare ptr 'n' to screen addr
    @SCREEN
    D=A
    @n
    M=D

    //fill code
    @KBD
    D=M
    @UNFILL
    D;JEQ
    @FILL
    0;JMP
    (FILL_DONE)

    @MAIN
    0;JMP

(FILL)

    //check if screen dimension limit has been reached (@KBD-1)
    @KBD
    D=A
    @n
    D=D-M
    @FILL_DONE
    D;JLE

    //set all bits in current screen byte to 1
    @n
    A=M
    M=-1

    //increment ptr
    @n
    M=M+1
    
    //Jump back to fill
    @FILL
    0;JMP

(UNFILL)

    //check if screen dimension limit has been reached (@KBD-1)
    @KBD
    D=A
    @n
    D=D-M
    @FILL_DONE
    D;JLE

    //set all bits in current screen byte to 0
    @n
    A=M
    M=0

    //increment ptr
    @n
    M=M+1
    
    //Jump back to fill
    @UNFILL
    0;JMP
