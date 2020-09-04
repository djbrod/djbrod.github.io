clear all
close all
clc
format short eng

syms x y z 
eqns(1)=1*x+1*y+1*z==15;
eqns(2)=-1*x+1*y==-1;
eqns(3)=-3*x+1*z==-1;
sol=solve(eqns,x,y,z);
sol.x-sol.z