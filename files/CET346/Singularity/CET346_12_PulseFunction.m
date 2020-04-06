%% First pulse function
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5e-6:1e-6/1000:5e-6;
v1=5*heaviside(t+1e-6);
v2=5*heaviside(t-0.5e-6);
subplot(3,1,1)
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-5e-6 5e-6 -2 6])
ylabel('First Term')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

subplot(3,1,2)
plot(t,v2,'r','LineWidth',3)
hold on; grid on
axis([-5e-6 5e-6 -2 6])
ylabel('Second Term')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

subplot(3,1,3)
plot(t,v1-v2,'g','LineWidth',3)
hold on; grid on
axis([-5e-6 5e-6 -2 6])
ylabel('Pulse Function')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
xlabel('Time (s)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)
return