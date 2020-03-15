clear all
close all
clc
format short eng

syms s R A C Ea Ge
G=100/(s*(s+10));
H=1/(s+5);

e(1)=Ea==R-A;
e(2)=C==Ea*G;
e(3)=A==C*H;
sol=solve(e,A,Ea,C)

Gcl=sol.C/R;

Ge=solve(Gcl==Ge/(1+Ge),Ge);
Ge=simplify(Ge);
pretty(Ge)
Ge=matlabFunction(Ge);
Kp=Ge(0)
e_inf=1/(1+Kp)
