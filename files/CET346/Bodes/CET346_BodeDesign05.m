clear all
close all
clc
format short eng

syms s I R L C Vin
Zl=s*L;
Zc=1/(s*C);
e(1)=Vin-R*I-Zl*I-Zc*I==0;
I=solve(e,I)
Vout=I*(Zl+Zc);
G=simplify(Vout/Vin)
pretty(G)

f1=1e3;
f2=100e3;
w1=2*pi*f1;
w2=2*pi*f2;

coeffs=poly([-w1 -w2])
coeffs=coeffs/coeffs(3)

clear e
e(1)=coeffs(1)==L*C;
e(2)=coeffs(2)==R*C;
e(3)=R==4.7e3;
sol=solve(e,R,L,C);
[eval(sol.R) eval(sol.L) eval(sol.C)]

G=subs(G,[R L C],[eval(sol.R) eval(sol.L) eval(sol.C)]);
G=matlabFunction(G);

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

