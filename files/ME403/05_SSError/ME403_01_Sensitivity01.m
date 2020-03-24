clear all
close all
clc
format short eng

syms K s a
G=K/(s*(s+a));

%Closed loop
T=simplify(G/(1+G));
pretty(T)

%with feedback
STa=(a/T)*diff(T,a);
pretty(STa)

%without feedback
S=(a/G)*diff(G,a);
pretty(S)