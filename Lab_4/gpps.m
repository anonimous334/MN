function [A] = gpps(A)

[n n ] = size(A);
U = zeros(n);

	for p = 1: n - 1

		s = sum

		for j = 1 : n

			aux = A(p, j);
			A(p, j) = A(ip, j);
			A(ip,j) = A(p, j);

		endfor

		for i = p+1 : n

			U(ip) = a(i,p) / a(p,p);
			A(i,p) = 0;

			for j = p + 1 : n

				A(i,j) = A(i,j) - U(i,p) * A(p,j);

			endfor

		endfor

	endfor

endfunction
