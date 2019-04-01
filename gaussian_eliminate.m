function [mat_L, mat_U, mat_B] = gaussian_eliminate(input)
    Mat = input;
    A_dims = size(Mat);
    n_rows = A_dims(1);
    n_cols = A_dims(2);
    mat_L = zeros(n_rows, n_cols-1);
    for k=1 : n_rows
        %find the row with the highest value
        row = k;
        col = k;
        %temporary vector to find the greatest element(absolute value)
        vec_k = Mat(:, col);
        %disp(vec_k);
        index_max = find(vec_k == max(abs(vec_k(row:n_rows))));
        if ~(index_max == k)
            %swap row 'i' with 'k'
          %  disp("the greatest elem is at [" + col + " ,  " + index_max + " ] ");
            tmp = Mat(row , :);
            Mat(row , :) = Mat(index_max , :);
            Mat(index_max , :) = tmp;
        end %end if
        %element g?ówny jest wybrany -> (index_max)
        for n=k+1 : n_rows
           L = Mat(n, k) / Mat(k, k);
           Wn = Mat(n, col:n_cols);
           Wk = Mat(k, col:n_cols);
           Mat(n, col:n_cols) = Wn - L*Wk;
           mat_L(n, k) = L;
        end   
      %  disp(Mat);
    end %end main for    
    mat_U = Mat(:, 1:n_cols-1);
    mat_B = Mat(:, n_cols);
end %end function


