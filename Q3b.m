function[med100_wine, var_med_wine, biais_med_wine] = Q3b(ech100, wine)

    wine100 = zeros(100,1);

    for i = 1 : 100
        ech_i = ech100(:, 1,i);
        wine100(i,1) = median(ech_i);
    end
    
    var_med_wine = var(wine100(:));
    med100_wine = mean(wine100(:));
    biais_med_wine = mean(wine100(:)) - mean(wine);

end