%% First Ramp function
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:1/1000:5;
v1=t;
v2=heaviside(t);
subplot(3,1,1)
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('First Factor')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

subplot(3,1,2)
plot(t,v2,'r','LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('Second Factor')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

subplot(3,1,3)
plot(t,v1.*v2,'g','LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('Ramp Function')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
xlabel('Time (s)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)
return

%% Ramp function - change slope
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:1/1000:5;
v1=t.*heaviside(t);
%v2=t.*heaviside(t+1); % Not Good
%v2=t+1.*heaviside(t+1); % Not Good
v2=2.*v1; % Good!
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('First Term')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

plot(t,v2,'r','LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('Sweet Ramps!')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
xlabel('Time (s)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)
return

%% Ramp function - time shifted
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:1/1000:5;
v1=t.*heaviside(t);
v2=(t+1).*heaviside(t+1);
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('First Term')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

plot(t,v2,'r','LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('Sweet Ramps!')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
xlabel('Time (s)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)
return

%% Ramp function - put it all together
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:1/1000:5;
v1=(t).*heaviside(t);
v2=-.5.*(t-1).*heaviside(t-1);
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('First Term')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

plot(t,v2,'r','LineWidth',3)
hold on; grid on
axis([-2 5 -2 6])
ylabel('C-C-C-Combo!')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
xlabel('Time (s)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)
return

