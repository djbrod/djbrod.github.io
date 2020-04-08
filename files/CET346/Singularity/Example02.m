clear all
close all
clc
format short eng

u=@(t) heaviside(t);
%x1=@(t) sin(((4*pi)/3).*t+720*(pi/180)).*(u(t+3)-u(t));
x1=@(t) sin(((4*pi)/3).*t).*(u(t+3)-u(t));
t=-4:.01:1;

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
plot(t,x1(t),'LineWidth',3)
hold on; grid on
ylim([-1,1])
fig=gcf;
xlabel('Time (s)')
ylabel('Signal')
set(findall(fig,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
