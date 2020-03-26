clear all
close all
clc
%format short eng  %commented out just for Joe

syms s
G=(s+.5)/((s+1)*(s-2));
[N,D]=numden(G);
p_open=solve(D==0,s);

%close the loop
syms K
T=simplify(G/(1+K*G));
[N,D]=numden(T);
p=solve(D==0,s);
p=matlabFunction(p);
K=logspace(-1,1.5,1000);
ps=p(K);

figure(2) % becuase the world is not 2 dimensional and it's not the 1980's anymore
plot3(zeros(size(p_open)),real(p_open),imag(p_open),'x','LineWidth',3,'MarkerSize',10)
hold on;grid on; axis square;
plot3(K,real(ps(1,:)),imag(ps(1,:)),'r.')
plot3(K,real(ps(2,:)),imag(ps(2,:)),'g.')
xlabel('K')
ylabel('Re')
zlabel('Im')
view(90,0)

set(findall(gcf,'-property','FontSize'),'FontSize',16)

%K vs Re
%view(0,90)

