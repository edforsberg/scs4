clear all 

A = csvread('smallWorldExample'); 
nrTriangles = trace(A^3)/6;

nrTripplets = 0; 
for i=1:size(A,1) 
   ki = sum(A(i,:) == 1); 
   nrTripplets = nrTripplets + ki*(ki);    
end
nrTripplets = nrTripplets/2; 

cClust = nrTriangles*3/nrTripplets; 

disp(cClust); 
 
