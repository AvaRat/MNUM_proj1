function result = gaussian_solver(mat)
%UNTITLED2 Summary of this function goes here
%function solves equations and returns resulting vector
%   Detailed explanation goes here
%    mat = [3 1 6 2; 2 1 3 7; 1 1 1 4];
    [~, U, B] = gaussian_eliminate(mat);
    result = backsub(U, B);
%    B = mat(:, inputArg+1);
%    A = mat(:, 1:inputArg);
%    X = A\B;
%    eps = 1e-10;
%    if (abs(X-result) < eps)
%        disp("results are the same !!");
%    end

end

