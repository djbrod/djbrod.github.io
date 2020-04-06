clear all
close all
clc
format short eng

u=@(t) heaviside(t);
x1=@(t) (-1*t-4).*(u(t+8)-u(t+4))+(-t).*(u(t+4)-u(t))+(-t+4).*(u(t)-u(t-4))+(-t+8).*(u(t-4)-u(t-8));
x2=@(t) (-t-4)+4*u(t+4)+4*u(t)+4*u(t-4);
t=-8:.01:8;

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
plot(t,x1(t),'LineWidth',3)
hold on; grid on
plot(t,x2(t),'--','LineWidth',3)
ylim([0,4])
xlim([-8,8])
fig=gcf;
xlabel('Time (s)')
ylabel('Signal')
set(findall(fig,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;


