%my typical front matter
clear all
close all
clc
format short eng

p1=-5;p2=-2; K=10;%Over-damped
p1=-2;p2=-2; K=4; %Critically-damped
p1=-2+10i;p2=-2-10i;K=104; %Under-damped
%p1=10i;p2=-10i;K=100; %Undamped

%K=p1*p2;
syms s %define the sysmbolic variable


H=@(s) K/((s-p1)*(s-p2)) %Over-damped
X=@(s) 1/s %define the input signal as a function of s
Y=@(s) X(s)*H(s) %convolve the two to find the output as a function of s
y=matlabFunction(ilaplace(Y(s))) %move back to the time-domain
x=matlabFunction(ilaplace(X(s))) %move back to the time-domain


t=-1:.01:5;  % can we pick these more deliberately?
plot(t,y(t).*heaviside(t),'LineWidth',3) %plot the output
hold on 
plot(t,heaviside(t),'LineWidth',3) %plot the input
xlabel('Time (s)') % label the axes
ylabel('Value')
set(findall(gcf,'-property','FontSize'),'FontSize',12) %make things pretty

