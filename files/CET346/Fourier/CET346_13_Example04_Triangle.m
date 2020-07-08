clear all
close all
clc
format short eng

u=@(t) heaviside(t);
n=10;
T0=1;
w0=(2*pi)/T0;
%x=@(t) 4*t.*u(t)-8*(t-.5*T0).*u(t-.5*T0)+8*(t-T0).*u(t-T0)-8*(t-1.5*T0).*u(t-1.5*T0);
x=@(t) 4*t.*(u(t)-u(t-0.5))+(-4*t+4).*(u(t-0.5)-u(t-1));
t0=0;t1=T0;


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
t=0:T0/1000:2*T0;
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

