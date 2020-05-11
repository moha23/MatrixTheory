function mat = crossprod(a,b)

[row_a, col_a] = size(a);
[row_b, col_b] = size(b);

if(col_a >1 || col_b >1)
    error('vectors have more than one column');
else
    mat = zeros(row_a,col_b);
    for i=1: row_b
         for j =1: row_a
             mat(i,j) = a(i)*b(j);
         end
    end
end


function c = matrix_mult_crossprod(a,b)

[row_a, col_a] = size(a);
[row_b, col_b] = size(b);
if col_a ~= row_b
    error('Dimensions not correct for multiplication');
else
    c = zeros(row_a,col_b);
    for i = 1:col_a
            vec_a = a(:,i);
            vec_b = b(i,:);
            c = c + crossprod(vec_a,vec_b');
    end
end
