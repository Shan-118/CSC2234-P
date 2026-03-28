A = [1,2;5,6];
B = [2,6;1,5];

[m,n] = size(A);
[m1,n1] = size(B);

%% Matrix Addition
if m == m1 && n == n1
    C = zeros(m,n);
    for i = 1:m
        for j = 1:n
            C(i,j) = A(i,j) + B(i,j);
        end
    end
    disp('Result of Matrix Addition:');
    disp(C);
else
    error('Matrix dimensions do not match for Addition');
end

%% Matrix Multiplication
if n == m1
    D = zeros(m,n1);
    for i = 1:m
        for j = 1:n1
            for k = 1:n
                D(i,j) = D(i,j) + A(i,k) * B(k,j);
            end
        end
    end
    disp('Result of Matrix Multiplication:');
    disp(D);
else
    error('Matrix dimensions do not match for Multiplication');
end