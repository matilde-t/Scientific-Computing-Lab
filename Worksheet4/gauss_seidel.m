function x = gauss_seidel(b, N_x, N_y, T)
h2_x = (1/(N_x+1))^2;
h2_y = (1/(N_y+1))^2;
d = -2/h2_x-2/h2_y;
c = 1/h2_y;
e = 1/h2_x;
rnorm = inf;
N = N_x*N_y;
x = zeros(1,N);
while rnorm > 1e-4
    for i=1:N
        x(i) = 1/d*(b(i)-c*x(i-1)-c*x(i+1)-e*x(i+N_x+1)-e*x(i-N_x-1));
    end
end
end