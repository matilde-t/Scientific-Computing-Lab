function r = residual_norm(N_x, N_y, b, x)
N = N_x*N_y;
sum = 0;
for k=1:N
    internal_sum = 0;
    for m=0:N
        if mod(m,N_x) == 0
           continue 
        end
        internal_sum = internal_sum + a(k,m,N_x,N_y)*x(m);
    end
    sum = sum + (b(k) - internal_sum)^2;
end
r = sqrt(1/N*sum);
end