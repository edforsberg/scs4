clf
clc
n = 1000; 
p = 0.1;


A = rand(n); 
A = A < p; 
for i = 1:n
    A(i,i) = 0; 
end 

subplot(1,2,1)
A = tril(A)+tril(A)'; 
plot(graph(A));

distArr = []; 
for i = 1:n
    icon = sum(A(i,:) == 1)+1; 
    while (size(distArr,1) < icon)
        distArr = [distArr; 0]; 
    end
    distArr(icon) = distArr(icon)+1; 
end 

minConnections = min(distArr); 

predictionX = 0:size(distArr,1)+30; 
predictionY = TheoreticalPrediction(n,p,predictionX).*n; 

subplot(1,2,2)
bar(distArr); 
hold on 
plot(predictionX+1, predictionY, 'linewidth', 2); 