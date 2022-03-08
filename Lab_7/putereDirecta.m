function [lambda y iter] = PutereDir(A, y, maxIter, eps, u)
	iter = maxIter;
   [n n] = size(A);
	while maxIter > 0
		maxIter--;
		z = (A-u*eye(n))*y;
		y = z/norm(z);
		lambda = y'*A*y;

		if norm(A*y-lambda*y)<eps
			break;
		endif
	endwhile

	iter = iter-maxIter;
endfunction
