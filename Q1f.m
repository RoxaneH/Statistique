function [beers_alcool,spirit_litres,wine_liters] = Q1f(beers, spirit, wine,liters)

    
    %Affichage des graphique 
    figure('name' , ' 1f - Scatter plot 1') 
    title('Alcool pure, bière')
    scatter(  liters,beers  )
    xlabel('Bière')
    ylabel('Alcool')

    figure('name' , ' 1f - Scatter plot 2')
    title('Projet 2 - Q Projet')
    scatter(  liters, spirit  )
    xlabel('Alcool fort')
    ylabel('Alcool')

    figure('name' , ' 1f - Scatter plot 3')
    title('Projet 2 - Q Projet')
    scatter(liters, wine   )
    xlabel('Vin')
    ylabel('Alcool')
    
    %Calcul du coef de correlation
    beers_alcool = corrcoef(beers , spirit);
    spirit_litres = corrcoef(spirit , liters);
    wine_liters = corrcoef(wine , liters);
%     coefCorr_proj2_Qproj = mat_coefCorr_proj2_Qproj(2,1);

end
