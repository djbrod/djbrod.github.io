%my typical front matter
clear all
close all
clc
format short eng

a=5; % move the pole with this
b=2; % move the zero with this

syms s %define the sysmbolic variable

%H=@(s) 1/(s+a) %define the transfer function as a function of s
%H=@(s) a/(s+a) %define the transfer function as a function of s
H=@(s) (s+b)/(s+a) %define the transfer function as a function of s



X=@(s) 1/s %define the input signal as a function of s
Y=@(s) X(s)*H(s) %convolve the two to find the output as a function of s
y=matlabFunction(ilaplace(Y(s))) %move back to the time-domain
x=matlabFunction(ilaplace(X(s))) %move back to the time-domain


t=-.1:.0001:5/a;  % can we pick these more deliberately?
plot(t,y(t).*heaviside(t),'LineWidth',3) %plot the output
hold on 
plot(t,heaviside(t),'LineWidth',3) %plot the input
xlabel('Time (s)') % label the axes
ylabel('Value')
set(findall(gcf,'-property','FontSize'),'FontSize',12) %make things pretty

% discuss the 
% 1) Time-constant
% 2) Steady state response
% 3) Rise-time
% 4) Settling-time

% change the 
% 1) pole (positive, negative, zero)
% 2) numerator

% show 1/(tau*s+1)
% add a zero
% change the 
% 1) zero(positive, negative, zero)

