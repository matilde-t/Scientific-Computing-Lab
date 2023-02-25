function y = expl_heun(y_0, dt, t_end, f)

t = [0:dt:t_end]';
y = zeros(length(y_0),length(t));
y(:,1) = y_0;
for n = 1:length(t)-1
    k1 = f(y(:,n));
    k2 = f(y(:,n) + dt*k1);
    y(:,n+1) = y(:,n) + dt/2 * (k1+k2);
end

end