clear all
close all
clc
format short eng

u=@(t) heaviside(t);
x1=@(t) u(t+1)+2*u(t)-u(t-1)-u(t-2)-u(t-3);
x2=@(t) (1)*(u(t+1)-u(t))+(3)*(u(t)-u(t-1))+(2)*(u(t-1)-u(t-2))+(1)*(u(t-2)-u(t-3));
t= -2:.01:4;

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
plot(t,x1(t),'LineWidth',3)
hold on; grid on
plot(t,x2(t),'--','LineWidth',3)
ylim([0,4])
fig=gcf;
xlabel('Time (s)')
ylabel('Signal')
set(findall(fig,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
