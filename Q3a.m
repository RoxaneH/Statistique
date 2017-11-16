fuction[moy100_wine, biais__mx_wine, var_mx_wine] = Q3a(ech100, wine)
    
    moy100_wine = zeros(100,1);
    
    for i = 1 : 100
        ech_i = ech100(i, :, 1);
        moy100_wine(i,1) = mean(ech_i);
    end
    
    var_mx_wine = var(moy100_wine);
    esp = mean(moy100_wine(:));
    
    %consommation moyenne de vin pour la population
    moy_pop = mean(wine);
    
    biais_mx_wine =  esp - moy_pop;
    
    
       


end