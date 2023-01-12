function x =Gauss_SeidelFull(A,b)
x = zeros(size(b));
err=inf;
j=0;
while err > 1e-3 && j<1000
    
    % Save the previous solution
    x_prev = x;
    
    % Perform an iteration of the Gauss-Seidel method
    for i = 1:length(b)
        x(i) = (b(i) - A(i, 1:i-1) * x(1:i-1) - A(i, i+1:end) * x_prev(i+1:end)) / A(i,i);
    end

    err=norm((x - x_prev)./x);
%     rnorm=residual_norm(3,3, b, x)
%     x'
    j=j+1;
end




end