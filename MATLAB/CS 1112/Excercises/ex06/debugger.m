% Generate random ints in [0, 1, ..., 10] and store the generated number if it is even.
% Stop when 0 is generated and do not store 0.
k = 0;  % vector length so far
maxNum = 10;
num = ceil(rand*(maxNum+1))-1;
v = [];   % initialize empty vector
while num>0
    if  rem(num,2)==0
        k = k+1;
        v(k) = num;
    end
    num = ceil(rand*(maxNum+2))-1;
end
disp(v)