%Example Generator: Identifying sinudoid parameters from a time domain plot
clear all
close all
clc
format short eng

A=ceil(5*rand(1,1)); %store a ramdom amplitude
w=2*pi*ceil(6*rand(1,1))/2; %store a random ang. freq.
T=(2*pi)/w; %convert w to periods (T)
theta=0:pi/4:2*pi; %generate list of possible phase angles
theta=theta(randi(length(theta))); %select one of the phase angles randomly
offset=ceil(5*rand(1,1))-2.5;  %store a random offset

t=-T:T/1000:3*T; %store a vector of times to plot the function
figure('units','normalized','outerposition',[0 0 1 1]) %maximize the figure
plot(t,A*cos(w.*t+theta)+offset,'LineWidth',3) %plot the sinusoid
hold on %prevent changes from overwriting previous plots 
grid on %turn on grid
ylim([-8.,8.]) %set vertical plot limits
xlim([-.1*T,1.65*T])%set horizontal plot limits
set(findall(gcf,'-property','FontSize'),'FontSize',18) %make fonts bigger

%make grid lines darker
ax=gca;
ax.LineWidth=3;
ax.GridLineStyle='--';
ax.GridAlpha=.8;

%Label axes
xlabel('Time(s)')
ylabel('Voltage(V)')

%print answers to command window
fprintf('A=%.2f V\n',A)
fprintf('w= %.2f rad/s= %dpi rad/s\n',w,w/pi)
fprintf('f= %.2f Hz\n',w/(2*pi))
fprintf('T= %.2f s\n',(2*pi)/w)
fprintf('Theta= %.2f deg= %.2f deg\n',theta*(180/pi),theta*(180/pi)-360)
fprintf('offset= %.2f V\n',offset)