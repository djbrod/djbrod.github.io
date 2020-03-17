clear all
close all
clc
format short eng

R=159;
C=1e-6;

f=1e3;
w=2*pi*f;
Zc=1/(j*w*C)

Io=10/(R+Zc);
[abs(Io) angle(Io)*(180/pi)]

62.6e-3/10 %Gain @10kHz
44.45e-3/10 %Gain @1kHz
ans/6.26e-3 %Change in gain from pass-band to cut-off
20*log10(44.45e-3/62.6e-3) %power gain at cut-off