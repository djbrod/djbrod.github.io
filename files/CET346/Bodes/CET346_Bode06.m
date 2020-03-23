clear all
close all
clc
format short eng

R1=100;
R2=200e3;
C1=0.2e-6;
C2=0.2e-6;

%Find transfer function
syms s Vin Va Vb Vc Vd
Zc1=1/(s*C1);
Zc2=1/(s*C2);
e(1)=Va==Vin;
e(2)=Vc==0;
e(3)=((Va-Vb)/(R1))-((Vb-Vc)/(Zc1))==0;
e(4)=((Vb-Vc)/(Zc1))-((Vc-Vd)/(R2))-((Vc-Vd)/(Zc2))==0;
sol=solve(e,Va,Vb,Vc,Vd);
Vout=sol.Vd-0;
G=simplify(Vout/Vin);
pretty(vpa(G,3))

%Find the poles and zeros
[N,D]=numden(G); %separate numerator and denominator
z=eval(solve(N==0,s)/(2*pi)) %When numerator is 0, zero
p=eval(solve(D==0,s)/(2*pi)) %When denominator is 0, pole

%Find gain @ lowest freq of plot
G=matlabFunction(G); %turn the symbolic TF into a function handle to be plotted
f=1;
w=2*pi*f;
20*log10(abs(G(j*w)))

%generate Bode plot
f=logspace(0,4.5,1000);
w=2*pi*f;

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
semilogx(f,20*log10(abs(G(j*w))),'LineWidth',2)
grid on
xlabel('Frequency (Hz)')
ylabel('|Gain| (dB)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
