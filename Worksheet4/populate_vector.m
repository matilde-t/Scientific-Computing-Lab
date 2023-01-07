function b = populate_vector(N_x, N_y, f)

b = zeros(N_x*N_y,1); % preallocate for speed
for i = 1:N_x
    for j = 1:N_y
        b(i+(j-1)*N_x) = f(i/(N_x+1),j/(N_y+1));
    end
end

end