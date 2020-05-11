function c = vector_matrix_mult(a,b)

[row_a, col_a] = size(a);
[row_b, col_b] = size(b);
if col_a ~= row_b
    error('Dimensions not correct for multiplication');
else
    c = zeros(row_a,col_b);
    for i = 1:row_a
        c(i,:)= a(i,:)*b;
    end
end
