function [moy_med_ech100] = Q2bii(ech100)

    med_ech100 = zeros(100,1);

    for i = 1 : 100
        med_ech100(i) =  median(ech100(i,:,7));
    end

    %Affichage du graphiqeu
    figure('name','2bii - ');
    hist( med_ech100);
    title('Question exercice N°1');
    xlabel('Note sur 20');
    ylabel('Nombre d etudiant');

    %Calcul de la moyenne des medianes
    moy_med_ech100 = mean(med_ech100);
end