syms x;
f(x) = (x+1)*(x-2)*(2*x-0.25)- exp(x);
fplot(f,[0 3])
figure()
fplot(f,[-3 6])