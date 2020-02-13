clear all
close all
clc
format short eng

sig=[100,80,60,40,20,0,0,0,0,0];
rxd=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,80,60,40,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
rxd=zeros(1,60);
n=31;
rxd(n:n+length(sig)-1)=sig;
rxd=rxd+10*randn(size(rxd));

for n=1:(length(rxd)-length(sig))
    paddedSig=zeros(size(rxd));
    paddedSig(n:n+length(sig)-1)=sig;
    
    subplot(4,1,1)
    plot(paddedSig,'LineWidth',3)
    xlim([0,length(rxd)])
    subplot(4,1,2)
    plot(rxd,'r','LineWidth',3)
    xlim([0,length(rxd)])
    subplot(4,1,3)
    plot(paddedSig.*rxd,'LineWidth',3,'Color',[0.96,.50,.15])
    xlim([0,length(rxd)])
    corr(n)=(1/length(rxd))*sum(paddedSig.*rxd);
    xlabel(corr(n));
    subplot(4,1,4)
    plot(corr,'LineWidth',3,'Color',[0.96,.50,.15])
    xlim([0,length(rxd)])
    
    set(findall(gcf,'-property','FontSize'),'FontSize',16)
    pause
end
