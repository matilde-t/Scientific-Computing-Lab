function f = a(i,j, N_x, N_y)
h2_x = (1/(N_x+1))^2;
h2_y = (1/(N_y+1))^2;

if i == j
    f = -2/h2_x-2/h2_y;
elseif abs(j-i) == 1
    f = 1/h2_y;
elseif abs(j-i) == N_x
    f = 1/h2_x;
else
    f = 0;
end

end