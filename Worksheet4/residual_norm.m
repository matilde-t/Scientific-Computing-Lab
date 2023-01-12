function r = residual_norm(N_x, N_y, b, x)
h2_x = (1/(N_x+1))^2; % grid spacing in x direction
h2_y = (1/(N_y+1))^2; % grid spacing in y direction
d = -2/h2_x-2/h2_y; % main diagonal element
c = 1/h2_y; % upper and lower diagonal element
e = 1/h2_x; % second upper and lower diagonal element
N = N_x*N_y;
g = zeros(N,1);

for i=1:N
    s=0;
    if(i>N_x)
        s=s+e*x(i-N_x); % second upper diagonal element
    end
    if(i>1 && mod(i,N_x)~=1)
        s=s+c*x(i-1); % lower diagonal element
    end
    if(i<N&& mod(i,N_x)~=0)
        s=s+c*x(i+1); % upper diagonal element
    end
    if(i<N-N_x)
        s=s+e*x(i+N_x); % second lower diagonal element
    end
    s = s+d*x(i);
    g(i) = (b(i)-s)^2; % calculate the square of residual
end
r = sqrt(1/N*sum(g,'all')); % calculate the residual norm
end