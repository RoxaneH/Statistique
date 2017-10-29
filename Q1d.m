function [quar25_beer ,quar50_beer , quar75_beer ...
    ,quar25_spirit , quar50_spirit ,quar75_spirit ] = Q1d(beers , spirit)

    %Boite a moustache pour question projet
    figure('name','1d - Questions sur le projet')
    subplot(1,2,1)
    boxplot(beers);
    title('Beer');

    subplot(1,2,2)
    boxplot(spirit);
    title('Spirit');

    %Calcul des quartiles
    quar25_beer = quantile(beers,0.25);
    quar50_beer = quantile(beers,0.5);
    quar75_beer = quantile(beers,0.75);

    quar25_spirit = quantile(spirit,0.25);
    quar50_spirit = quantile(spirit,0.5);
    quar75_spirit = quantile(spirit,0.75);


end