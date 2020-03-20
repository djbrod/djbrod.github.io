clear all
close all
clc
format short eng

R=628;
L=100e-3;
G=@(s) ((L/R)*s)./((L/R)*s+1); %Transfer Function

%Find lowest freq of plot
f=1;
w=2*pi*f;
20*log10(abs(G(j*w)))

%Find Poles and Zero
z=roots([L/R 0])/(2*pi)
p=roots([L/R 1])/(2*pi)


return
%generate Bode plot
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
