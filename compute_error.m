function error = compute_error(A, B, result)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    A_dims = size(A);
    n_rows = A_dims(1);
    n_cols = A_dims(2);
    values_computed = zeros(n_rows);
    for n=1 : n_rows
        sum = 0;
        for k=1: n_cols
            sum  = sum + A(n, k) * result(k);
        end
        values_computed(n) = sum;
    end
    diff_vec = abs(B - values_computed);
    disp(diff_vec);
    sqrt_diff_vec = pow2(diff_vec);
    sum = sum(sqrt_diff_vec);
    error = sqrt(sum);
end

