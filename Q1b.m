function [moy_beer ,moy_spirit,med_beer,med_spirit ...
   ,mode_beer ,mode_spirit , ET_beer , ET_spirit ...
   , belge_beer ,belge_spirit] = Q1b(beers, spirit)

    %moyennes des biere et spirit
    moy_beer = mean(beers);
    moy_spirit = mean(spirit);

    %mediannes des biere et spirit
    med_beer = median(beers);
    med_spirit = median(spirit);


    %modes des biere et spirit
    mode_beer = mode(beers);
    mode_spirit = mode(spirit);
  
    %L'écarts types des biere et spirit
    ET_beer = std(beers);
    ET_spirit = std(spirit);
    
    belge_beer = beers(1);
    belge_spirit = spirit(1);

end