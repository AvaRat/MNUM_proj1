function my_result = gaussian_solver(inputArg)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    mat = generator_1(inputArg);
%    mat = [3 1 6 2; 2 1 3 7; 1 1 1 4];
    [~, U, B] = gaussian_eliminate(mat);
    my_result = backsub(U, B);
    B = mat(:, inputArg+1);
    A = mat(:, 1:inputArg);
    X = A\B;
    eps = 1e-10;
    if (abs(X-my_result) < eps)
        disp("results are the same !!");
    end
%    error = compute_error(A, B, my_result);
%    disp(error);
 %   disp(X);
end

