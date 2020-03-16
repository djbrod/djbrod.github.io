%% Finding a transfer function with Mesh Analysis
clear all
close all
clc
format short eng

syms R G L C s Vin I1 I2
Zl=s*L;
Zc=inv(s*C);

eqn(1)=(R+Zl+Zc)*I1+(-Zc)*I2==Vin;
eqn(2)=(-Zc)*I1+(Zc+(1/G))*I2==0;
sol=solve(eqn,I1,I2);
Vout=sol.I2*(1/G);

H=Vout/Vin;% Gain is output over input
%H=subs(H,[R G L C],[2.55 5e-6 8e-6 675e-12]); %50 ft values
H=subs(H,[R G L C],[16.73 32.8e-6 52.48e-6 4.43e-9]); %328 ft values
pretty(vpa(simplify(H),3)) %Print the transfer function in the Command Window

f=logspace(0,10,1000);
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

