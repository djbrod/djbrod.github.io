clear all
close all
clc
format short eng

syms R L C s
Zl=s*L;
Zc=1/(s*C);

H=(Zl+Zc)/(Zl+Zc+R)
H=simplify(H)
pretty(H)

H=subs(H,[R L C],[628 100e-3 0.01e-6]);
pretty(simplify(H))

%% Generate Bode plot
f=logspace(2,5,1000);
w=2*pi*f;
H=subs(H,s,j*w);

figure(1)
subplot(2,1,1)
semilogx(f,20*log10(abs(H)),'LineWidth',2)
grid on
ylabel('Gain (dB)')
set(findall(gcf,'-property','FontSize'),'FontSize',12)

subplot(2,1,2)
semilogx(f,angle(H)*(180/pi),'LineWidth',2)
grid on
ylabel('Phase Shift (°)')
xlabel('Frequency (Hz)')
set(findall(gcf,'-property','FontSize'),'FontSize',12)




