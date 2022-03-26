%20PW14. fuck you :)

%1

% syms t;
% f(t) = 3*t^2 + 4*t +5;
% g(t) = cos(t)^2 + 2*exp(-3*t) - 7;
% h(t) = exp(3*t)*cosh(2*t);
% j(t) = sinh(t)*cos(3*t);
% k(t) = (t + 1)^2 *exp(3*t);
% 
% laplace(f)
% laplace(g)
% laplace(h)
% laplace(j)
% laplace(k)

%2
% 
% syms s;
% 
% F(s) = (-s-10)/(s^2 - s - 2);
% G(s) = (s-2)/(s^2 - 16);
% H(s) = 3/(s^2 + 6*s + 18);
% J(s) = (s^4 + 6*s - 18)/(s^5 - 3*s^4);
% K(s) = 4/(s^2 - 2*s - 3);
% 
% ilaplace(F)
% ilaplace(G)
% ilaplace(H)
% ilaplace(J)
% ilaplace(K)
% 


% 3

% syms t;
% 
% f(t) = t*cos(2*t);
% g(t) = t*sin(3*t) - 2;
% h(t) = sin(2*t) - 2*t*cos(2*t);
% j(t) = sin(3*t) + 3*t*cos(3*t);
% k(t) = t*exp(-2*t)*cos(3*t);
% 
% fplot(f);
% hold on
% fplot(laplace(f))
% hold off
% figure()
% fplot(g);
% hold on
% fplot(laplace(g))
% hold off
% figure()
% fplot(h);
% hold on
% fplot(laplace(h))
% hold off
% figure()
% fplot(j);
% hold on
% fplot(laplace(j))
% hold off
% figure()
% fplot(k);
% hold on
% fplot(laplace(k))
% hold off

%4

% 
% syms s;
% 
% F(s) = s^2/(s-1)^2;
% G(s) = s/(s^2-9)^2;
% H(s) = 2*s/(s^2 - s - 2)^2;
% J(s) = s/(s^2+9)^2;
% K(s) = s^2/(s^2 + 16)^2;
% L(s) = 4/(s^2 + 25)^2;
% fplot(F);
% hold on
% fplot(ilaplace(F))
% hold off
% figure()
% fplot(G);
% hold on
% fplot(ilaplace(G))
% hold off
% figure()
% fplot(H);
% hold on
% fplot(ilaplace(H))
% hold off
% figure()
% fplot(J);
% hold on
% fplot(ilaplace(J))
% hold off
% figure()
% fplot(K);
% hold on
% fplot(ilaplace(K))
% hold off
% figure()
% fplot(L);
% hold on
% fplot(ilaplace(L))
% hold off
% 

%5

% 
% syms t;
% 
% f(t) = 3* (heaviside(t-0) - heaviside(t-2)) + 5* (heaviside(t-2));
% g(t) = 2* (heaviside(t-0) - heaviside(t-2)) - 1* (heaviside(t-2) - heaviside(t-3));
% h(t) = 15 * t * (heaviside(t-0) - heaviside(t-3));
% j(t) = sin(t)*(heaviside(t - 2*pi)); 
% k(t) = t^2 * (heaviside(t-3));
% l(t) = 2 * (heaviside(t-0) - heaviside(t-4)) + (t-1) * (heaviside(t-4) - heaviside(t-6));
% 
% laplace(f)
% laplace(g)
% laplace(h)
% laplace(j)
% laplace(k)
% laplace(l)
% 
% fplot(f);
% hold on
% fplot(laplace(f))
% hold off
% figure()
% fplot(g);
% hold on
% fplot(laplace(g))
% hold off
% figure()
% fplot(h);
% hold on
% fplot(laplace(h))
% hold off
% figure()
% fplot(j);
% hold on
% fplot(laplace(j))
% hold off
% figure()
% fplot(k);
% hold on
% fplot(laplace(k))
% hold off
% figure()
% fplot(l);
% hold on
% fplot(laplace(l))
% hold off

%6

% syms t s;
% one(t) = 1;
% F(s) = laplace(one) * laplace(one);
% G(s) = laplace(one) * laplace(sin(2*t));
% H(s) = laplace(exp(t)) * laplace(exp(-t));
% J(s) = laplace(exp(t)) * laplace(t);
% K(s) = laplace(cos(2*t)) * laplace(sin(3*t));
% 
% ilaplace(F)
% ilaplace(G)
% ilaplace(H)
% ilaplace(J)
% ilaplace(K)
% 
% fplot(ilaplace(F))
% figure()
% fplot(ilaplace(G))
% figure()
% fplot(ilaplace(H))
% figure()
% fplot(ilaplace(J))
% figure()
% fplot(ilaplace(K))
% 

%bye bye;

