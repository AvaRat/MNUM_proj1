function [X] = Jacobi_solver(mat)
    s = size(mat);
    n_rows = s(1);  %liczba zmiennych w uk?adzie
    A = mat(:, 1:n_rows);
    B = mat(:, n_rows+1);

    [L, D, U] = split(A);
    a = D~=0;
    D(a) = D(a).^-1;
    N = D;
    M = -N * (L + U);

    result = zeros(n_rows, 1);
    prev_result = result;
    NB = N*B;

    for x=1 : 100
        %du?y for dla ka?dej zmiennej
        for k=1 : n_rows
            s = 0;
            for col=1 : n_rows
                s = s + M(k, col) * prev_result(col);
            end
            prev_iter_sum = s;

            x_k = prev_iter_sum + NB(k);
            result(k) = x_k;
        end
        prev_result = result;
    end
    X = result;
 end
