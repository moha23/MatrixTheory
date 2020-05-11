%pass matrix a and b to the function to get required matrix c = ab

function c = matrix_mult_reg(a,b)

[row_a, col_a] = size(a);
[row_b, col_b] = size(b);
if col_a ~= row_b
    error('Dimensions not correct for multiplication');
else
    c = zeros(row_a,col_b);
    for i = 1:row_a
        for j = 1:col_b
            c(i,j) = dot(a(i,:),b(:,j));
        end
    end
end
