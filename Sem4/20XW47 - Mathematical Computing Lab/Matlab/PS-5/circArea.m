function [V,S] = cylVol(r, h)
V = pi.*h.*r.^2;
S = 2*pi.*r.*(r+h);
end

