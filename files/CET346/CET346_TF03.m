%% Finding a transfer function with Nodal Analysis
clear all
close all
clc
format short eng

syms R1 R2 R3 L C s Vin Va Vb Vc Vd Ve

Zl=s*L;
Zc=1/(s*C);

e(1)=Va==Vin; %KVL A
e(2)=Vb==Vd; %KVL Op-amp
e(3)=((Va-Vb)/(Zl))-((Vb-Vc)/(Zc))==0; %KCL B
e(4)=((Vb-Vc)/(Zc))-((Vc)/(R3))==0; %KCL C
e(5)=((-Vd)/(R1))-((Vd-Ve)/(R2))==0; %KCL D
sol=solve(e,Va,Vb,Vc,Vd,Ve);
Vout=sol.Ve-0;
H=Vout/Vin;
H=subs(H,[R1 R2 R3 L C],[10e3 30e3 2 0.5 0.1e-6]);
pretty(simplify(H))

f=logspace(0,8,1000);
w=2*pi*f;
H=subs(H,s,j*w);

figure(1)
subplot(2,1,1) 
semilogx(f,20*log10(abs(H)),'LineWidth',2)
grid on
ylabel('Gain (dB)')

fig=gcf;
set(findall(fig,'-property','FontSize'),'FontSize',18) 

subplot(2,1,2)
semilogx(f,angle(H)*(180/pi),'LineWidth',2)
grid on
xlabel('Frequency (Hz)')
ylabel('Phase Shift (deg)')

fig=gcf;
set(findall(fig,'-property','FontSize'),'FontSize',18) 
