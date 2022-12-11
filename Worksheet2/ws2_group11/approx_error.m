function e = approx_error(dt, t_end, x, x_exact)

e = sqrt(dt/t_end*sum((x-x_exact).^2));

end