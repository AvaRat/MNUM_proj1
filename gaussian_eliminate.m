function mat = gaussian_eliminate(input)
    Mat = input;
    A_dims = size(Mat);
    n_rows = A_dims(1);
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
            disp("the greatest elem is at [" + col + " ,  " + index_max + " ] ");
            tmp = Mat(row , :);
            Mat(row , :) = Mat(index_max , :);
            Mat(index_max , :) = tmp;
        end %end if
        %element g?ówny jest wybrany -> (index_max)
        for n=k+1 : n_rows
           L = Mat(n, k) / Mat(k, k);
           Wn = Mat(n, :);
           Wk = Mat(k, :);
           Mat(n, :) = Wn - L*Wk;
           Mat(n, k) = L;
        end   
        disp(Mat);
    end %end main for    
    mat = Mat;
end %end function


