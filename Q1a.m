function [] = Q1a(beers, spirit)

figure('name','1a - Questions Théories');
    subplot(2,1,1)
    hist(beers,50);
    title('Question theorie N°1');
    xlabel('Nombre de bière');
    ylabel('Nombre de pays');

    subplot(2,1,2)
    hist(spirit, 50);
    title('Question theorie N°1');
    xlabel('Nombre de bière');
    ylabel('Nombre de pays');

end