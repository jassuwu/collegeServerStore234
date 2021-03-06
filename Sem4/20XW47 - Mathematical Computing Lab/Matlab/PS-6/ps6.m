clear;
clc;

%1

% syms x;
% f(x) = (x^2 - 5)*(x^3 - 2*x + 3);
% g(x) = sin(x)*cos(x);
% h(x) = abs(x);
% j(x) = x*abs(x);
% k(x) = ( sqrt(x) + 2*x)*(4*x^2 - 1);
% l(x) = (x^2 + 1)/(5*x - 3);
% 
% diff(f)
% diff(g)
% diff(h)
% diff(j)
% diff(k)
% diff(l)


% 2

% syms x y;
% f(x,y) = cos(2*x) - x^2*exp(5*y) + 3*y^2;
% 
% diff(f,x)
% diff(f,y)
% diff(f,x,2)
% diff(f,y,2)
% diff(diff(f,y),x)
% diff(diff(f,x),y)
% diff(f,y,4)
% diff(diff(diff(f,x),y),x)
% 

%3

% syms x;
% f(x) = (x^2 - 5)*(x^3 - 2*x + 3);
% g(x) = sin(x)*cos(x);
% h(x) = abs(x);
% j(x) = x*abs(x);
% k(x) = ( sqrt(x) + 2*x)*(4*x^2 - 1);
% l(x) = (x^2 + 1)/(5*x - 3);
% 
% subs(diff(f),x,2)
% subs(diff(g),x,2)
% subs(diff(h),x,2)
% subs(diff(j),x,2)
% subs(diff(k),x,2)
% subs(diff(l),x,2)


%4

% syms x y;
% f(x) = cos(2*x) - x^2*exp(5*y) + 3*y^2;
% 
% subs(diff(f,x),{x,y},{2,3})
% subs(diff(f,y),{x,y},{2,3})
% subs(diff(f,x,2),{x,y},{2,3})
% subs(diff(f,y,2),{x,y},{2,3})
% subs(diff(diff(f,y),x),{x,y},{2,3})
% subs(diff(diff(f,x),y),{x,y},{2,3})
% subs(diff(f,y,4),{x,y},{2,3})
% subs(diff(diff(diff(f,x),y),x),{x,y},{2,3})

%5

% syms x y z;
% 
% a(x) = sin(2*x)*cos(x);
% b(x) = 1/(x^2 + 5*x + 6);
% c(x) = sqrt(9 - 4*x^2);
% d(x) = log(tan(x));
% e(x) = 1/(1 + sqrt(cot(x)));
% f(x) = sin(x)*cos(x)^4;
% g(x, y) = 12*x^2*y^3;
% h(x, y) = x*exp(x*y);
% i(x, y, z) = 8*x*y*z;
% j(x, y, z) = (x + y);
% 
% int(a)
% int(b)
% int(c)
% int(d, 0, pi/2)
% int(e, pi/6, pi/3)
% int(f, -1, 1)
% int(int(g,y,-1,0),x,1,2)
% int(int(h,x,1,3),y,1,2)
% int(int(int(i,x,0,1),y,0,2),z,0,3)
% int(int(int(j,z,0,4-x^2),x,0,2),y,0,1)


%6

% syms y(x);
% 
% dsolve (diff(y) + (cos(x)*y) == sin(x)*cos(x))


%7
% syms y(x);
% dy =diff(y);
% ddy = diff(y,2);
% dsolve(diff(y,3) == y-x*dy+4*ddy,[y(2)== 1 dy(2)==1/2 ddy(2)== 0])


