function [mat] = generator_3(n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    A = zeros(n);       
    B = zeros(n, 1);    %Ax = B
    for i=1 : n
        for j=1:n
            A(i, j) = (1 / (4*(i+j+1)));
        end % inside for loop  
        if(mod(i,2) == 0)
            B(i) = 7 / 6*i;
        else
            B(i) = 0;
        end     
    end % outside for loop
    mat = [A B];
        
end