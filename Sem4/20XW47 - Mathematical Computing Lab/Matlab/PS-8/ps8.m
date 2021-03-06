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

% 
% syms n x;
% f=exp(-x);
% l=pi;
% 
% a0=1/l*int(f,x,0,2*pi);
% an=1/l*int(f*cos(n*pi*x/l),x,0,2*pi);
% bn=1/l*int(f*sin(n*pi*x/l),x,0,2*pi);
% [a0/2,eval(subs(an*cos(n*pi*x/l)+bn*sin(n*pi*x/l),n,[1 2 3 4]))]
% 
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
% a0=1/L*(int(f,x,0,2));
% an=1/L*(int(f*cos(n*pi*x/L),x , 0, 2));
% bn=1/L*(int(f*sin(n*pi*x/L),x ,0, 2));
% 
% exp = [a0/2,(subs(an*cos(n*pi*x/L)+bn*sin(n*pi*x/L),n,[1 2 3 4]))]
% 
% fplot(sum(exp(1,1)),[0 2*L])
% hold on
% fplot(sum(exp(1,1:2)),[0 2*L])
% fplot(sum(exp(1,1:3)),[0 2*L])
% fplot(sum(exp(1,1:4)),[0 2*L])
% fplot(sum(exp(1,1:5)),[0 2*L]) %Fourier Plot
% fplot(f,[0 2*L]) %Function Plot
% hold off
% legend('1','2','3','4','5','realboi')



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
% fplot(sum(exp(1,1)),[0 2*L])
% hold on
% fplot(sum(exp(1,1:2)),[0 2*L])
% fplot(sum(exp(1,1:3)),[0 2*L])
% fplot(sum(exp(1,1:4)),[0 2*L])
% fplot(sum(exp(1,1:5)),[0 2*L]) %Fourier Plot
% fplot(f,[0 2*L]) %Function Plot
% hold off
% legend('1','2','3','4','5','realboi')


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
% fplot(sum(exp(1,1)),[0 2*L])
% hold on
% fplot(sum(exp(1,1:2)),[0 2*L])
% fplot(sum(exp(1,1:3)),[0 2*L])
% fplot(sum(exp(1,1:4)),[0 2*L])
% fplot(sum(exp(1,1:5)),[0 2*L]) %Fourier Plot
% fplot(f,[0 2*L]) %Function Plot
% hold off
% legend('1','2','3','4','5','realboi')

% 4

% 4a

% syms x n;
% 
% f=piecewise(0 < x < 3, x^2);
% L=3;
% 
% a0=2/L*(int(f,x,0,3))
% an=2/L*(int(f*cos(n*pi*x/L),0,3))
% bn=2/L*(int(f*sin(n*pi*x/L),0,3))
% 


% 4b
% 
% syms x n;
% 
% f=piecewise(0 < x < pi/2, pi/2, pi/2 < x < pi, pi - x);
% L=pi;
% 
% a0=2/L*(int(f,x,0,pi/2)+int(f,x,pi/2,pi))
% an=2/L*(int(f*cos(n*pi*x/L),0,pi/2)+int(f*cos(n*pi*x/L),x,pi/2,pi))
% bn=2/L*(int(f*sin(n*pi*x/L),0,pi/2)+int(f*sin(n*pi*x/L),x,pi/2,pi))
% 


%4c
% 
% syms x n;
% 
% f=piecewise(0 < x < 2, x - 1, 2 < x < 4, 3 - x);
% L=4;
% 
% a0=2/L*(int(f,x,0,2)+int(f,x,2,4))
% an=2/L*(int(f*cos(n*pi*x/L),0,2)+int(f*cos(n*pi*x/L),x,2,4))
% bn=2/L*(int(f*sin(n*pi*x/L),0,2)+int(f*sin(n*pi*x/L),x,2,4))
%
% 


% 5

% 5a

% syms x n;
% 
% f=piecewise(0 < x < pi/2, x, pi/2 < x < pi, pi/2);
% L=pi;
% 
% a0=2/L*(int(f,x,0,pi/2)+int(f,pi/2,pi));
% an=2/L*(int(f*cos(n*pi*x/L),0,pi/2)+int(f*cos(n*pi*x/L),pi/2,pi));
% bn=2/L*(int(f*sin(n*pi*x/L),0,pi/2)+int(f*sin(n*pi*x/L),pi/2,pi));
% 
% halfCos = [a0/2,(subs(an*cos(n*pi*x/L),n,[1 2 3 4]))];  %cosine half-range
% halfSin = [0,(subs(bn*sin(n*pi*x/L),n,[1,2,3,4]))];  %sine hlaf-range
% 
% fplot(sum(halfCos(1,1)),[0 L]) %HalfCos Plot
% hold on
% fplot(sum(halfCos(1,1:2)),[0 L])
% fplot(sum(halfCos(1,1:3)),[0 L])
% fplot(sum(halfCos(1,1:4)),[0 L])
% fplot(sum(halfCos(1,1:5)),[0 L])
% fplot(f,[0 L])
% hold off
% legend('1','2','3','4','5','realboi')
% title("Half cosine");
% 
% figure()
% 
% fplot(sum(halfSin(1,1)),[0 L]) %HalfSin Plot
% hold on
% fplot(sum(halfSin(1,1:2)),[0 L])
% fplot(sum(halfSin(1,1:3)),[0 L])
% fplot(sum(halfSin(1,1:4)),[0 L])
% fplot(sum(halfSin(1,1:5)),[0 L])
% fplot(f,[0 L])
% hold off
% legend('1','2','3','4','5','realboi')
% title("Half sine");


% 5b

% syms x n;
% 
% f=piecewise(0 < x < pi/2, x, pi/2 < x < pi, pi - x);
% L=pi;
% 
% a0=2/L*(int(f,x,0,pi/2)+int(f,pi/2,pi));
% an=2/L*(int(f*cos(n*pi*x/L),0,pi/2)+int(f*cos(n*pi*x/L),pi/2,pi));
% bn=2/L*(int(f*sin(n*pi*x/L),0,pi/2)+int(f*sin(n*pi*x/L),pi/2,pi));
% 
% halfCos = [a0/2,(subs(an*cos(n*pi*x/L),n,[1 2 3 4]))];  %cosine half-range
% halfSin = [0,(subs(bn*sin(n*pi*x/L),n,[1,2,3,4]))];
% 
% fplot(sum(halfCos(1,1)),[0 L]) %HalfCos Plot
% hold on
% fplot(sum(halfCos(1,1:2)),[0 L])
% fplot(sum(halfCos(1,1:3)),[0 L])
% fplot(sum(halfCos(1,1:4)),[0 L])
% fplot(sum(halfCos(1,1:5)),[0 L])
% fplot(f,[0 L])
% hold off
% legend('1','2','3','4','5','realboi')
% title("Half cosine");
% 
% figure()
% 
% fplot(sum(halfSin(1,1)),[0 L]) %HalfSin Plot
% hold on
% fplot(sum(halfSin(1,1:2)),[0 L])
% fplot(sum(halfSin(1,1:3)),[0 L])
% fplot(sum(halfSin(1,1:4)),[0 L])
% fplot(sum(halfSin(1,1:5)),[0 L])
% fplot(f,[0 L])
% hold off
% legend('1','2','3','4','5','realboi')
% title("Half sine");


% 5c
% 
% syms x n;
% 
% f=piecewise(0 < x < 2, 0, 2 < x < 4, 1);
% L=4;
% 
% a0=2/L*(int(f,x,0,2)+int(f,2,4));
% an=2/L*(int(f*cos(n*pi*x/L),0,2)+int(f*cos(n*pi*x/L),2,4));
% bn=2/L*(int(f*sin(n*pi*x/L),0,2)+int(f*sin(n*pi*x/L),2,4));
% 
% halfCos = [a0/2,(subs(an*cos(n*pi*x/L),n,[1 2 3 4]))];  %cosine half-range
% halfSin = [0,(subs(bn*sin(n*pi*x/L),n,[1,2,3,4]))];
% 
% fplot(sum(halfCos(1,1)),[0 L]) %HalfCos Plot
% hold on
% fplot(sum(halfCos(1,1:2)),[0 L])
% fplot(sum(halfCos(1,1:3)),[0 L])
% fplot(sum(halfCos(1,1:4)),[0 L])
% fplot(sum(halfCos(1,1:5)),[0 L])
% fplot(f,[0 L])
% hold off
% legend('1','2','3','4','5','realboi')
% title("Half cosine");
% 
% figure()
% 
% fplot(sum(halfSin(1,1)),[0 L]) %HalfSin Plot
% hold on
% fplot(sum(halfSin(1,1:2)),[0 L])
% fplot(sum(halfSin(1,1:3)),[0 L])
% fplot(sum(halfSin(1,1:4)),[0 L])
% fplot(sum(halfSin(1,1:5)),[0 L])
% fplot(f,[0 L])
% hold off
% legend('1','2','3','4','5','realboi')
% title("Half sine");
