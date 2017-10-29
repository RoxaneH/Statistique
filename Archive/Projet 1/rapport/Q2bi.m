function [moy_moy_ech100] = Q2bi(ech100)

    moy_ech100 = zeros(100,1);

    for i = 1 : 100
        moy_ech100(i) =  mean(ech100(i,:,7));
    end
    
    %Affichage du graphique
    figure('name','2bi- ');
    hist( moy_ech100);
    title('Question exercice N°1');
    xlabel('Note sur 20');
    ylabel('Nombre d etudiant');
    
    %Calcul de la moyenne des moyennes
    moy_moy_ech100 = mean(moy_ech100);
end