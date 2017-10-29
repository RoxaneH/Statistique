function [moy_ech_Ex1, moy_ech_Ex2, moy_ech_Ex3, ...
med_ech_Ex1, med_ech_Ex2 ,med_ech_Ex3 ...
ET_ech_Ex1,ET_ech_Ex2,ET_ech_Ex3 ] =  Q2ai(ech)

    %--Les Moyennes
    moy_ech_Ex1 = mean(ech(:,7))
    moy_ech_Ex2 = mean(ech(:,8))
    moy_ech_Ex3 = mean(ech(:,9))

    %--Les Médianes
    med_ech_Ex1 = median(ech(:,7))
    med_ech_Ex2 = median(ech(:,8))
    med_ech_Ex3 = median(ech(:,9))

    %--Les Ecart Types
    ET_ech_Ex1 = std(ech(:,7))
    ET_ech_Ex2 = std(ech(:,8))
    ET_ech_Ex3 = std(ech(:,9))

end