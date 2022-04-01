function[ak] = cal_fs(x, w0, N)
ak = zeros(1,2*N+1); %intialize a row vector of 2N+1 zeros
T = 2*pi/w0; %calculate the period and store in T
syms t;
for k = -N:N
ak(1,1+k+N) = 1/T * int(x * exp(-1i*k*w0*t), t, 0, T); % ak is fourier coefficient
end