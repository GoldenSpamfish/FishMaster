for n=1:1:10
    for k=1:1:n
        f=factorial(n)/(factorial(k)*factorial(n-k));
        f=floor(log10(f))+1;
    fprintf("%i   ",f)
    end
    disp(" ")
end