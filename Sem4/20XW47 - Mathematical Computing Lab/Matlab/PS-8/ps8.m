clear;
clc;

%2

% syms x n k;
% l = pi;
% a0 = eval(1/l*(int(-k,x,-pi,0) + int(k,x,0,pi)));
% an = 1/l*(int(-k*cos(n*pi/l*x),x,-pi,0) + int(k*cos(n*pi/l*x),x,0,pi));
% bn = 1/l*(int(-k*sin(n*pi/l*x),x,-pi,0) + int(k*sin(n*pi/l*x),x,0,pi));
% 
% [a0/2,eval(subs(an*cos(n*pi*x/l)+bn*sin(n*pi*x/l),n,[1 2 3 4]))]

% syms n x;
% f=exp(-x);
% l=pi;
% 
% a0=1/l*int(f,x,0,2*pi);
% an=1/l*int(f*cos(n*pi*x/l),x,0,2*pi);
% bn=1/l*int(f*sin(n*pi*x/l),x,0,2*pi);
% [a0/2,eval(subs(an*cos(n*pi*x/l)+bn*sin(n*pi*x/l),n,[1 2 3 4]))]
% 

% syms n x;
% f=(-4*x/pi);
% l=pi/2;
% 
% a0=1/l*(int(f,x,-pi/2,0)+int(-f,x,0,pi/2));
% an=1/l*(int(f*cos(n*pi/l*x),x,-pi/2,0)+int(-f*cos(n*pi/l*x),x,0,pi/2));
% bn=1/l*(int(f*sin(n*pi/l*x),x,-pi/2,0)+int(-f*sin(n*pi/l*x),x,0,pi/2));
% [a0/2,eval(subs(an*cos(n*pi*x/l)+bn*sin(n*pi*x/l),n,[1 2 3 4]))]

% 3

% 3a
% syms n x;
% f=piecewise(0 < x < 1, pi*x, 1 < x < 2, pi*(2-x));
% L=1;
% 
% a0=1/L*(int(f,x,0,1)+int(f,1,2));
% an=1/L*(int(f*cos(n*pi*x/L),0,1)+int(f*cos(n*pi*x/L),1,2));
% bn=1/L*(int(f*sin(n*pi*x/L),0,1)+int(f*sin(n*pi*x/L),1,2));
% 
% exp = [a0/2,(subs(an*cos(n*pi*x/L)+bn*sin(n*pi*x/L),n,[1 2 3 4]))];
% 
% fplot(sum(exp),[0 2]) %Fourier Plot
% figure()
% fplot(f,[0 2]) %Function Plot

% 3b
% syms n x;
% f=piecewise(-1 < x < 0, 1, 0 < x < 1, x);
% L=1;
% 
% a0=1/L*(int(f,x,-1,0)+int(f,0,1));
% an=1/L*(int(f*cos(n*pi*x/L),-1,0)+int(f*cos(n*pi*x/L),0,1));
% bn=1/L*(int(f*sin(n*pi*x/L),-1,0)+int(f*sin(n*pi*x/L),0,1));
% 
% exp = [a0/2,(subs(an*cos(n*pi*x/L)+bn*sin(n*pi*x/L),n,[1 2 3 4]))];
% 
% fplot(sum(exp),[-1 1]) %Fourier Plot
% figure()
% fplot(f,[-1 1]) %Function Plot

% 3c
% syms n x;
% f=piecewise(-pi < x < 0, 1 + x/pi, 0 < x < pi, 1 - x/pi);
% L=pi;
% 
% a0=1/L*(int(f,x,-pi,0)+int(f,0,pi));
% an=1/L*(int(f*cos(n*pi*x/L),-pi,0)+int(f*cos(n*pi*x/L),0,pi));
% bn=1/L*(int(f*sin(n*pi*x/L),-pi,0)+int(f*sin(n*pi*x/L),0,pi));
% 
% exp = [a0/2,(subs(an*cos(n*pi*x/L)+bn*sin(n*pi*x/L),n,[1 2 3 4]))];
% 
% fplot(sum(exp),[-pi pi]) %Fourier Plot
% figure()
% fplot(f,[-pi pi]) %Function Plot



















