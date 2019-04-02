function [ret, results] = compute_error(liczba_probek, skok, generator, algorithm)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
errors = zeros(liczba_probek, 1);
indexes = errors;
disp('solving ...');
    for n_rownan = 10 : skok : skok*liczba_probek
        mat = generator(n_rownan);
        A = mat(:, 1:n_rownan);
        ground = mat(:, n_rownan+1);
        
        results = algorithm(mat);
        %built in function for comparison purposes
        
        A_dims = size(A);
        n_rows = A_dims(1);
        n_cols = A_dims(2);
        values_computed = zeros(n_rows, 1);
        for n=1 : n_rows
            Sum = 0;
            for k=1: n_cols
                Sum  = Sum + A(n, k) * results(k);
            end
            values_computed(n) = Sum;
        end
        differences = values_computed-ground;
        pow_differences = differences.^2;
        errors(n_rownan/skok) = sqrt(sum(pow_differences, 'all'));
        indexes(n_rownan/skok) = n_rownan;
    end
    disp('done');
    ret = [errors indexes];
   
end

