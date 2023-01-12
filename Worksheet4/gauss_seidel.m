function x = gauss_seidel(b, N_x, N_y)
d = -2/((1/(N_x+1))^2)-2/((1/(N_y+1))^2); % main diagonal
c = 1/((1/(N_y+1))^2); % upper and lower diagonal
e = 1/((1/(N_x+1))^2); % second upper and lower diagonal
rnorm = inf; % residual norm is set to infinity as an initial value
N = N_x*N_y; % total number of grid points
x = zeros(N,1); % initialize solution vector x with all zeros
j=0;

% Iterate until the residual norm is below 1e-4
while rnorm > 1e-4
    j=j+1;
    for i=1:N
        sum=0;
        if(i>N_x)
            sum=sum+e*x(i-N_x); % second upper diagonal
        end
        if(i>1 && mod(i,N_x)~=1)
            sum=sum+c*x(i-1); % lower diagonal
        end
        if(i<N&& mod(i,N_x)~=0)
            sum=sum+c*x(i+1); % upper diagonal
        end
        if(i<N-N_x)
            sum=sum+e*x(i+N_x); % second lower diagonal
        end
        x(i) = 1/d*(b(i)-sum); % update solution vector x
    end
    rnorm=residual_norm(N_x, N_y, b, x); % calculate the residual norm
end
x = reshape(x, N_x, N_y); % reshape x into a matrix with dimensions N_x, N_y
end