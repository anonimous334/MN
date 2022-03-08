function[c,s,r] = GivensRotation(a, b)
if b == 0;
    c = sign(a);
    s = 0;
    r = abs(a);
elseif a == 0;
    c = 0;
    s = -sign(b);
    r = abs(b);
elseif abs(a) > abs(b);
    t = b/a;
    u = sign(a)*abs(sqrt(1+t*t));
    c = 1/u;
    s = -c*t;
    r = a*u;
else
    t = a/b;
    u = sign(b)*abs(sqrt(1+t*t));
    s = -1/u;
    c = -s*t;
    r = b*u;
end;
