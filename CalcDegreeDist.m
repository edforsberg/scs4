function degreeDist = CalcDegreeDist(A)


for i = 1:size(A,1)    
    degreeVec(i) = sum(A(i,:) == 1);     
end

for i = 1:max(degreeVec)
   accDistVec(i) = sum((degreeVec >= i));  
end

degreeDist = accDistVec/size(A,1);


end