function predictionArray = PreferentialGrowthPrediction(m, gamma, maxConnections)

predictionArray = zeros(maxConnections,1); 
for i = 1:maxConnections
   fi = 2*(m^2)*i^(-gamma+1); 
   predictionArray(i) = fi;    
end


