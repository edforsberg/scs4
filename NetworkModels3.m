clear all
clf

n0 = 10;
nMax = 10000;
m = 3;
gamma = 3; 
showPlot = true;

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
    
    if showPlot
        clf
        plot(graph(A));
        drawnow
    end
end



for i = 1:size(A,1)
    
    degreeVec(i) = sum(A(i,:) == 1);    
    
end

maxConnections = max(degreeVec); 
predictionArray = PreferentialGrowthPrediction(m, gamma, n0+nMax);

degreeVec = fliplr(sort(degreeVec)); 
xData = 1:numel(degreeVec); 
loglog(xData, degreeVec); 
hold on
loglog(xData, predictionArray); 
