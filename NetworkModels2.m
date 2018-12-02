n = 10;
c = 3;
p = 0.2;

r = 100;

circStep = 2*pi/n;
for i = 1:n
    xPos(i) = cos(circStep*i)*r;
    yPos(i) = sin(circStep*i)*r;
end
% 
% A = []; 
% for i = 1:N
%     rowI = zeros(1,n); 
%     for j = i+1:c
%         




A = ones(n); 
B = tril(B, -c); 
C = tril(B, -n+c-1); 
D = A -(B + B')+(C+C'); 

gplot(D, [xPos', yPos']); 
axis equal 
