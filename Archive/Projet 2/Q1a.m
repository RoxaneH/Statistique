function [biais_mx , var_mx] = Q1a( ech , mean_pop , var_pop )
    
    %Definition de la taille de l'echantillon
    size_n = size(ech(1,:));
    n = size_n(2);

    mean_ech_n = zeros(100,1);

    %Calcul des moyennes des echantillons
    for i = 1 : 100
        mean_ech_n(i) = mean(ech(i,:));
    end
    %Moyenne des moyennes 
    mean_mean_ech_n = mean(mean_ech_n(:));
    
    %Calcul de la variance
    var_mx = var(mean_ech_n);

    %Calcul du biais
    biais_mx = mean_mean_ech_n - mean_pop ;

end
