function [] = compare_with_default(liczba_probek, skok, mine_results)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [err1, res1] = compute_error(liczba_probek, skok, @generator_1, @matlab_solver);
    indexes = err1(:,2);
    err1 = err1(:,1);
    [err2, res2] = compute_error(liczba_probek, skok, @generator_2, @matlab_solver);
    err2 = err2(:,1);
    [err3, res3] = compute_error(liczba_probek, skok, @generator_3, @matlab_solver);
    err3 = err3(:,1);
    errors = [err1 err2 err3/(10.^18)];
    ax2 = subplot(2, 2, 2);
    plot(ax2, indexes, errors);
    xlabel(ax2, 'number of equations');
    ylabel(ax2, 'error');
    title(ax2, 'Matlab built in algorithm');
    legend(ax2, 'zestaw 1', 'zestaw 2', 'zestaw 3');
    ax2 = gca;
    ax2.FontSize = 12;
    
    diff_1 = abs(res1-mine_results(:,1));
    diff_2 = abs(res2-mine_results(:,1));
    diff_3 = abs(res3-mine_results(:,1));
    differences = [diff_1 diff_2 diff_3];
    
    ax3 = subplot(2, 2, 1);
    plot(ax3, indexes, differences);
    xlabel(ax3, 'number of equations');
    ylabel(ax3, 'error');
    title(ax3, 'equality of two algorithms');
    legend(ax3, 'zestaw 1', 'zestaw 2', 'zestaw 3');
    ax3 = gca;
    ax3.FontSize = 12;
end

