clear all
close all
clc
format short eng

syms s R1 R2 C1 C2 Vin Va Vb Vc Vd
Zc1=1/(s*C1);
Zc2=1/(s*C2);
e(1)=Va==Vin;
e(2)=Vb==Vc;
e(3)=((Va-Vb)/(R1))-((Vb)/(Zc1))==0;
e(4)=((Vc-Vd)/(R2))-((Vd)/(Zc2))==0;
sol=solve(e,Va,Vb,Vc,Vd);
Vout=sol.Vd;
G=Vout/Vin;
pretty(G)


