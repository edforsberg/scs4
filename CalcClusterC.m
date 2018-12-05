function clusterC = CalcClusterC(A)

nrTriangles = trace(A^3)/6;

nrTripplets = 0; 
for i = 1:size(A,1)
    x = sum(A(i,:)); 
    nrTripplets = nrTripplets + x*(x+1)/2;
end

clusterC = nrTriangles/nrTripplets; 

end