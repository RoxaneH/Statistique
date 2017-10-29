function [KS_dist] = Q2aiii(ech , cumsum_feq_Qtheo)

    nbrEch = size(ech(:,1));
    moy_parEtu_ech_theo = zeros(nbrEch);
    
    %Calcul de la moyenne aux questions de théorie pour chaque étudiant
    for i =  1 : nbrEch
        moy_parEtu_ech_theo(i) = round((ech(i , 4) + ech(i , 5) +...
        ech(i , 6))/3);
    end

    freq_parEtu_ech_QTheo = hist(moy_parEtu_ech_theo,21);
    cumsum_freq_ech_theo = cumsum (freq_parEtu_ech_QTheo/20);

    %Affichage du polygone des fréquences
    figure('name', '2aiii - Polygone des frequences cumulées');
    subplot(2,1,1);
    plot( 0:20 , cumsum_freq_ech_theo);
    title('Poly freq cum - ech')

    subplot(2,1,2);
    plot(0:20 , cumsum_feq_Qtheo );
    title('Poly freq cum - pop')

    %--distance de KS
    KS_dist = max(abs(cumsum_freq_ech_theo - cumsum_feq_Qtheo));

end