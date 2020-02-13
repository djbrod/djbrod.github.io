clear all
close all
clc
format short eng

w=2*pi;
T=w/(2*pi);
t=0:T/1000:T;

rxd=4.*cos(60.*w.*t);
rxd=8.*cos(60.*w.*t);
rxd=4.*cos(20.*w.*t)+8.*cos(60.*w.*t);
rxd=4.*sin(60.*w.*t);
rxd=4.*cos(60.*w.*t+(60*(pi/180)));

figure('units','normalized','outerposition',[0 0 1 1])

for k=1:100
    sigCos=cos(k.*w.*t);
    sigSin=sin(k.*w.*t);
    subplot(4,1,1)
    cla(gca);
    plot(t,rxd,'LineWidth',3)
    subplot(4,1,2)
    cla(gca);
    plot(t,sigCos,'r','LineWidth',3)
    %hold on;plot(t,rxdSin,'b','LineWidth',3)
    subplot(4,1,3)
    cla(gca);
    plot(t,rxd.*sigCos,'LineWidth',3,'Color',[0.96,.50,.15])
    corrCos(k)=sum(rxd.*sigCos);
    corrSin(k)=sum(rxd.*sigSin);
    subplot(4,1,4)
    cla(gca);
    plot((2/1000)*corrCos,'r','LineWidth',3)
    %hold on;plot((2/1000)*corrSin,'b','LineWidth',3)
    xlim([0,100])
    set(findall(gcf,'-property','FontSize'),'FontSize',16)
    pause(.1)
    if(k==60)
        pause
    end
end
