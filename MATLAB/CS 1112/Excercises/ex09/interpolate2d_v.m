nr=3;
nc=4;
% M=rand(nr,nc)
M = [2 1 1 2; ...
     6 5 4 3; ...
     5 5 5 4];
newM=[];

for r=1:nr   
    for c=1:nc
       if c<nc
         newM(2*r-1,2*c)=(M(r,c)+M(r,c+1))/2;
       end
       newM(2*r-1,2*c-1)=M(r,c);
    
    end
end
for r=2:2:nr+nr/2  
    for c=1:2*nc-1   
    newM(r,c)=(newM(r-1,c)+newM(r+1,c))/2;
    end
end
newM