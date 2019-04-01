function [err_1] = plot_all()
%UNTITLED3 Summary of this function goes here
% function to combine all 3 plots in a single one
%   Detailed explanation goes here
    liczba_probek = 20;
    skok = 10;
    err1 = compute_error(liczba_probek, skok, @generator_1);
    s = size(err1);
    indexes = err1(2);
    err1 = err1(:,1);
    err2 = compute_error(liczba_probek, skok, @generator_2);
    err2 = err2(:,1);
    err3 = compute_error(liczba_probek, skok, @generator_3);
    err3 = err3(:,1);
    errors = [err1 err2 err3];
    plot(indexes, err2);
end

