clear all
close all
clc
format short eng

syms G1 G2 G3 G4 G5 G6 G7 A B C D E F H I J K R

e(1)=A==-F*G1+R-K;
e(2)=B==A*G2;
e(3)=D==A*G3;
e(4)=E==A*G4;
e(5)=F==B+D;
e(6)=H==E+D;
e(7)=I==F*G5;
e(8)=J==I-C+H;
e(9)=K==C*G7;
e(10)=C==J*G6;
sol=solve(e,A,B,C,D,E,F,H,I,J,K)
pretty(simplify(sol.C/R))
