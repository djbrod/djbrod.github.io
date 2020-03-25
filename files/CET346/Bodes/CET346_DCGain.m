%% RC Circuit
clear all
close all
clc
format short eng

R=1e3;
C=10e-9;
syms s Vin I
Zc=1/(s*C);
e(1)=Vin-R*I-Zc*I==0;
I=solve(e,I);
Vout=I*Zc;
G=simplify(Vout/Vin);
pretty(G)

G=matlabFunction(G);
Gdc=G(0); %DC Gain

%% RL Circuit
clear all
close all
clc
format short eng

R=10e3;
L=470e-3;
syms s Vin I
Zl=s*L;
e(1)=Vin-R*I-Zl*I==0;
I=solve(e,I);
Vout=I*Zl;
G=simplify(Vout/Vin);
pretty(G)

G=matlabFunction(G);
Gdc=G(0)

%% Series RLC Circuit
clear all
close all
clc
format short eng

R=12;
L=150e-3;
C=100e-6;
syms s Vin I
Zl=s*L;
Zc=1/(s*C);
e(1)=Vin-R*I-Zc*I-Zl*I==0;
I=solve(e,I);
Vout=I*(Zc+Zl);
G=simplify(Vout/Vin);
pretty(G)

G=matlabFunction(G);
Gdc=G(0)

%% Parallel RLC Circuit
clear all
close all
clc
format short eng

R=200;
L=230e-3;
C=15e-6;
syms s Iin V
Zl=s*L;
Zc=1/(s*C);
e(1)=Iin-(V/R)-(V/Zl)-(V/Zc)==0;
V=solve(e,V);
Vout=V-0;
G=simplify(Vout/Iin);
pretty(vpa(simplify(vpa(G,3)),3))

G=matlabFunction(G);
Gdc=G(0)

%% RC lowpass Opamp
clear all
close all
clc
format short eng

R1=1.5e3;
R2=15e3;
C=47e-9;
syms s Vin Va Vb Vc
Zc=1/(s*C);
e(1)=Va==Vin;
e(2)=Vb==0;
e(3)=((Va-Vb)/(R1))-((Vb-Vc)/(Zc))-((Vb-Vc)/(R2))==0;
sol=solve(e,Va,Vb,Vc);
Vout=sol.Vc-0;
G=simplify(Vout/Vin);
pretty(G)

G=matlabFunction(G);
Gdc=G(0)

%% RC lowpass Opamp NO CAP
clear all
close all
clc
format short eng

R1=1.5e3;
R2=15e3;
syms s Vin Va Vb Vc
e(1)=Va==Vin;
e(2)=Vb==0;
e(3)=((Va-Vb)/(R1))-((Vb-Vc)/(R2))==0;
sol=solve(e,Va,Vb,Vc);
Vout=sol.Vc-0;
Gdc=simplify(Vout/Vin)



