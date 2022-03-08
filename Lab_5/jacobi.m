function x1 = jacobi(a,b,x0,tolerance)

[n n] = size(a);

for j = 1 : n
     x(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x0([1:j-1,j+1:n])) / a(j,j));
endfor

x1 = x';
iter = 1;

while norm(x1-x0,1) > tolerance
    for j = 1 : n
     xn(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x1([1:j-1,j+1:n])) / a(j,j));
    end
    x0 = x1;
    x1 = xn';
    iter = iter + 1;
end

n
x = x1';

endfunction
