function eps = my_epsilon()
    x = 1.0;
    y = 2.0;
    while (y > 1)
        eps = x;
        x = x/2;
        y = 1.0 + x;
    end
end    