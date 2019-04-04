function [warunek_spelniony] = check(mat)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    s = size(mat);
    n = s(1);
    A = mat(:, 1:n);

    dominacja_wierszowa = true;
    dominacja_kolumnowa = true;
    for i=1 : n
        val = A(i, i);
        row_i = A(i, :);    
        row_i = sum(row_i, 'all') - val;  
        if(abs(val) < abs(row_i))
            dominacja_wierszowa = false;
            break;
        end
    end
    
    for i=1 : n
        val = A(i, i);
        col_i = A(:, i);
        col_i = sum(col_i, 'all') - val;

        if(abs(val) < abs(col_i))
            dominacja_kolumnowa = false;
            break;
        end

    end
    
    if(dominacja_wierszowa==true || dominacja_kolumnowa==true)
        disp('warunek dostateczny spelniony');
        warunek_spelniony = true;
    else
        disp('warunek dostateczny NIE spelniony');
        warunek_spelniony = false;
    end
end

