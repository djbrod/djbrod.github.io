%Example Generator: Phase Difference
clear all
close all
clc
format short eng

%store random amplitudes
A1=ceil(5*rand(1,1)); 
A2=ceil(5*rand(1,1));
w=2*pi*ceil(6*rand(1,1))/2; %store random ang. freq.
T=(2*pi)/w; %convert w to period
theta=0:pi/4:2*pi; %create vector of possible phase angles for first signal
theta1=theta(randi(length(theta))); %randomly select one of the phase angles
thetad=theta(randi(length(theta))); % randomly select a phase difference

t=-T:T/1000:3*T; %create time vector to plot sinusoids
figure('units','normalized','outerposition',[0 0 1 1]) %maximize plot
plot(t,A1*cos(w.*t+theta1),'LineWidth',3) %plot 1st sinusoid
hold on %prevent new plots from overwriting old plots 
plot(t,A2*cos(w.*t+theta1+thetad),'LineWidth',3) %plot 2nd sinusoid
grid on %turn on grid
ylim([-5.,5.]) %set vertical plot limits
xlim([-.1*T,1.65*T]) %set horizontal plot limits
set(findall(gcf,'-property','FontSize'),'FontSize',18) %set all font sizes

%make grid darker
ax=gca;
ax.LineWidth=3;
ax.GridLineStyle='--';
ax.GridAlpha=.8;

%label axes
xlabel('Time(s)')
ylabel('Voltage(V)')

%print answer(s) to command window
fprintf('diff= %.2f deg= %.2f deg\n',thetad*(180/pi),thetad*(180/pi)-360)
