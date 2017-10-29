function [moy_ET_ech100] = Q2biii(ech100)

    ET_ech100 = zeros(100,1);

    for i = 1 : 100
        ET_ech100(i) =  std(ech100(i,:,7));
    end

    %Affichage du graphique
    figure('name','2biii- ');
    hist( ET_ech100);
    title('Question exercice N°1');
    xlabel('Note sur 20');
    ylabel('Nombre d etudiant');
    
    %Calcul de la moyenne de écarts-types
    moy_ET_ech100 = mean(ET_ech100);
end