function[med100_beer, med100_spirit] = Q2bii(ech100)

    med100_beer = zeros(100,1);
    med100_spirit = zeros(100,1);

    for i = 1 : 100
        ech_i = ech100(:, 1, i);
        med100_beer(i,1) = median(ech_i);
    end

    for i = 1 : 100
       ech_i = ech100(:, 2, i);
      med100_spirit(i,1) = median(ech_i);
    end

    %histogrammes
    figure('name','2bii - Echantillonage');
    subplot(2,1,1)
    hist(med100_beer,50);
    title('Consommation m�diane de bi�re par �chantillon');
    ylabel('Nombre d"�cantillons');
    xlabel('Nombre de bi�re');

    subplot(2,1,2)
    hist(med100_spirit, 50);
    title('Consommation m�diane d"alcool fort par �chantillon');
    ylabel('Nombre d"�chantillons');
    xlabel('Nombre de shots');

end