function [q, r] = gs(a)

	[n n] = size(a);
	q = zeros(n);
	r = zeros(n);

	for j = 1 : n
		for i = 1 : j - 1;
			r(i,j) = q(i)' * a(j)
		endfor

		s = 0;

		for i = 1 : j - 1
			s = s + r(i,j) * q(i);
		endfor

		aux = a(j) - s;

		r(j,j) = norm(aux);
		q(j) = aux / r(j,j);

	endfor


endfunction
