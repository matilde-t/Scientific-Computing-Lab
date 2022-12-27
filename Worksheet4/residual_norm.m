function r = residual_norm(N_x, N_y, b, x)
h2_x = (1/(N_x+1))^2;
h2_y = (1/(N_y+1))^2;
d = -2/h2_x-2/h2_y;
c = 1/h2_y;
e = 1/h2_x;
sum = 0;
for k=0:N_x*N_y
    sum = sum + (b(k)-(mod(k+1,N_x+1)>0)*c*x(k)
    %% TODO
end
end