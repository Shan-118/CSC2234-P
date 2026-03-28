function C=MatrixAddition(A,B)

[m,n]=size(A);
[m1,n1]=size(B);

if m~=m1 || n~=n1
    error('Matrix dimensions do not match for the Addition.');
end

C=zeros(m,n);
for i=1:m
    for j=1:n
        C(i,j)=A(i,j)+B(i,j);
    end
end
end