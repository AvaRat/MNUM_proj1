function result = backsub(Mat, B)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%    B = zeros(10);
    A_dims = size(Mat);
    n_rows = A_dims(1);
    result = zeros(n_rows, 1);
    for k=n_rows : -1 : 1
        sum = 0;
        %counting sum
        for j=n_rows-1 : -1 : k
 %           disp("k = " + k);
 %           disp("j = " + j);
 %           disp("sum + Mat(k, j) * result(k+1)");
 %           disp(sum + " + " + Mat(k, j+1) + " * " + result(j+1));
            
            
            sum = sum + (Mat(k, j+1) * result(j+1));
        end
        result(k) = (B(k) - sum) / Mat(k, k);
  %      disp("sum = " + sum);
  %      disp(" \n");
   %     disp(" ");
    end
end

