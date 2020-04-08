clear all
close all
clc
format short eng


u=@(t) heaviside(t);
r=@(t) t.*heaviside(t)
x1=@(t) (2.*t).*(u(t)-u(t-2))+(t+2).*(u(t-2)-u(t-6))+(8).*(u(t-6)-u(t-10));
x2=@(t) 2*r(t)-r(t-2)-r(t-6)-8*u(t-10);
t=-2:.01:12;

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
plot(t,x1(t),'LineWidth',3)
hold on; grid on
plot(t,x2(t),'--','LineWidth',3)
xlim([-2,12])
ylim([0,10])
fig=gcf;
xlabel('Time (s)')
ylabel('Signal')
set(findall(fig,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
