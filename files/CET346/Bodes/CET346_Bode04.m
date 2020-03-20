clear all
close all
clc
format short eng

R=510;
L=100e-3;
C=0.01e-6;

%Find transfer function
syms s Vin I1 I2
Zl=s*L;
Zc=1/(s*C);
e(1)=Vin-Zc*(I1-I2)-R*I1==0;
e(2)=-Zl*I2-Zc*(I2-I1)==0;
sol=solve(e,I1,I2);
Vout=sol.I1*R;
G=simplify(Vout/Vin);
pretty(G)

%Find the poles and zeros
[N,D]=numden(G); %separate numerator and denominator
z=eval(solve(N==0,s)/(2*pi)) %When numerator is 0, zero
p=eval(solve(D==0,s)/(2*pi)) %When denominator is 0, pole

%Find gain @ lowest freq of plot
G=matlabFunction(G); %turn the symbolic TF into a function handle to be plotted
f=100;
w=2*pi*f;
20*log10(abs(G(j*w)))


%generate Bode plot
f=logspace(2,6,1000);
w=2*pi*f;

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
semilogx(f,20*log10(abs(G(j*w))),'LineWidth',2)
grid on
xlabel('Frequency (Hz)')
ylabel('|Gain| (dB)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

fr=1/(2*pi*sqrt(L*C))