function x = secanta(a,b,f, tol)

x = 0.000;
while abs(f(x)) > tol
	x = a * f(b) - b * f(a);
	x = x / (f(b) - f(a));

	if f(a) * f(x) < 0
		b = x;
	else
		a = x;
end

end
