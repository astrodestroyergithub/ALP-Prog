********** 8-BIT ARITHMETIC OPERATION **********
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
MOV AX,DATA
MOV DS,AX
XOR AX,AX
MOV AH,14H ;INPUT HIGHER NUMBER
MOV BH,03H ;INPUT LOWER NUMBER
ADD AH,BH
MOV SUMRES1,AH
MOV AH,14H
SUB AH,BH
MOV DIFFRES1, AH
MOV AL,14H
MUL BH ;8-BIT MULTIPLICAND IN AL & MULTIPLIER IN ANY GP REGISTER
MOV MULRES1,AX
MOV AX,14H
DIV BH
MOV DIVQUO1, AL ;QUOTIENT OF 8-BIT DIVISION IS STORED IN AL
MOV DIVREM1, AH ;REMINDER OF 8-BIT DIVISION IS STORED IN AH
HLT
CODE ENDS
DATA SEGMENT
ORG 1200H ;DEFINES THE BEGINNING OFFSET FOR DATA SEGMENT
SUMRES1 DB ? ;USED TO STORE THE RESULT OF ADDITION
DIFFRES1 DB ?
MULRES1 DW ?
DIVQUO1 DB ?
DIVREM1 DB ?
DATA ENDS
END
END
