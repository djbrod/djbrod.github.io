clear all
close all
clc
%format short eng

syms s R1 R2 C1 C2 Vin I1 I2
Zc1=1/(s*C1);
Zc2=1/(s*C2);
e(1)=Vin-R1*I1-Zc1*(I1-I2)==0;
e(2)=-Zc1*(I2-I1)-R2*I2-Zc2*I2==0;
sol=solve(e,I1,I2);
Vout=sol.I2*Zc2;
G=Vout/Vin
pretty(G)
