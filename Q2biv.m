function[distKS100_beer, distKS100_spirit] = Q2biv(ech100, beers, spirit)

    %nbr_pays = size(beers,1);
    %freq_beer = hist(beers,max(beers)+1);
    %freq_spirit = hist(spirit, max(spirit)+1);
    
    %cumsum_freq_beer = cumsum (freq_beer /nbr_pays );
    %cumsum_freq_spirit = cumsum (freq_spirit / nrb_pays);
    
    distKS100_beer = zeros(100,1);
    distKS100_spirit = zeros(100,1);
    
    for i=1 : 100
        distKS100_beer(i,1) = kstest2(ech100(i, :, 1), beers);
        distKS100_spirit(i,1) = kstest2(ech100(i, :, 2), spirit);
        
    end
    
    %histogrammes
    figure('name','2b - Echantillonage');
    subplot(2,1,1)
    hist(distKS100_beer,50);
    title('Histogramme des distances de Kolmogorov-Smirnov pour la bière');
    xlabel('Nombre d"écantillons');
    ylabel('Distance');

    subplot(2,1,2)
    hist(distKS100_spirit, 50);
    title('Histogramme des distances de Kolmogorov-Smirnov pour l"alcool fort');
    xlabel('Nombre d"échantillons');
    ylabel('Distance');
        
end