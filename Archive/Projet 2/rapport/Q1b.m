function [biais_medx , var_medx] = Q1b( ech , mean_pop , var_pop )

    %Definition de la taille de l'echantillon
    size_n = size(ech(1,:));
    n = size_n(2);

    med_ech_n = zeros(100 , 1);

    %Calcul des medianes des echantillons
    for i = 1 : 100
        med_ech_n(i) = median(ech(i,:));
    end

       
    %Calcul de la moyenne des médianes
    mean_med_ech_n = mean(med_ech_n(:));
    
    %Calcul de la variance 
    var_medx = var(med_ech_n);
    
    %Calcul du biais
    biais_medx = mean_med_ech_n - mean_pop ; 

end