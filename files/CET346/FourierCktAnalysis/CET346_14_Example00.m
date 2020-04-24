clear all
close all
clc
format short eng

%% find Fourier coefficients
u=@(t) heaviside(t)
n=30; %# of coefficients to find
T0=8; %Frequency of the cosine
w0=(2*pi)/T0; % period that corresponds to w0
x=@(t) sin((4*pi/3).*t).*(u(t+3)-u(t));
t0=-4; t1=4;

%% plot function to use in video
t=t0:T0/1000:t1;
figure('Renderer', 'painters', 'Position', [391 289 1269 634])
plot(t,x(t),'LineWidth',3)
hold on;grid on
xlabel('Time (s)')
ylabel('Voltage (V)')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;darkBackground(gcf)

for k=0:n;
    integrand=@(t) (x(t)).*cos(k.*w0.*t);
    a(k+1)=(2/T0)*integral(integrand,t0,t1);
    
    integrand=@(t) (x(t)).*sin(k.*w0.*t);
    b(k+1)=(2/T0)*integral(integrand,t0,t1);
end

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
hold on;grid on
plot(0:length(a)-1,a,'x','LineWidth',4,'MarkerSize',10)
plot(0:length(a)-1,b,'ro','LineWidth',4,'MarkerSize',10)

xlabel('Multiple of the fundamental frequency - k')
ylabel('Coefficient')
legend('a_k','b_k')
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;darkBackground(gcf)

%% estimate functions from the Fourier coefficients

x_hat=(a(1)/2);
for k=1:n;
    x_hat=x_hat+ a(k+1).*cos(k.*w0.*t)+ b(k+1).*sin(k.*w0.*t);
end
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;darkBackground(gcf)

%% plot input and estimated input
figure('Renderer', 'painters', 'Position', [391 289 1269 634])
hold on;grid on
plot(t,x(t),'ro')
plot(t,x_hat,'LineWidth',3)

%% perform ckt analysis
syms s
H=@(s) 1/(2.2*s+1)

%DC component output
vo_hat=(a(0+1)/2)*H(j*0); %DC input times DC gain

for k=1:n
    Vi=a(k+1)-j*b(k+1); %phasor for this frequency composed of a cosine and sine
    Vo=Vi*H(j*k*w0); %output=input times gain
    vo_hat=vo_hat+abs(Vo).*cos(k.*w0.*t+angle(Vo)); %move back to time-domain and add to previous result(s)
end

%%  add the output estimate to the plot
plot(t,vo_hat,'g','LineWidth',3)
xlabel('Time (s)')
legend('x(t)','x\_hat(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;darkBackground(gcf)
