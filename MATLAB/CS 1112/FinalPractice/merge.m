function out = merge(left,right)
l=1;
r=1;
out=[];
while (l<= length(left) && r<= length(right))
    if left(l).numValue < right(r).numValue
        out=[out left(l)];
        l=l+1;
    else
        out=[out right(r)];
        r=r+1;
    end
end
if ~isempty(left(l:end))
    out=[out left(l:end)];
end
if ~isempty (right(r:end))
    out=[out right(r:end)];
end
