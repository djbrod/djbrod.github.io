clear all
close all
clc
format short eng

syms K s a
G=K/(s*(s+a));
Kv=subs(s*G,s,0)

e=1/Kv

Sea=(a/e)*diff(e,a)
Sek=(K/e)*diff(e,K)