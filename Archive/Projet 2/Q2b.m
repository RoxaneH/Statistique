function [inst_rejet_ , inst_mean] = Q2b(ech)

%initialisation de la borne supérieur
eps = 0.1598;
sup = eps + 0.25;

inst_mean = zeros(100,6);
inst_rejet = zeros(100,1);

for i = 1 : 100
    for j = 2 : 6
        for k = 1 : 20
             %verif condition d'hypothese ( < 10 )
             if(ech(i,j,k) < 10)
                  inst_mean(i , j) = inst_mean(i,j) + 1;
             end
        end
        
        %calcul de la proportion de cas <10
        inst_mean(i,j) = inst_mean(i,j)/20;

        if (inst_mean(i,j) > sup)
            inst_rejet(i) = 1;
        end
        inst_rejet_ = mean(inst_rejet) * 100;
    end

end