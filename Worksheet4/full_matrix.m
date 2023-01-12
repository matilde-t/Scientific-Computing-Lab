function A = full_matrix(N_x, N_y)
h2_x = (1/(N_x+1))^2;
h2_y = (1/(N_y+1))^2;
d = (-2/h2_x-2/h2_y)*ones(N_x*N_y,1);
c = 1/h2_y*ones(N_x*N_y-1,1);
c (N_x:N_x:end) = 0; % takes into account the jump on the next column by setting the corresponding element to zero
e = 1/h2_x*ones(N_x*N_y-N_x,1);
A = diag(d)... %Main diagonal matrix
    +diag(c,1)... %first upper diagonal
    +diag(c,-1)... %first lower diagonal
    +diag(e, N_x)...%second upper diagonal at +N_x
    +diag(e, -N_x); %second lower diagonal at -N_x
end