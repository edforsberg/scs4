clear all 

A = csvread('smallWorldExample'); 

n = size(A,1); 
r = 100; 
circStep = 2*pi/n;
for i = 1:n
    xPos(i) = cos(circStep*i)*r;
    yPos(i) = sin(circStep*i)*r;
end

subplot(1,2,1)
gplot(A, [xPos', yPos']);
axis equal
xlimits([0 r]);
ylimits([0 r]);

nrTriangles = trace(A^3)/6;
nrTripplets = 0; 
for i=1:size(A,1) 
   ki = sum(A(i,:) == 1); 
   nrTripplets = nrTripplets + ki*(ki-1);    
end
nrTripplets = nrTripplets/2; 

cClust = nrTriangles*3/nrTripplets; 

disp(cClust); 
 
