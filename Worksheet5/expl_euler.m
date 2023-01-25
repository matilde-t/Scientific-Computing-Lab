function x = expl_euler(A, dt, xm)
x = xm + dt*A*xm;
% x(x<0) = 0;
end