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
xlim([-r r]);
ylim([-r r]);

clusterC = CalcClusterC(A);

disp(clusterC); 


 
