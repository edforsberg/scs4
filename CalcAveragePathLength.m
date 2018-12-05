function [averagePathLength, diameter] = CalcAveragePathLength(A)

n = size(A,1);

pathLenghts = 0;
diameter = 0;
for i = 1:n
    newConnections = A(i,:);
    newConnections(i) = 0;
    connections = 0;
    steps = 1;
    pathLengthI = 0;
    allConnections = newConnections;
    while (connections < n-1)
        pathLengthI  = pathLengthI + sum(newConnections)*steps;
        steps = steps+1;
        b = find(newConnections);
        newConnections = A(b,:);        
        newConnections = sum(newConnections,1);
        newConnections = (newConnections ~= 0);
        newConnections(i) = 0;
        newConnections = ((newConnections - allConnections) > 0);
        allConnections = (allConnections + newConnections);
        connections = sum(allConnections);
        if (steps > diameter)
            diameter = steps;
        end
    end
    pathLenghts = pathLenghts + pathLengthI;
end
averagePathLength = pathLenghts / (n*(n-1));

end
