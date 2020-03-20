clear all
close all
clc
format short eng

%Find transfer function
syms R L s Vin I
Zl=s*L;
e(1)=Vin-R*I-Zl*I==0;
I=solve(e,I);
Vout=I*Zl;
G=simplify(Vout/Vin);
pretty(G)

%Find the poles and zeros
[N,D]=numden(G); %separate numerator and denominator
z=solve(N==0,s) %When numerator is 0, zero
p=solve(D==0,s) %When denominator is 0, pole

%Design for 3 kHz cut-off
R1=1e3; %assume a value for one of the parts
p=subs(p,R,R1); %sub the assumed value into expression for pole
L1=eval(solve(abs(p)==2*pi*3e3,L)); %solve for L that make mag of pole expression equal the cut-off freq
G=subs(G,[L R],[L1 R1]); %substitute value into transfer function

%generate Bode plot
G=matlabFunction(G); %turn the symbolic TF into a function handle to be plotted
f=logspace(0,6,1000);
w=2*pi*f;

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
semilogx(f,20*log10(abs(G(j*w))),'LineWidth',2)
grid on
xlabel('Frequency (Hz)')
ylabel('|Gain| (dB)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;