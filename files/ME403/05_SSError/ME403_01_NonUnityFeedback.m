clear all
close all
clc
format short eng

syms G1 G2 H1 R A B C Ea Ge
e(1)=A==R*G1;
e(2)=Ea==A-B;
e(3)=B==C*H1;
e(4)=C==Ea*G2;
sol=solve(e,A,B,C,Ea);

Gcl=sol.C/R;

Ge=solve(Gcl==Ge/(1+Ge),Ge);
Ge=simplify(Ge)
