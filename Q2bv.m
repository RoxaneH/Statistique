function[distKS100_wine, distKS100_liters] = Q2bv(ech100, wine, liters)

    distKS100_wine = zeros(100,1);
    distKS100_liters = zeros(100,1);
    
    for i=1 : 100
        distKS100_wine(i,1) = kstest2(ech100(i, :, 3), wine);
        distKS100_liters(i,1) = kstest2(ech100(i, :, 4), liters);
        
    end
    
    %histogrammes
    figure('name','2b - Echantillonage');
    subplot(2,1,1)
    hist(distKS100_wine,50);
    title('Histogramme des distances de Kolmogorov-Smirnov pour le vin');
    xlabel('Nombre d"écantillons');
    ylabel('Distance');

    subplot(2,1,2)
    hist(distKS100_liters, 50);
    title('Histogramme des distances de Kolmogorov-Smirnov pour l"alcool pur');
    xlabel('Nombre d"échantillons');
    ylabel('Distance');

end