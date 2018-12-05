clear all


A = csvread('smallWorldExample'); 
A = [0 1 1 0;1 0 0 1;1 0 0 1;0 1 1 0]; 
plot(graph(A)); 

[averagePathLength, diameter] = CalcAveragePathLength(A)