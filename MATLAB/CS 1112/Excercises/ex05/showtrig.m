function [] = showtrig()
for i= 0:2:30
    [a,b]=trig(i);
    fprintf("%2.0ideg   sin: %2.6f  cos: %2.6f \n",i,a,b)
end