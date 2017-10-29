function [distKS_echPop] = Q2biv(ech100 , points)
   
    %Calcul des polygonne de fréquences cumulées   
    freq_parEtu_QEx1_POP = hist(points(: , 7),21);
    cumsum_freq_QEx1_POP = cumsum (freq_parEtu_QEx1_POP/127);
    distKS_echPop = zeros(1,100);

    for i = 1 : 100
        freq_parEtu_QEx1_ech = hist(ech100(i,:,7),21);
        cumsum_freq_QEx1_ech = cumsum (freq_parEtu_QEx1_ech/20);
        distKS_echPop(1,i) = max(abs(cumsum_freq_QEx1_POP-cumsum_freq_QEx1_ech));
    end

    %Affichage des graphiques
    figure('name','2biv- ');
    hist(distKS_echPop,20);
    title('Question exercice N°1');
    xlabel('dist de KS');
    ylabel('Nombre d etudiant');

end
