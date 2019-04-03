function [] = compare_with_default(liczba_probek, skok, my_results)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [err1, indexes, res1] = compute_error(liczba_probek, skok, @generator_1, @matlab_solver);
    [err2, ~, res2] = compute_error(liczba_probek, skok, @generator_2, @matlab_solver);
    [err3, ~, res3] = compute_error(liczba_probek, skok, @generator_3, @matlab_solver);
    
    errors = err3;
    ax2 = subplot(2, 2, 2);
    plot(ax2, indexes, errors, 'black--.');
    xlabel(ax2, 'number of equations');
    ylabel(ax2, 'error');
    legend(ax2, 'zestaw 2', 'Location','northwest');
    title(ax2, 'Matlab built in algorithm');
    ax2 = gca;
    ax2.FontSize = 10;
   
    myResultSet1 = my_results(:, 1 : liczba_probek);
    myResultSet2 = my_results(:, liczba_probek+1 : liczba_probek*2);
    myResultSet3 = my_results(:, liczba_probek*2+1 : liczba_probek*3);


    differences1 = myResultSet1 - res1;
    differences2 = myResultSet2 - res2;
    differences3 = myResultSet3 - res3;

 %   differences = [differences1 differences2 differences3];
    a = std(differences3);

    ax3 = subplot(2, 2, 1);
    plot(ax3, indexes, a, 'black--.');
    xlabel(ax3, 'number of equations');
    legend(ax3, 'zestaw 2', 'Location','northwest');
    ylabel(ax3, 'odchylenie standardowe wyników');
    title(ax3, 'equality of two algorithms');
    ax3 = gca;
    ax3.FontSize = 10;
end

