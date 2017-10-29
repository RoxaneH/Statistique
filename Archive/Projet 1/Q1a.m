%Cette fonction genere les 2 histogrammes des résultats des questions de
%théorie

function [] = Q1a (points)

    theoQ1 = points(: , 4);
    theoQ2 = points(: , 5);
    theoQ3 = points(: , 6);

    %-Affichage des graphiques
    figure('name','1a - Questions Théories');
    subplot(3,1,1)
    hist( theoQ1,21);
    title('Question theorie N°1');
    xlabel('Note sur 20');
    ylabel('Nombre d etudiant');

    subplot(3,1,2)
    hist( theoQ2,21);
    title('Question theorie N°2');
    xlabel('Note sur 20');
    ylabel('Nombre d etudiant');

    subplot(3,1,3)
    hist( theoQ3,21);
    title('Question theorie N°3');
    xlabel('Note sur 20');
    ylabel('Nombre d etudiant');

end
