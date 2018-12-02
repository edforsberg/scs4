function predictionArray = TheoreticalPrediction(n,p,array)

s = numel(array); 
predictionArray = zeros(s,1); 
for i = 1:s 
    k = array(i); 
    pi = nchoosek(n-1,k)*p^k*(1-p)^(n-1-k); 
    predictionArray(i) = pi; 
end 
