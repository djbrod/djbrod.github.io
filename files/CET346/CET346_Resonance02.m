clear all
close all
clc
format short eng

C=1e-6; %1 uF
L=40e-3; %40 mH
f=logspace(0,5.75,1000000);
w=2*pi*f;
Zc=1./(j.*w.*C);
Zl=j*w*L;

Zp=(Zc.*Zl)./(Zc+Zl)

figure(1)
loglog(f,abs(Zp),'LineWidth',3)
grid on
xlabel('Frequency (Hz)')
ylabel('Impedance (\Omega)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

