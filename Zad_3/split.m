function [L, D, U] = split(mat)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    s = size(mat);
    n_rows = s(1);
    n_cols = s(2);
    L = zeros(n_rows);
    D = L;
    U = L;
    for row=1 : n_rows
        for col=1 : n_cols
            if(row > col)
                L(row, col) = mat(row, col);
            elseif(row < col)
                U(row, col) = mat(row, col);
            else
                D(row, col) = mat(row, col);
            end
        end
    end
end

