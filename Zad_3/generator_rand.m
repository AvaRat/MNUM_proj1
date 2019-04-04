function [mat] = generator_rand(n)
%RAND_GENERATOR Summary of this function goes here
%   Detailed explanation goes here
    A = zeros(n);       
    B = zeros(n, 1);
    A = rand(size(A));
    B = rand(size(B));
    mat = [A B];
end

