clear all
close all
clc
format short eng

u=@(t) heaviside(t);
n=2;
t0=0;t1=1e-3;
T0=t1-t0;
w0=(2*pi)/T0;
x=@(t) cos(2*pi*1e3*t+pi/6)+2*cos(2*pi*2e3*t-pi/6)+2.5;

%iterate through the multiples of the fundamental frequency
for k=0:n;
    %find the weights/coefficients for the cosines
    integrand=@(t) (x(t)).*cos(k.*w0.*t);
    a(k+1)=(2/T0)*integral(integrand,t0,t1);
    
    %find the weights/coefficients for the sines
    integrand=@(t) (x(t)).*sin(k.*w0.*t);
    b(k+1)=(2/T0)*integral(integrand,t0,t1);
end

%plot a_k/b_k over frequency
figure('Renderer', 'painters', 'Position', [391 289 1269 634])
plot(0:length(a)-1,a,'bx','LineWidth',4,'MarkerSize',10)
hold on;grid on
plot(0:length(a)-1,b,'ro','LineWidth',4,'MarkerSize',10)

xlabel('Multiple of the fundamental frequency - k')
ylabel('Coefficient')
legend('a_k','b_k')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

%use a_k/b_k to estimate the original function
t=2*t0:T0/1000:2*t1;
x_hat=(a(1)/2); %DC term

%Can't add the phasor. Move back to the time-domain and add the functions.
%Iterate through the multiple frequencies again
for k=1:n;
    x_hat=x_hat+ a(k+1).*cos(k.*w0.*t)+ b(k+1).*sin(k.*w0.*t);
end

%plot the original function and the estimate
figure('Renderer', 'painters', 'Position', [391 289 1269 634])
hold on;grid on
plot(t,x(t),'ro')
plot(t,x_hat,'LineWidth',3)
xlim([min(t) max(t)])
xlabel('Time (s)')
legend('x(t)','x\_hat(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;

return 
%% Fourier Series and Circuit Analysis Intro
clear all
close all
clc
format short eng

%This function
x=@(t) cos(2*pi*1e3*t+pi/6)+2*cos(2*pi*2e3*t-pi/6)+2.5;
t0=0;t1=1e-3;
T0=t1-t0;
w0=(2*pi)/T0;

%has these Fourier coefficients
a=[5.0000e+000   866.0254e-003     1.7321e+000];
b=[0.0000e+000  -500.0000e-003     1.0000e+000];

%Which represent a DC voltage and 2 phasors, each at different frequencies
V0=a(1)/2;
V1=a(2)-j*b(2);
V2=a(3)-j*b(3);

%Let's print them out in polar form
[abs(V0) angle(V0)*(180/pi)]
[abs(V1) angle(V1)*(180/pi)]
[abs(V2) angle(V2)*(180/pi)]

%we rebuild the source voltage using the phasors V0,V1,V2
%Move back to the time-domain
v0=@(t) V0
v1=@(t) abs(V1)*cos(1*w0*t+angle(V1))
v2=@(t) abs(V2)*cos(2*w0*t+angle(V2))
v=@(t) v0(t)+v1(t)+v2(t)

t=2*t0:T0/1000:2*t1;
%plot the original function and the estimate
figure('Renderer', 'painters', 'Position', [391 289 1269 634])
hold on;grid on
plot(t,x(t),'ro')
plot(t,v(t),'LineWidth',3)
xlim([min(t) max(t)])
xlabel('Time (s)')
legend('x(t)','x\_hat(t)')
set(findall(gcf,'-property','FontSize'),'FontSize',14) 
h=gca; h.MinorGridAlpha=1; h.MinorGridLineStyle='--'; h.GridAlpha=1;
darkBackground(gcf)



