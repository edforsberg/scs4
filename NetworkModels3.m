clear all
clf

n0 = 3;
nMax = 1000;
m = 3;
gamma = 3; 
showPlot = false;

A = ones(n0);
A = A -diag(diag(A));

for i = 1:nMax
    
    nrNodes = size(A,1);
    aTemp = zeros(nrNodes+1);
    aTemp(1:end-1,1:end-1) = A;
    
    
    for j = 1:nrNodes
        weights(j) = sum(A(j,:));
    end
    
    for j = 1:m
        newConnection = randsample(nrNodes,1,true,weights);
        weights(newConnection) = 0;
        aTemp(end,newConnection) = 1;
        aTemp(newConnection,end) = 1;
    end
    
    A = aTemp;
    
    if (showPlot || i == nMax-1)
        clf
        subplot(1,2,1); 
        plot(graph(A));
        drawnow
    end
end



accDistVec =  CalcDegreeDist(A); 
predictionArray = PreferentialGrowthPrediction(m,gamma,m,numel(accDistVec));

subplot(1,2,2); 
xData = 1:numel(accDistVec); 
loglog(xData, accDistVec); 
drawnow
hold on
loglog(xData, predictionArray); 
drawnow
title('n0 = 3, m0 = 3, nMax = 10000'); 
legend('inverse cumulative distribution', 'prediction: F(k)=(m^2)*k^{(-2)}'); 
