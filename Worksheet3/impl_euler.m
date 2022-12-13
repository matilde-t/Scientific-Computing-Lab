function y = impl_euler(y_0, dt, t_end, f, df)
    t = 0:dt:t_end;
    y = zeros(length(y_0),length(t));
    y(:,1) = y_0;
    for i=1:length(t)-1
        G = @(x) dt*f(x)-x+y(:,i);
        dG = @(x) dt*df(x)-eye(length(y_0));
        y(:,i+1) = newton(y(:,i), G, dG);
    end
end