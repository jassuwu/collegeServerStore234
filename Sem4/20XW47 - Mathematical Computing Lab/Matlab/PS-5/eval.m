function[y] = eval(x)
    y = (x.^4.*sqrt(3.*x + 5))./(x.^2+1).^2;
end