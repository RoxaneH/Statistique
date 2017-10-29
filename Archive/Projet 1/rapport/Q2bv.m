function [] = Q2bv(ech100,points)

    %--------------Question N*2
    %Calcul des polygonne de fréquences cumulées   
    freq_parEtu_QEx2_POP = hist(points(: , 8),21);
    cumsum_freq_QEx2_POP = cumsum (freq_parEtu_QEx2_POP/127);
    distKS_echPop_QEx2 = zeros(1,100);

    for i = 1 : 100
        freq_parEtu_QEx2_ech = hist(ech100(i,:,8),21);
        cumsum_freq_QEx2_ech = cumsum (freq_parEtu_QEx2_ech/20);
        distKS_echPop_QEx2(1,i) = max(abs(cumsum_freq_QEx2_POP-cumsum_freq_QEx2_ech));
    end

    %--------------Question N*3
    %Calcul des polygonne de fréquences cumulées   
    freq_parEtu_QEx3_POP = hist(points(: , 9),21);
    cumsum_freq_QEx3_POP = cumsum (freq_parEtu_QEx3_POP/127);
    distKS_echPop_QEx3 = zeros(1,100);

    for i = 1 : 100
        freq_parEtu_QEx3_ech = hist(ech100(i,:,9),21);
        cumsum_freq_QEx3_ech = cumsum (freq_parEtu_QEx3_ech/20);
        distKS_echPop_QEx3(1,i) = max(abs(cumsum_freq_QEx3_POP-cumsum_freq_QEx3_ech));
    end

    %Affichage des graphiques
    figure('name','2bv- Q EX 2 et QEx 3 ');
    subplot(1,2,1);
    hist(distKS_echPop_QEx2,20);
    title('Question exercice N°2');
    subplot(1,2,2);
    hist(distKS_echPop_QEx3,20);
    title('Question exercice N°3');
    xlabel('dist de KS');
    ylabel('Nombre d etudiant');
    xlabel('dist de KS');
    ylabel('Nombre d etudiant');

end


