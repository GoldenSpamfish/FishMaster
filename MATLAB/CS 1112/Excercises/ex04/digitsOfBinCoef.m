function d = digitsOfBinCoef(n,k)
d=factorial(n)/(factorial(k)*factorial(n-k));
d=floor(log10(d))+1;
