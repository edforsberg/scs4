n = 10;
c = 6;
p = 0.2;

r = 100;

circStep = 2*pi/n;
for i = 1:n
    xPos(i) = cos(circStep*i)*r;
    yPos(i) = sin(circStep*i)*r;
end




A = ones(n); 
B = tril(A, -c/2-1); 
C = tril(B, -n+c/2); 
D = A -(B + B')+(C+C'); 
D = D -diag(diag(D)); 


gplot(D, [xPos', yPos']); 
axis equal 
