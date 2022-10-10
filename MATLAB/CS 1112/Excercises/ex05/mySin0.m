function y = mySin0(x)
y=x;
for k=1:8
    y=y+(-1)^k *x^(1+2*k)/factorial(1+2*k);
end