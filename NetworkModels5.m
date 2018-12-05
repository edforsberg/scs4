clear all

A = csvread('smallWorldExample'); 
plot(graph(A)); 

[averagePathLength, diameter] = CalcAveragePathLength(A)