function A_inv =inverse(A)

[m, n] = size(A);

if m ~= n
    disp('Not a square matrix.');
    A_inv = [];
    return;
end

if det(A) == 0
    disp('Matrix is singular and cannot be inverted.');
    A_inv = [];
else
    A_inv = inv(A);
    disp('The inverse is:');
    disp(A_inv);
end

end