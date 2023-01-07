function x = gauss_seidel(b, N_x, N_y)
h2_x = (1/(N_x+1))^2;
h2_y = (1/(N_y+1))^2;
d = -2/h2_x-2/h2_y;
c = 1/h2_y;
e = 1/h2_x;
rnorm = inf;
N = N_x*N_y;
x = zeros(N,1);
j=0;
while rnorm > 1e-3 && j<1000
    j=j+1;
    for i=1:N
        sum=0;
        if(i>N_x+1)
        sum=sum+e*x(i-N_x);
        end
        if(i>1 && mod(i,N_x)~=1) 
        sum=sum+c*x(i-1);
        end
        if(i<N&& mod(i,N_x)~=0)
        sum=sum+c*x(i+1);
        end
        if(i<N-N_x-1)
        sum=sum+e*x(i+N_x);
        end
        x(i) = 1/d*(b(i)-sum);
    end
    rnorm=residual_norm(N_x, N_y, b, x);
end
x = reshape(x, N_x, N_y);
end
