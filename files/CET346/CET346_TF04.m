clear all
close all
clc
format short eng

syms R1 R2 C1 C2 s

%Move to s-domain
Zc1=1/(s*C1);
Zc2=1/(s*C2);

%Voltage Dividers
H1=Zc1/(R1+Zc1); 
H2=Zc2/(R2+Zc2);

pretty(simplify(H1))
pretty(simplify(H2))

%Does this work? No.  Why not?
pretty(simplify(H1*H2))

%% Cascaded circuit
clear all
close all
clc
format short eng

syms R1 R2 C1 C2 s Vin I1 I2

%Move to s-domain
Zc1=1/(s*C1);
Zc2=1/(s*C2);

e(1)=Vin-R1*I1-Zc1*(I1-I2)==0;
e(2)=-Zc1*(I2-I1)-R2*I2-Zc2*I2==0;
sol=solve(e,I1,I2)
Vo=sol.I2*Zc2;
H=simplify(Vo/Vin);
pretty(H)

%% Cascaded circuit w/ buffer
clear all
close all
clc
format short eng

syms R1 R2 C1 C2 s Vin Va Vb Vc Vd

%Move to s-domain
Zc1=1/(s*C1);
Zc2=1/(s*C2);

e(1)=Va==Vin;
e(2)=Vb==Vc;
e(3)=((Va-Vb)/(R1))-((Vb-0)/(Zc1))==0;
e(4)=((Vc-Vd)/(R2))-((Vd-0)/(Zc2))==0;
sol=solve(e,Va,Vb,Vc,Vd);
Vout=sol.Vd;
H=simplify(Vout/Vin);
pretty(H)

