function [quar25_Qproj, quar50_Qproj, quar75_Qproj] = Q1c(points)

    %Boite a moustache pour question projet
    figure('name','1c - Questions sur le projet')
    subplot(1,3,1)
    boxplot(points(:,1));
    title('Projet n°1');

    subplot(1,3,2)
    boxplot(points(:,2));
    title('Projet N°2');

    subplot(1,3,3)
    boxplot(points(:,3));
    title('Question sur le projet');

    %Calcul des quartiles
    quar25_proj1 = quantile(points(:,1),0.25);
    quar50_proj1 = quantile(points(:,1),0.5);
    quar75_proj1 = quantile(points(:,1),0.75);

    quar25_proj2 = quantile(points(:,2),0.25);
    quar50_proj2 = quantile(points(:,2),0.5);
    quar75_proj2 = quantile(points(:,2),0.75);

    quar25_Qproj = quantile(points(:,3),0.25);
    quar50_Qproj = quantile(points(:,3),0.5);
    quar75_Qproj = quantile(points(:,3),0.75);

end