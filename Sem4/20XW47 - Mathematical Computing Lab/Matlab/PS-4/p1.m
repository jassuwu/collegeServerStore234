clear;
clc;
[X,Y] = meshgrid(linspace(-3,3),linspace(-3,3));
Z = 1.8^((-1.5).*sqrt(X.^2 + Y.^2)).*sin(X).*cos(0.5.*Y);
contour3(X,Y,Z)