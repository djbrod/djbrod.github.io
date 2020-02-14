clear all
close all
clc
format short eng

syms s
G1=1/s^2;
G2=50/(s+1);
G3=2/s;
G4=s;
G5=2;

G6=G2/(1+G2*G3);
G7=G4-G5;
G8=G1*G6*G7;

G9=G8/(1+G8);
pretty(simplify(G9))

%Find poles/zeros
[N,D]=numden(G9)
z=solve(N==0,s)
p=solve(D==0,s,'MaxDegree',3)

[y,t]=step(tf([50 -100],[1 1 150 -100]));
figure(1)
plot(t,y.*heaviside(t),'LineWidth',3) %plot the output
hold on
grid on
xlabel('Time (s)') % label the axes
ylabel('Value')
set(findall(gcf,'-property','FontSize'),'FontSize',16) %make things pretty





