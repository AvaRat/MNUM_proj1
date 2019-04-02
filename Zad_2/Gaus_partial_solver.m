

function [A,B]  = Gaus_partial_solver(n)
    A = zeros(n);       
    B = zeros(n, 1);    %Ax = B
    for i = 1 : n
        for j = 1:n
            if i == j
                A(i,j) =  7;
            elseif abs(i-j) == 1
                A(i,j) = 3;
            end % if 
        end % inside for loop  
        B(i) = 2.5 + 0.5i;
    end % outside for loop
end %end function
