function[med50_wine, biais_med50, var_med50, moy50_wine, biais_mx50, var_mx50] = Q3c(ech50, wine)

    moy50_wine = zeros(100,1);
    med50_wine = zeros(100,1);
    
    for i = 1 : 100
        ech_i = ech50(i, :, 1);
        moy50_wine(i,1) = mean(ech_i);
    end
    
    var_mx_wine = var(moy50_wine);
    esp = mean(moy50_wine(:));
    
    %consommation moyenne de vin pour la population
    moy_pop = mean(wine);
    
    biais_mx_wine =  esp - moy_pop;
    
    for i = 1 : 100
        ech_i = ech50(i, :, 1);
        med50_wine(i,1) = median(ech_i);
    end
    
    var_med_wine = var(med50_wine(:));
    biais_med_wine = mean(med50_wine(:)) - moy_pop;
    
end