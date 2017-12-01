function[med50_wine, biais_med50, var_med50, moy50_wine, biais_mx50, var_mx50] = Q3c(ech50, wine)

    wine50_mx = zeros(100,1);
    wine50_med = zeros(100,1);
    
    for i = 1 : 100
        ech_i = ech50(:, 1, i);
        wine50_mx(i,1) = mean(ech_i);
    end
    
    var_mx50 = var(wine50_mx);
    moy50_wine = mean(wine50_mx(:));
    moy_pop = mean(wine);
    
    biais_mx50 =  moy50_wine - moy_pop;
    
    for i = 1 : 100
        ech_i = ech50(:, 1, i);
        wine50_med(i,1) = median(ech_i);
    end
    
    med50_wine = mean(wine50_med(:));
    var_med50 = var(wine50_med(:));
    biais_med50 = med50_wine - moy_pop;
    
end