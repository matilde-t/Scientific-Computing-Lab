function x=newton(x_0, G, dG)
maxI=100;
minEps=10e-8;
i=0;
epsilon=inf;
while(i<maxI && epsilon>minEps)
    x=x_0-G(x_0)./dG(x_0);
    epsilon=abs(x-x_0)./max(abs(x),1);
    x_0=x;
    i=i+1;
end
end