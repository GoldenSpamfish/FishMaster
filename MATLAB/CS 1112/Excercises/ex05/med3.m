function y = med3(a,b,c)
%finds median of 3 numbers
if a>b && a<c || b>a && c<a
    y=a;
elseif b>a && b<c || b>c && b<a
    y=b;
else
    y=c;
end