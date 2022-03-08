function [Q R] = gs(A)

[n n] = size(A);
Q = zeros(n, n);
R = zeros(n, n);
for j = 1:n
	v = A(:,j);
	for i = 1: j-1
		R(i,j) = Q(:,i)'*A(:,j);
		v = v - R(i,j) * Q(:,i);
	endfor
	R(j,j) = norm(v);
	Q(:,j) = v/R(j,j);
endfor

disp(Q);
disp('---------------------');
disp(R);

endfunction
