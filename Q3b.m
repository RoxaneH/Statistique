function[med100_wine, var_med_wine, biais_med_wine] = Q3b(ech100, wine)

    med100_wine = zeros(100,1);

    for i = 1 : 100
        ech_i = ech100(i, :, 1);
        med100_wine(i,1) = median(ech_i);
    end
    
    var_med_wine = var(med100_wine(:));
    biais_med_wine = mean(med100_wine(:)) - mean(wine);

end