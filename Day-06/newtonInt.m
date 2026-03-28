function yint2 = newtonInt(x,y,xi)

n = length(x);
fdd = zeros(n);
yint = zeros(n,1);
Ea = zeros(n,1);

fdd(:,1) = y(:);

% Divided Difference Table
for j = 2:n
    for i = 1:n+1-j
        fdd(i,j) = (fdd(i+1,j-1) - fdd(i,j-1)) / (x(i+j-1) - x(i));
    end
end

xterm = 1;
yint(1) = fdd(1,1);

for order = 2:n
    xterm = xterm * (xi - x(order-1));
    yint(order) = yint(order-1) + fdd(1,order) * xterm;
    Ea(order) = yint(order) - yint(order-1);
end

yint2 = yint(n);

end