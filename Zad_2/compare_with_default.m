function [std_differences, errors] = compare_with_default(liczba_probek, skok, my_results, generator)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [errors, indexes, results] = compute_error(liczba_probek, skok, generator, @matlab_solver);
    

    ax2 = subplot(2, 2, 2);
    plot(ax2, indexes, errors, 'r--.');
    xlabel(ax2, 'number of equations');
    ylabel(ax2, 'error');
    legend(ax2, 'zestaw 1', 'Location','northwest');
    title(ax2, 'Matlab built in algorithm');
    ax2 = gca;
    ax2.FontSize = 10;
   
    myResultSet = my_results(:, 1 : liczba_probek);

    differences = myResultSet - results;

    a = std(differences);
    std_differences = a;
    ax3 = subplot(2, 2, 1);
    plot(ax3, indexes, a, 'r--.');
    xlabel(ax3, 'number of equations');
    ylabel(ax3, 'odchylenie standardowe wyników');
    title(ax3, 'equality of two algorithms');
    ax3 = gca;
    ax3.FontSize = 10;
end

