function [ulg_rejet , ulg_mean] = Q2a(ech)

%initialisation de la borne supérieur
eps = 0.1598;
sup = eps + 0.25;

ulg_mean = zeros(100,1);
ulg_rejet = 0;

for i = 1 : 100
    for j = 1 : 20
        %verif condition d'hypothese ( < 10 )
        if(ech(i,1,j) < 10)
            ulg_mean(i) = ulg_mean(i) + 1;
        end
    end
    
    %calcul de la proportion de cas <10
    ulg_mean(i) = ulg_mean(i)/20;
    
    %calcul de la proportion de cas rejeté
    if (ulg_mean(i) > sup)
        ulg_rejet = ulg_rejet + 1;
    end
end

end
