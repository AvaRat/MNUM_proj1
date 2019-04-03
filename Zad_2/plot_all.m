function [my_results] = plot_all(liczba_probek)
%UNTITLED3 Summary of this function goes here
% function to combine all 3 plots in a single one
%   Detailed explanation goes here
    skok = 10;
    [err1, indexes, res1] = compute_error(liczba_probek, skok, @generator_1, @gaussian_solver);
    [err2, ~, res2] = compute_error(liczba_probek, skok, @generator_2, @gaussian_solver);
    [err3, ~, res3] = compute_error(liczba_probek, skok, @generator_3, @gaussian_solver);
    
    
    errors = err3;
    figure('Name','Zestaw 2','NumberTitle','off');
    ax1 = subplot(2, 2, 3);
    plot(ax1, indexes, errors, 'black--.');
    legend(ax1, 'zestaw 3', 'Location','northwest');
    xlabel(ax1, 'number of equations');
    ylabel(ax1, 'error');
    title(ax1, 'my algorithm');
    ax1 = gca;
    ax1.FontSize = 12;
    
    my_results = [res1 res2 res3];

    compare_with_default(liczba_probek, skok, my_results);
end

