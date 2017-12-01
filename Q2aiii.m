function [ks_beer, ks_spirit] = Q2aiii(ech, cumsum_freq_beer, cumsum_freq_spirit, beers, spirit)

    ech_beer = ech(:,1);
    ech_spirit = ech(:,2);

    nbr_pays = size(ech_beer,1);
    freq_ech_beer = hist(ech_beer,max(beers)+1);
    freq_ech_spirit = hist(ech_spirit,max(spirit)+1);
    
    len_beer = size( freq_ech_beer ,2 );
    len_spirit = size( freq_ech_spirit ,2 );

    %Affichage du polygone des fréquences
    figure('name', '2a.iii - Polygone des frequences')
    cumsum_freq_ech_beer = cumsum (freq_ech_beer /nbr_pays );
    plot( 1:len_beer , cumsum_freq_ech_beer );
    title('Polygone des fréquences cumulées - bière')

    %Affichage du polygone des fréquences
    figure('name', '2a.iii - Polygone des frequences')
    cumsum_freq_ech_spirit = cumsum (freq_ech_spirit /nbr_pays );
    plot( 1:len_spirit , cumsum_freq_ech_spirit );
    title('Polygone des fréquences cumulées - alcool fort')
    
    ks_beer = max(abs(cumsum_freq_beer - cumsum_freq_ech_beer));
    ks_spirit = max(abs(cumsum_freq_spirit - cumsum_freq_ech_spirit));
    
end