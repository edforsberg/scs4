function predictionArray = PreferentialGrowthPrediction(m, gamma,minConnections, maxConnections)

predictionArray = zeros(maxConnections-minConnections,1); 
for i = minConnections:maxConnections
   fi = (m^2)*i^(-gamma+1); 
   predictionArray(i) = fi;    
end


