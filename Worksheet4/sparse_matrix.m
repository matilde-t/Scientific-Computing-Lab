function A = sparse_matrix(N_x, N_y)
h2_x = (1/(N_x+1))^2;
h2_y = (1/(N_y+1))^2;
d = (-2/h2_x-2/h2_y)*ones(N_x*N_y,1);
c = 1/h2_y*ones(N_x*N_y-1,1);
c (N_x:N_x:end) = 0; % takes into account the jump on the next column
e = 1/h2_x*ones(N_x*N_y-N_x,1);
x = [1:(N_x*N_y),2:(N_x*N_y),1:(N_x*N_y-1),(N_x+1):(N_x*N_y),1:(N_x*N_y-N_x)];
y = [1:(N_x*N_y),1:(N_x*N_y-1),2:(N_x*N_y),1:(N_x*N_y-N_x),(N_x+1):(N_x*N_y)];
A = sparse(x,y,cat(1,d, c, c, e, e));
end