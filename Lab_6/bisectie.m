function [] = mybisection(x1, x2, f, n);

fx1=f(x1);
fx2=f(x2);

if fx1*fx2<0;
    for i=1:n
        c=(x1+x2)/2
        fxc=f(c)
        if fxc<0
            x1=c;
        else
            x2=c;
        end
        
    end
else
    disp('wrong choice of bracket values');
end
end
