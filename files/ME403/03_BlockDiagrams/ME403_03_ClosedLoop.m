clear all
close all
clc
format short eng

syms s

G=@(s) 1/(s-1);
X=@(s) 1/s;
Y=@(s) X(s)*G(s);

H=@(s) 2;
Ycl=@(s) (X(s)*G(s))/(1+G(s)*H(s));
ycl=matlabFunction(ilaplace(Ycl(s))) %move back to the time-domain

y=matlabFunction(ilaplace(Y(s))) %move back to the time-domain
x=matlabFunction(ilaplace(X(s))) %move back to the time-domain


t=-.1:.0001:5;  % can we pick these more deliberately?
figure(1)
plot(t,y(t).*heaviside(t),'LineWidth',3) %plot the output
hold on 
plot(t,heaviside(t),'LineWidth',3) %plot the input
xlabel('Time (s)') % label the axes
ylabel('Value')
set(findall(gcf,'-property','FontSize'),'FontSize',12) %make things pretty


figure(2)
plot(t,ycl(t).*heaviside(t),'LineWidth',3) %plot the output
hold on 
plot(t,heaviside(t),'LineWidth',3) %plot the input
xlabel('Time (s)') % label the axes
ylabel('Value')
set(findall(gcf,'-property','FontSize'),'FontSize',12) %make things pretty

