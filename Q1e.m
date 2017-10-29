function [prop_200_belge] = Q1e(beers)

    nbr_pays = size(beers,1)   ;
    freq_beer = hist(beers,max(beers)+1);
    
    len = size( freq_beer ,2 );
    %Affichage du polygone des fréquences
    figure('name', '1e - Polygone des frequences');

    %subplot(2,1,1);
    cumsum_freq_beer = cumsum (freq_beer /nbr_pays );
    
    plot( 1:len , cumsum_freq_beer );
    title('Polygone des fréquences cumulées')

     prop_200_belge = sum( freq_beer(201 : 296 )) / nbr_pays;
    
end