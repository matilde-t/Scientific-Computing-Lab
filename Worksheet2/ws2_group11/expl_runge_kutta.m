function y = expl_runge_kutta(y_0, dt, t_end, f)

t = 0:dt:t_end;
y = zeros(1, length(t));
y(1) = y_0;
for n = 1:length(t)-1
    k1 = f(y(n));
    k2 = f(y(n)+dt/2*k1);
    k3 = f(y(n)+dt/2*k2);
    k4 = f(y(n)+dt*k3);
    y(n+1) = y(n) + dt/6 * (k1 + 2*k2 + 2*k3 + k4);
end

end