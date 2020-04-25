%% Finding a transfer function with Mesh Analysis
clear all
close all
clc
format short eng

syms R G L C s Vin I1 I2
Zl=s*L;
Zc=inv(s*C);

eqn(1)=Vin-R*I1-Zl*I1-Zc*(I1-I2)==0;
eqn(2)=-Zc*(I2-I1)-(1/G)*I2==0;
%eqn(1)=(R+Zl+Zc)*I1+(-Zc)*I2==Vin;
%eqn(2)=(-Zc)*I1+(Zc+(1/G))*I2==0;
sol=solve(eqn,I1,I2);
Vout=sol.I2*(1/G);

H=Vout/Vin;% Gain is output over input

H1s=subs(H,[R G L C],[200 5e-6 8e-6 675e-12]); %50 ft values
H2s=subs(H,[R G L C],[267.3 32.8e-6 52.48e-6 4.43e-9]); %328 ft values
H3s=subs(H,[R G L C],[2673 328e-6 524.8e-6 44.3e-9]); %3280 ft values
pretty(vpa(simplify(H1s),3)) %Print the transfer function in the Command Window
pretty(vpa(simplify(H2s),3)) %Print the transfer function in the Command Window
pretty(vpa(simplify(H3s),3)) %Print the transfer function in the Command Window
f=logspace(0,10,1000);
w=2*pi*f;
H1=subs(H1s,s,j*w);
H2=subs(H2s,s,j*w);
H3=subs(H3s,s,j*w);

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
subplot(2,1,1) 
semilogx(f,20*log10(abs(H1)),'LineWidth',2)
hold on
semilogx(f,20*log10(abs(H2)),'LineWidth',2)
semilogx(f,20*log10(abs(H3)),'LineWidth',2)
grid on
ylabel('Gain (dB)')
legend('50 ft','328 ft','3280 ft')

fig=gcf;
set(findall(fig,'-property','FontSize'),'FontSize',18) 

subplot(2,1,2)
semilogx(f,angle(H1)*(180/pi),'LineWidth',2)
hold on
semilogx(f,angle(H2)*(180/pi),'LineWidth',2)
semilogx(f,angle(H3)*(180/pi),'LineWidth',2)
grid on
xlabel('Frequency (Hz)')
ylabel('Phase Shift (deg)')

fig=gcf;
set(findall(fig,'-property','FontSize'),'FontSize',18) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;darkBackground(gcf)

%%  Break the signal into phasors
u=@(t) heaviside(t);
n=100;
T0=1/20e3;
w0=(2*pi)/T0;
x=@(t) 5*u(t)-5*u(t-.25e-4)+5*u(t-.5e-4)-5*u(t-.75e-4);
t0=0;t1=T0;

for k=0:n;
    integrand=@(t) (x(t)).*cos(k.*w0.*t);
    a(k+1)=(2/T0)*integral(integrand,t0,t1);
    
    integrand=@(t) (x(t)).*sin(k.*w0.*t);
    b(k+1)=(2/T0)*integral(integrand,t0,t1);
end

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
hold on;grid on
semilogy(0:length(a)-1,a,'x','LineWidth',4,'MarkerSize',10)
semilogy(0:length(a)-1,b,'ro','LineWidth',4,'MarkerSize',10)

xlabel('Multiple of the fundamental frequency - k')
ylabel('Coefficient')
legend('a_k','b_k')

tk=0:T0/1000:2*T0;
x_hat=(a(1)/2);
for k=1:n;
    x_hat=x_hat+ a(k+1).*cos(k.*w0.*tk)+ b(k+1).*sin(k.*w0.*tk);
end
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;darkBackground(gcf)

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
hold on;grid on
plot(tk,x(tk),'ro-','LineWidth',3)
plot(tk,x_hat,'LineWidth',3)
xlabel('Time (s)')
legend('x(t)','x\_hat(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;darkBackground(gcf)

%%
%DC component output
vo_hat=(a(0+1)/2)*(1); %DC input times DC gain

for k=1:n
    H=subs(H1s,s,j*k*w0); % Find gain at multiple of w0
    Vi=a(k+1)-j*b(k+1);
    Vo=Vi*H;
    vo_hat=vo_hat+eval(abs(Vo)).*cos(k.*w0.*tk+eval(angle(Vo)));
end

plot(tk,vo_hat,'g','LineWidth',3)
l1=line([(2/6)*T0,(2/6)*T0],[-1,6]);
l2=line([(5/6)*T0,(5/6)*T0],[-1,6]);
l3=line([(8/6)*T0,(8/6)*T0],[-1,6]);
l4=line([(11/6)*T0,(11/6)*T0],[-1,6]);
set([l1 l2 l3 l4],'LineStyle','--','LineWidth',2,'Color',[1 1 1])

a = text((1.8/6)*T0, 1.5,'RX Sample','Rotation',90,'Color',[1 1 1]);
a = text((4.8/6)*T0, 1.5,'RX Sample','Rotation',90,'Color',[1 1 1]);
a = text((7.8/6)*T0, 1.5,'RX Sample','Rotation',90,'Color',[1 1 1]);
a = text((10.8/6)*T0, 1.5,'RX Sample','Rotation',90,'Color',[1 1 1]);
xlabel('Time (s)')
legend('x(t)','x\_hat(t)','vo\_hat(t)')
xlim([0,2*T0])
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;darkBackground(gcf)


