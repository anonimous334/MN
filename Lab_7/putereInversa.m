function [valp, vecp] = putereInversa(A, y, maxIter, eps, u)
	vecp = y;
  	[n n] = size(A);
	while maxIter > 0
		maxIter--;
		z = inv(A - u * eye(n)) * vecp;  % aici pui z = Thomas(s,d,s,vecp);
		vecp = z / norm(z);
		valp = vecp' * A * vecp;  % aici calculezi iterativ inmultirea asta

		if norm(A * vecp - valp * vecp) < eps  % aici modifici conditia din cauza lui A
			break; 
		end
	end

end
