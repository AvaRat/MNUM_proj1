function [my_results] = plot_all(liczba_probek)
%UNTITLED3 Summary of this function goes here
% function to combine all 3 plots in a single one
%   Detailed explanation goes here
    skok = 10;
    [errors, indexes, my_results] = compute_error(liczba_probek, skok, @generator_3, @gaussian_solver);
     
    figure('Name','Porownanie algorytmow','NumberTitle','off');
    ax1 = subplot(2, 2, 3);
    semilogy(ax1, indexes, errors, 'black--.');
    xlabel(ax1, 'number of equations');
    ylabel(ax1, 'error');
    title(ax1, 'algorytm Jacobiego');
    ax1 = gca;
    ax1.FontSize = 12;

    compare_with_default(liczba_probek, skok, my_results, @generator_1);
end

