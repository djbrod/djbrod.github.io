clear all
close all
clc

syms x w t T integrand

n=100;
T0=1;
w0=(2*pi)/T0;
x=@(t) 2*(heaviside(t-.2)-heaviside(t-.4));
t0=0;t1=T0;

for k=0:n;
    integrand=@(t) (x(t)).*cos(k.*w0.*t);
    a(k+1)=(2/T0)*integral(integrand,t0,t1);
    
    integrand=@(t) (x(t)).*sin(k.*w0.*t);
    b(k+1)=(2/T0)*integral(integrand,t0,t1);
end

figure(1)
hold on;grid on
semilogy(0:length(a)-1,a,'x','LineWidth',4,'MarkerSize',10)
semilogy(0:length(a)-1,b,'ro','LineWidth',4,'MarkerSize',10)

xlabel('Multiple of the fundamental frequency - k')
ylabel('Coefficient')
legend('a_k','b_k')

tk=0:1/1000:2;
x_hat=(a(1)/2);
for k=1:n;
    x_hat=x_hat+ a(k+1).*cos(k.*w0.*tk)+ b(k+1).*sin(k.*w0.*tk);
end
set(findall(gcf,'-property','FontSize'),'FontSize',14) 

figure(2)
hold on;grid on
plot(tk,x(tk),'ro-','LineWidth',3)
plot(tk,x_hat,'LineWidth',3)
xlabel('Time (s)')
legend('x(t)','x\_hat(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 

