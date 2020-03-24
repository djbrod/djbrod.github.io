clear all
close all
clc
format short eng

syms K s a b
G=K/((s+a)*(s+b));
Kp=subs(G,s,0) %cheating the limit by evaluating at 0

e=simplify(1/(1+Kp))

Sea=simplify((a/e)*diff(e,a))
Sek=simplify((K/e)*diff(e,K))