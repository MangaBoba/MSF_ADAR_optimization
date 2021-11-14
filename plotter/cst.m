function [n,l,g,d] = cst(p, w,stable)
if stable==1
    r=7.3171;
    b=2.0909;
    c=3.7372;
else
    r=0.2439;
    b=0.4762;
    c=1.9524;
end

switch w
    case 'a' 
        l=p;
        n=l/c;
        d=r*l;
        g=b*n;
    case 'n'
        n=p;
        l=c*n;
        g=b*n;
        d=r*l;
    case 'g'
        g=p;
        n=g/b;
        l=c*n;
        d=l*r;
    case 'd'
        d=p;
        l=d*r;
        n=l/c;
        g=b*n;
        
end

