clear all

A1 = csvread('Network1');
A2 = csvread('Network2');
A3 = csvread('Network3');

%%
%Drullusokkur
degreeDist1 =  CalcDegreeDist(A1);
degreeDist2 =  CalcDegreeDist(A2);
degreeDist3 =  CalcDegreeDist(A3);
xData = 1:71; 
degreeDist1 = [degreeDist1, zeros(1,71-numel(degreeDist1))]; 
degreeDist2 = [degreeDist2, zeros(1,71-numel(degreeDist2))]; 
degreeDist3 = [degreeDist3, zeros(1,71-numel(degreeDist3))]; 
loglog(xData, degreeDist1, xData, degreeDist2, xData, degreeDist3); 
title('inverse cumulative degree dist'); 
legend('NW1', 'NW2', 'NW3'); 

clusterC1 = CalcClusterC(A1); 
clusterC2 = CalcClusterC(A2); 
clusterC3 = CalcClusterC(A3); 

[averagePathLength1, diameter1] = CalcAveragePathLength(A1); 
[averagePathLength2, diameter2] = CalcAveragePathLength(A2); 
[averagePathLength3, diameter3] = CalcAveragePathLength(A3); 