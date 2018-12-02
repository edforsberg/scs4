clear all 
clf 

n = 100;
c = 2;
p = 0.05;

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
connectionMat1 = D -diag(diag(D));

connectionMat2 = connectionMat1;
nrConnections = n*c;
for i=1:nrConnections
    onDiag = true;
    
    while onDiag
        row = randi(n);
        col = randi(n);
        if (row ~= col)
            onDiag = false;
        end
    end
    if (rand < p)
        connectionMat2(row,col) = 1;
        connectionMat2(col,row) = 1;
    end
    
end

subplot(1,2,1)
gplot(connectionMat1, [xPos', yPos']);
axis equal

subplot(1,2,2)
gplot(connectionMat2, [xPos', yPos']);
axis equal

