function x=newton(x_0, G, dG)
maxI=100;
minEps=10e-8;
i=0;
epsilon=inf;
while(i<maxI && epsilon>minEps)
    inv_dG = dG(x_0)\eye(length(x_0));
    x=x_0-inv_dG*G(x_0);
    epsilon=norm(x-x_0)./max(norm(x),1);
    x_0=x;
    i=i+1;
end
end