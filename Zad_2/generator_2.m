function [mat] = generator_2(n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    A = zeros(n);       
    B = zeros(n, 1);    %Ax = B
    for i=1 : n
        for j=1:n
            if i == j
                A(i,j) =  1/6;
            else
                A(i,j) = 2*(i-j) + 2;
            end % if 
        end % inside for loop  
        B(i) = 2 + 0.4*i;
    end % outside for loop
    mat = [A B];
        
end

