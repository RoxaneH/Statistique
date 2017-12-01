function [cumsum_freq_beer, cumsum_freq_spirit, ...
    cumsum_freq_wine, cumsum_freq_liter] = cumsum_freq(beers, spirit, wine, liters)

    nbr_pays = size(beers,1);
    freq_beer = hist(beers,max(beers)+1);
    freq_spirit = hist(spirit,max(spirit)+1);
    freq_wine = hist(wine,max(wine)+1);
    freq_liter = hist(liters,max(liters)+1);
   
    cumsum_freq_beer = cumsum (freq_beer /nbr_pays );
    cumsum_freq_spirit = cumsum (freq_spirit /nbr_pays );
    cumsum_freq_wine = cumsum (freq_wine /nbr_pays );
    cumsum_freq_liter = cumsum (freq_liter /nbr_pays );
    
    
end