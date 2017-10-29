function [coefCorr_proj2_Qproj] = Q1f(beers, spirit, wine,liters)

    
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
   % mat_coefCorr_proj2_Qproj = corrcoef(pts_proj2 , pts_QProj);
    %coefCorr_proj2_Qproj = mat_coefCorr_proj2_Qproj(2,1);

end
