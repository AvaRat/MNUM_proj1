function [result] = matlab_solver(mat)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    s = size(mat);
    n_rows = s(1);
    result = (mat(:, 1:n_rows)) \ (mat(:, n_rows+1)); 
end

