function y = expl_euler(y_0, dt, t_end, f)

t = 0:dt:t_end;
y = zeros(length(y_0), length(t));
y(:,1) = y_0;
for n = 1:length(t)-1
    y(:,n+1) = y(:,n) + dt * f(y(:,n));
end

end