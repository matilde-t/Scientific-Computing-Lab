function b = add_bound(a, N_x, N_y)
%Adds a 1 cell boundary around the given matrix a with values of zero
b = zeros(N_x+2,N_y+2);
b(2:N_x+1, 2:N_y+1) = a;
end