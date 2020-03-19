clear all
close all
clc
format short eng

R=1e3;
C=159e-9;
G=@(s) 1./(R*C*s+1); %Transfer Function

%Find Poles and Zero
z=roots([1])/(2*pi)
p=roots([R*C 1])/(2*pi)

%Find lowest freq of plot
f=1;
w=2*pi*f;
20*log10(abs(G(j*w)))

%generate Bode plot
f=logspace(0,4,1000);
w=2*pi*f;

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
semilogx(f,20*log10(abs(G(j*w))),'LineWidth',2)
grid on
xlabel('Frequency (Hz)')
ylabel('|Gain| (dB)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
