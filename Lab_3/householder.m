function [Q A] = householder(A)

	[m n] = size(A);
	v = zeros(1, m);
	Q = eye(n);

	for p = 1: (n - 1)
		h = eye(n);
		v = zeros (1, m);
		v(1, 1: (p-1)) = 0;

		rez = 0;
		for( k = p : (m))
			rez = rez + A(k, p) * A(k, p);
	endfor

		rez = sqrt(rez);
		s(p,p) = sign(A(p,p)) * rez;

		v(p+1:m) = A(p+1:m);


		v(p,p) = s + A(p,p);

		h = h - 2 * (v' * v)/(v * v');

		Q = Q *h;

		A = h * A;
	endfor

endfunction
