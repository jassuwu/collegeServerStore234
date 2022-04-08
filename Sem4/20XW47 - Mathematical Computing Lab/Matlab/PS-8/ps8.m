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