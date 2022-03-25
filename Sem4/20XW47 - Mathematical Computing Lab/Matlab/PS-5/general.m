%sum = 0;
%inverter = true;
%for i = 1:2:9999
%    if (inverter)
%        sum = sum + i^2;
%        inverter = false;
%    else
%        sum = sum - i^2;
%        inverter = true;
%    end
%end
%fprintf("sum:%d\n",sum);

%n = input("Enter n: ");
%for i = 0:2:n
%    fprintf("%d\n",sqrt(i));
%end

%sum = 0;
%for i = 1:999
%    if(isprime(i))
%       sum = sum + i;
%    end
%end
%fprintf("Sum %d\n",sum);

%sum = 0;
%for i = 1:50
%    if(~isprime(i))
%      sum = sum + i;
%   end
%end
%fprintf("Sum %d\n",sum);

%n = 0;
%while( n ~= 5)
%    n = randi([3 10],1,1);
%    fprintf("%d ",n);
%end


res = zeros(1,10);
n = 1;
while(n < 11)
    res(n) = randi([3 10],1,1);
    n = n + 1;
end
disp(res)