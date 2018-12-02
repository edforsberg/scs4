function y = RandsampleWithoutReplacement(nrNodes,k,w)
y = [];
if ~isempty(nrNodes) && k > 0
  n = length(nrNodes);
  ii = randsample(1:n,1,true,w);
  newpop = setdiff(1:n,ii);
  y = [nrNodes(ii) randsampleWithoutReplacement(nrNodes(newpop),k-1,w(newpop))];
end