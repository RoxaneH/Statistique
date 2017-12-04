function[ET100_beer, ET100_spirit] = Q2biii(ech100)

    ET100_beer = zeros(100,1);
    ET100_spirit = zeros(100,1);

    for i = 1 : 100
      ech_i = ech100(:, 1, i);
      ET100_beer(i,1) = std(ech_i);
    end

    for i = 1 : 100
      ech_i = ech100(:, 2, i);
      ET100_spirit(i,1) = std(ech_i);
    end

    %histogrammes
    figure('name','2biii - Echantillonage');
    subplot(2,1,1)
    hist(ET100_beer,50);
    title('Ecarts-type de la consommation de bière par échantillon');
    xlabel('Nombre d"écantillons');
    ylabel('Nombre de bière');

    subplot(2,1,2)
    hist(ET100_spirit, 50);
    title('Ecarts-type de la consommation d"alcool fort par échantillon');
    xlabel('Nombre d"échantillons');
    ylabel('Nombre de shots');

end