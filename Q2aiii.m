function [prop_200_belge] = Q2aiii(ech)

    ech_beer = ech(:,1);
    ech_spirit = ech(:,2);

    nbr_pays = size(ech_beer,1);
    freq_ech_beer = hist(ech_beer,max(ech_beer)+1);
    freq_ech_spirit = hist(ech_spirit,max(ech_spirit)+1);
    
    len_beer = size( freq_ech_beer ,2 );
    len_spirit = size( freq_ech_spirit ,2 );

    %Affichage du polygone des fr�quences
    figure('name', '1e - Polygone des frequences');
    cumsum_freq_ech_beer = cumsum (freq_ech_beer /nbr_pays );
    plot( 1:len_beer , cumsum_freq_ech_beer );
    title('Polygone des fr�quences cumul�es - bi�re')

    %Affichage du polygone des fr�quences
    figure('name', '1e - Polygone des frequences');
    cumsum_freq_ech_spirit = cumsum (freq_ech_spirit /nbr_pays );
    plot( 1:len_spirit , cumsum_freq_ech_spirit );
    title('Polygone des fr�quences cumul�es - alcool fort')

    
end