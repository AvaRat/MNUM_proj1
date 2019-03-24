function mat = gaussian_eliminate(input)
    Mat = input;
    A_dims = size(Mat);
    n_rows = A_dims(1);
    for k=1 : n_rows
        %find the row with the the highest value
        row = k;
        col = k;
        vec_k = Mat(:, col);
        index_max = find(vec_k == max(vec_k(row:n_rows)));
        if ~(index_max == k)
            %flip row 'i' with 'k'
            disp("the greates elem at [" + col + " ,  " + index_max + " ] ");
            disp(vec_k(10));
            tmp = Mat(row , :);
            Mat(row , :) = Mat(index_max , :);
            Mat(index_max , :) = tmp;
        end %end if
        %element g?ówny jest wybrany -> (index_max)
        for n=k+1 : n_rows 
            L = Mat(n , k) / Mat(k , k);
            Wx = Mat(n,:);
            Mat(n,:) = Wx - Wx*L;
            
            
        end
        
        
        
    end %end for
    
    mat = Mat;
end %end function


