clear all
close all
clc
format short eng

C=1e-6; %1 uF
L=40e-3; %40 mH
f=logspace(0,5.75,1000);
w=2*pi*f;
Zc=1./(j.*w.*C);
Zl=j*w*L;

figure(1)
loglog(f,abs(Zc),'LineWidth',3)
hold on
loglog(f,abs(Zl),'LineWidth',3)
legend('|Z_C|','|Z_L|')
xlabel('Frequency (Hz)')
ylabel('Impedance (\Omega)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

