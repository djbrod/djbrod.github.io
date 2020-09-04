clear all
close all
clc
format short eng

A=[1,1,1;-1,1,0;-3,0,1];
b=[15;-1;-1];
x=inv(A)*b;
x(1)-x(3)