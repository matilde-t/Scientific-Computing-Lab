function y = impl_euler(y_0, dt, t_end, f, df)
    t = 0:dt:t_end;
    y = zeros(1,length(t));
    y(1) = y_0;
    for i=1:length(y)-1
        G = @(x) dt*f(x)-x+y(i);
        dG = @(x) dt*df(x)-1;
        y(i+1) = newton(y(i), G, dG);
    end
end