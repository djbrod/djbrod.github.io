clear all
close all
clc
format short eng

syms H1 G1 G2 G3 R A B C D E

e(1)=B==G1*A;
e(2)=A==R-B*H1;
e(3)=D==G2*B;
e(4)=E==D+A;
e(5)=C==E*G3;

sol=solve(e,A,B,C,D,E)
pretty(simplify(sol.C/R))
