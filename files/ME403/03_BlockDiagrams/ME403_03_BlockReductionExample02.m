clear all
close all
clc
format short eng

syms H1 G1 G2 G3

G4=G1/(1+G1*H1);
G5=G2+(1/G1);
G=G4*G5*G3

pretty(simplify(G))

