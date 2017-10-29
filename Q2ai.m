function [moy_ech_beer, med_ech_beer, ET_ech_beer] = Q2ai(ech)

    ech_beer = ech(:,1);
    %moyennes des biere et spirit
    moy_ech_beer = mean(ech_beer);

    %mediannes des biere et spirit
    med_ech_beer = median(ech_beer);
  
    %L'écarts types des biere et spirit
    ET_ech_beer = std(ech_beer);

end