function [moy_ech_beer, med_ech_beer, ET_ech_beer, moy_ech_spirit, med_ech_spirit, ET_ech_spirit] = Q2ai(ech)

    ech_beer = ech(:,1);
    ech_spirit = ech(:, 2);
    %moyennes des bières et spirit
    moy_ech_beer = mean(ech_beer);
    moy_ech_spirit = mean(ech_spirit);

    %mediannes des bières et spirit
    med_ech_beer = median(ech_beer);
    med_ech_spirit = median(ech_spirit);
  
    %L'écarts types des bières et spirit
    ET_ech_beer = std(ech_beer);
    ET_ech_spirit = std(ech_spirit);

end