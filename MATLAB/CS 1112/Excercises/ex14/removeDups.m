function w = removeDups(v)
% Returns vector v with adjacent duplicates removed
% v: a numeric vector, possibly empty
% w: v but with adjacent duplicates removed
% Example: If v is [2,3,3,3,5,5,4,2,3,3]
% then w is [2,3,5,4,2,3]
% Use recursion. No loops.
w=[];
if length(v)==1
   w=v;
elseif length(v)==2
        if v(1) == v(2)
            w=v(1);
            disp('removed dup')
        else
            w=v;
        end
else 
    L=removeDups(v(1:2))
    R=removeDups(v(3:end))
    if L(end)==R(1)
        w=[L,R(2:end)];
    else
    w=[L,R];
    end
end                                             