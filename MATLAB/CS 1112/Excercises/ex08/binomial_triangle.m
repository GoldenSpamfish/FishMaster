function binomial_triangle(m, sidelength)
close all
figure
hold on
for n=1:m
	for k=1:n
		bincoef=(factorial(n))/(factorial(k)*(factorial(n-k)));
	    if (rem(bincoef,2)==0)
			DrawRect((k-1)*sidelength,(n-1)*sidelength,sidelength,sidelength,'b')
		else
			DrawDisk((k-1)+sidelength/2,(n-1)+sidelength/2,sidelength/2,'w')
        end
    end
end
hold off
end