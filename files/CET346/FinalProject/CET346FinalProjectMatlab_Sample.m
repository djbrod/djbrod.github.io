%% Transfer Fucntion
clear all
close all
clc
format short eng

R1=10;
R2=12;
C=1e-3;
syms s Vin Va Vb 
Zc=1/(s*C);

e(1)=Va==Vin; %KVL A
e(2)=((Va-Vb)/(R1))-((Vb-0)/(Zc))-((Vb-0)/(R2))==0; %KVL B
sol=solve(e,Va,Vb);
Vout=sol.Vb-0;
H=Vout/Vin;
pretty(simplify(H))

%% Bode Plot
H=matlabFunction(H);
f=logspace(0,4,1000);
w=2*pi*f;
figure('Renderer', 'painters', 'Position', [391 289 1269 634])
subplot(2,1,1) 
semilogx(f,20*log10(abs(H(j.*w))),'LineWidth',2)
grid on
ylabel('Gain (dB)')
set(findall(gcf,'-property','FontSize'),'FontSize',18) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

subplot(2,1,2)
semilogx(f,angle(H(j.*w))*(180/pi),'LineWidth',2)
grid on
xlabel('Frequency (Hz)')
ylabel('Phase Shift (deg)')
set(findall(gcf,'-property','FontSize'),'FontSize',18) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

%% Find the Fourier coefficients
u=@(t) heaviside(t);
n=10;
w0=377;
T0=(2*pi)/w0;
x=@(t) 24.*sin(w0*t).*u((T0/2)-t);
t0=0;t1=T0;

for k=0:n;
    integrand=@(t) (x(t)).*cos(k.*w0.*t);
    a(k+1)=(2/T0)*integral(integrand,t0,t1);
    
    integrand=@(t) (x(t)).*sin(k.*w0.*t);
    b(k+1)=(2/T0)*integral(integrand,t0,t1);
end

figure('Renderer', 'painters', 'Position', [391 289 1269 634])
hold on;grid on
plot(0:length(a)-1,b,'ro','LineWidth',4,'MarkerSize',10)
plot(0:length(a)-1,a,'x','LineWidth',4,'MarkerSize',10)

xlabel('Multiple of the fundamental frequency - k')
ylabel('Coefficient')
legend('a_k','b_k')
set(findall(gcf,'-property','FontSize'),'FontSize',24) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

t=0:T0/1000:T0;
x_hat=(a(1)/2);
for k=1:n;
    x_hat=x_hat+ a(k+1).*cos(k.*w0.*t)+ b(k+1).*sin(k.*w0.*t);
end
figure('Renderer', 'painters', 'Position', [391 289 1269 634])
hold on;grid on
plot(t,x(t),'ro','LineWidth',3)
plot(t,x_hat,'LineWidth',3)
xlabel('Time (s)')
ylabel('Voltage (V)')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

%% Perform superpositon to estimate the output
vo_hat=(a(0+1)/2)*H(j*0); %DC input times DC gain

for k=1:n
    Vi=a(k+1)-j*b(k+1); %phasor for this frequency composed of a cosine and sine
    Vo=Vi*H(j*k*w0); %output=input times gain
    vo_hat=vo_hat+abs(Vo).*cos(k.*w0.*t+angle(Vo)); %move back to time-domain and add to previous result(s)
end

%%  add the output estimate to the plot
plot(t,vo_hat,'g','LineWidth',3)
xlabel('Time (s)')
legend('x(t)','x\_hat(t)','v_o\_hat(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

%% Write input waveform to CSV file for simulation
csvwrite('input.txt',[t',x(t)'])


