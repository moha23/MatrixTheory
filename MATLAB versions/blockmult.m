% input two block matrices of form [a b; c d] and [p q; r s]
% where each element is a matrix

disp("First matrix [a b; c d]")
a = input('Enter first block a');
[m1, n1] = size(a);
b = input('Enter first block b');
[m2, n2] = size(b);
c = input('Enter first block c');
[m3, n3] = size(c);
d = input('Enter first block d');
[m4, n4] = size(d);
if ((m1+m3) ~= (m2+m4))||((n1+n2) ~= (n3+n4))
    error('Dimensions not correct for block matrix');
else
    disp("First matrix [p q; r s]")
    p = input('Enter first block p');
    [p1, q1] = size(p);
    q = input('Enter first block q');
    [p2, q2] = size(q);
    r = input('Enter first block r');
    [p3, q3] = size(r);
    s = input('Enter first block s');
    [p4, q4] = size(s);

    if ((p1+p3) ~= (p2+p4))||((q1+q2) ~= (q3+q4))
        error('Dimensions not correct for block matrix');
    else 
        if ((n1+n2) ~= (p1+p3))
            error('Dimensions not correct for multiplication');
        else
            res = zeros(m1+m3,q1+q2);
            res(1:m1,1:q1) = matrix_vector_mult(a,p) + matrix_vector_mult(b,r);
            res(1:m1,q1+1:q1+q2) = matrix_vector_mult(a,q) + matrix_vector_mult(b,s);
            res(m1+1:m1+m3,1:q1) = matrix_vector_mult(c,p) + matrix_vector_mult(d,r);
            res(m1+1:m1+m3,q1+1:q1+q2) = matrix_vector_mult(c,q) + matrix_vector_mult(d,s);
        end
        disp("Resultant matrix:")
        disp(res)
    end
end
