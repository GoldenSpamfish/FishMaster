function [] = showDigitsOfBinCoef ()
for n=1:1:10
    for k=1:1:n
        f=digitsOfBinCoef(n,k);
    fprintf("%i   ",f)
    end
    disp(" ")
end