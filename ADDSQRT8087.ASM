********** 8087 PROGRAM FOR ADDING THREE FLOAT NUMBERS AND FINDING SQUARE ROOT OF SUM **********
.8087
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
MOV AX,DATA
MOV DS,AX
FINIT
FLD INP1 ; ST(0)-->INP1
FLD INP2 ; ST(0)-->INP2, ST(1)-->INP1
FLD INP3 ; ST(0)-->INP3,ST(1)-->INP2,ST(2)-->INP1
FADD ST(0),ST(1) ; ST(0)-->INP3+INP2
FADD ST(0),ST(2) ; ST(0)-->(INP3+INP2)+INP1
FST SUMRES ; SUMRES-->ST(0)
FSQRT
FST SQUROOTRES
HLT
CODE ENDS
DATA SEGMENT
ORG 1000H
INP1 DD 4.32
INP2 DD 1.87
INP3 DD 2.56
SUMRES DD ?
SQUROOTRES DD ?
DATA ENDS
END START