function result = backsub(mat_U, B)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%    B = zeros(10);
    A_dims = size(mat_U);
    n_rows = A_dims(1);
    result = zeros(n_rows, 1);
    for k=n_rows : -1 : 1
        sum = 0;
        %counting sum
        for j=n_rows-1 : -1 : k
            sum = sum + (mat_U(k, j+1) * result(j+1));
        end
        result(k) = (B(k) - sum) / mat_U(k, k);
    end
end


