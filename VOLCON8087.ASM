********** 8087 ALP TO FIND THE VOLUME OF A CONE **********
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
.8087
ORG 0000H
START:
MOV AX, DATA
MOV DS, AX
FINIT
FLD RADIUS ; ST(0)-->RADIUS
FST ST(4) ; ST(4)-->RADIUS
FMUL ST(0), ST(4) ; ST(0)--> R^2
FLD CONST ; ST(0)-->CONST(1/3), ST(1)-->R^2
FMUL ; ST(0)-->(1/3)*(R^2)
FLD HEIGHT ; ST(0)-->HEIGHT, ST(1)-->(1/3)*(R^2)
FMUL ; ST(0)-->(1/3)*(R^2)*(H)
FLDPI ; ST(0)-->PI, ST(1)-->(1/3)*(R^2)*(H)
FMUL ; ST(0)-->PI*(1/3)*(R^2)*(H)
FST VOLUME
HLT
CODE ENDS
DATA SEGMENT
RADIUS DD 3.215
HEIGHT DD 2.091
CONST DD 0.333
VOLUME DD ?
DATA ENDS
END START