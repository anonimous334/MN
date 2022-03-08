function [rezult] = rezolv(A,b)

[n n] = size(A);

[L U] = doolittle(A);

y = zeros(1,n);
x = zeros(1,n);

for i = 1:n

	for j = 1:n
		y(i) = b(i) - sum(L(i,j)*y(j));
	end

end

for i = 1:n
	for j = 1:n
		x(i) = y(i) - sum(U(i,j)*y(j));
	end
end

disp(x);

end
