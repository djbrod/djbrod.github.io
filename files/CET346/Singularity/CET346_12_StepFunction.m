%% First unit step (heaviside)
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:.001:5;
v1=heaviside(t);
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-1 1 -3 3])
xlabel('Time (s)')
ylabel('Signal, x(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
return

%% scaled unit step (heaviside)
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:.001:5;
v1=2.5*heaviside(t);
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-1 1 -3 3])
xlabel('Time (s)')
ylabel('Signal, x(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
return

%% negative scaled unit step (heaviside)
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:.001:5;
v1=-0.75*heaviside(t);
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-1 1 -3 3])
xlabel('Time (s)')
ylabel('Signal, x(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
return

%% shifted unit steps (heaviside)
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:.001:5;
v1=heaviside(t-1); %shifted to the right
v2=heaviside(t+2); %shifted to the left
plot(t,v1,'LineWidth',3)
hold on; grid on
plot(t,v2,'--','LineWidth',3)
axis([-4 4 -3 3])
xlabel('Time (s)')
ylabel('Signal, x(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
return

%% make it turn off
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:.001:5;
v1=heaviside(-t); %shifted to the right
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-4 4 -3 3])
xlabel('Time (s)')
ylabel('Signal, x(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
return

%% scaled and shifted turning off
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=-5:.001:5;
v1=1.5*heaviside(-(t-2)); %shifted to the right
plot(t,v1,'LineWidth',3)
hold on; grid on
axis([-4 4 -3 3])
xlabel('Time (s)')
ylabel('Signal, x(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
return