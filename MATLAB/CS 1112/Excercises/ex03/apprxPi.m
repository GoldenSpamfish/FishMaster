n=1000;
findPiTau=0;
findPiRho=0;
for a=1:1:n
    findPiTau=(findPiTau+(1/a^2));
    findPiRho=findPiRho+(((-1)^(a+1))/(2*a-1));
    
    if mod(a,100)==0
        fprintf("At n=%4.0i:    Tau: %d Rho: %d \n",a,pi-(sqrt(6*(findPiTau))), pi-(4*findPiRho))
    end
end


