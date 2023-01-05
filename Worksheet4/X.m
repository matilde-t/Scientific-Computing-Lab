function x=X(xA,N_x,N_y,i)

if max([(i>N_x+1), (i>1), (i<N_x*N_y), (i<N_x*N_y-N_x-1)]==1)
    x=0;
else
    x=xA(i);
end
end