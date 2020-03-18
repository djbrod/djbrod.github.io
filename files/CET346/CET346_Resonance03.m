clear all
close all
clc
format short eng

R=12.2e3;
C=0.01e-6;
L=100e-3;

%f=10;%low
%f=1.2270e+003;%f1
%f=5.0329e+003;%resonance
%f=20.6439e+003;%f2
f=1e12;%High
w=2*pi*f;
Zc=1/(j*w*C);
Zl=j*w*L;
I=10/(R+Zl+Zc);

Zs=[Zl+Zc]
I=[abs(I),angle(I)*(180/pi)]
