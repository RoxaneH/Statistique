function[moy100_beer, moy100_spirit] = Q2bi(ech100)
    
moy100_beer = zeros(100,1);
moy100_spirit = zeros(100,1);

for i = 1 : 100
    ech_i = ech100(:, 1, i);
    moy100_beer(i,1) = mean(ech_i);
end

for i = 1 : 100
    ech_i = ech100(:, 2, i);
    moy100_spirit(i,1) = mean(ech_i);
end

%histogrammes
figure('name','2bi - Echantillonage');
    subplot(2,1,1)
    hist(moy100_beer,50);
    title('Consommation moyenne de bière par échantillon');
    ylabel('Nombre d"échantillons');
    xlabel('Nombre de bière');

    subplot(2,1,2)
    hist(moy100_spirit, 50);
    title('Consommation moyenne d"alcool fort par échantillon');
    ylabel('Nombre d"échantillons');
    xlabel('Nombre de shots');

end