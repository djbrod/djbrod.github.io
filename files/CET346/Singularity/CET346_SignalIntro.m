%% cosine
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=0:.01:1;
v1=cos(2*pi*t);
plot(t,v1,'LineWidth',2)
hold on; grid on
xlim([0 2])
xlabel('Time (s)')
ylabel('Signal, x(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
return

%% arbitrary-ish
clear all
close all
clc
format short eng

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
t=0:.01:1;
v1=5*cos(2*pi*t)+2*cos(4*pi*t-.12)+2*cos(14*pi*t+.42);
plot(t,v1,'LineWidth',2)
hold on; grid on
xlim([0 2])
xlabel('Time (s)')
ylabel('Signal, x(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',16)

%Stuff to make the grid show up better on the video
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
return

