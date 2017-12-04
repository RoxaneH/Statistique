function[moy100_wine, biais_mx_wine, var_mx_wine] = Q3a(ech100, wine)
    
    wine100 = zeros(100,1);
    
    for i = 1 : 100
        ech_i = ech100(:, 1, i);
        wine100(i,1) = mean(ech_i);
    end
    
    var_mx_wine = var(wine100);
    moy100_wine = mean(wine100(:));
    
    moy_pop = mean(wine);
    
    biais_mx_wine =  moy100_wine - moy_pop;
   
end