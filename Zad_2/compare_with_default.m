function [] = compare_with_default(liczba_probek, skok, my_results)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [err1, indexes, res1] = compute_error(liczba_probek, skok, @generator_1, @matlab_solver);
    [err2, ~, res2] = compute_error(liczba_probek, skok, @generator_2, @matlab_solver);
    [err3, ~, res3] = compute_error(liczba_probek, skok, @generator_3, @matlab_solver);
    
    errors = [err1 err2 err3/(10.^18)];
    ax2 = subplot(2, 2, 2);
    plot(ax2, indexes, errors);
    xlabel(ax2, 'number of equations');
    ylabel(ax2, 'error');
    title(ax2, 'Matlab built in algorithm');
    legend(ax2, 'zestaw 1', 'zestaw 2', 'zestaw 3 * 1e-18');
    ax2 = gca;
    ax2.FontSize = 10;
   
    myResultSet1 = my_results(:, 1 : liczba_probek);
    myResultSet2 = my_results(:, liczba_probek+1 : liczba_probek*2);
    myResultSet3 = my_results(:, liczba_probek*2+1 : liczba_probek*3);


    differences1 = myResultSet1 - res1;
    differences2 = myResultSet2 - res2;
    differences3 = myResultSet3 - res3;

 %   differences = [differences1 differences2 differences3];
    a = [std(differences1); std(differences2); std(differences3)/10.^36];

    ax3 = subplot(2, 2, 1);
    plot(ax3, indexes, a);
    xlabel(ax3, 'number of equations');
    ylabel(ax3, 'srednia roznica miedzy wynikami dwoch algorytmow');
    title(ax3, 'equality of two algorithms');
    legend(ax3, 'zestaw 1', 'zestaw 2', 'zestaw 3 * 1e-36');
    ax3 = gca;
    ax3.FontSize = 10;
end

