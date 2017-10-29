function [moy_ExQ1 ,moy_ExQ2 ,moy_ExQ3 ,mode_ExQ1, mode_ExQ2, mode_ExQ3,...
med_ExQ1, med_ExQ2, med_ExQ3 , ET_ExQ1 ,ET_ExQ2 , ET_ExQ3]= Q1b(points)

    %moyennes des points des Exercices de l'exam
    moy_ExQ1 = mean(points(: , 7));
    moy_ExQ2 = mean(points(: , 8));
    moy_ExQ3 = mean(points(: , 9));

    %mediannes des points des exercices de l'exam
    med_ExQ1 = median(points(: , 7));
    med_ExQ2 = median(points(: , 8));
    med_ExQ3 = median(points(: , 9));

    %modes des points des exercices de l'exam
    mode_ExQ1 = mode(points(: , 7));
    mode_ExQ2 = mode(points(: , 8));
    mode_ExQ3 = mode(points(: , 9));

    %L'écarts types des points des exercices de l'exam
    ET_ExQ1 = std(points(: , 7));
    ET_ExQ2 = std(points(: , 8));
    ET_ExQ3 = std(points(: , 9));

end