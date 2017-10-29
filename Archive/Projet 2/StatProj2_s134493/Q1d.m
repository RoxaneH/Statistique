function [borne_inf_norm ,borne_sup_norm ,borne_inf_stud ,borne_sup_stud ,stud ,norm] ...
    =  Q1d(ech , mean_pop)

    %Definition de la taille de l'echantillon et initialisations
    size_tmp = size(ech(1,:));
    n = size_tmp(2);
    
    borne_inf_norm = zeros(1,n);
    borne_sup_norm = zeros(1,n);
    borne_inf_stud = zeros(1,n);
    borne_sup_stud = zeros(1,n);
    
    mean_ech_n = zeros(n,1);
    ET_ech_n = zeros(n,1);

    stud = 0;
    norm = 0;

    for i = 1 : 100

        mean_ech_n(i) = mean(ech(i,:));
        ET_ech_n(i) = std(ech(i,:));

        %Lois Normal - calcul des bornes de l'ic
        borne_inf_norm(i) = mean_ech_n(i) - 1.96 * (ET_ech_n(i) / sqrt(n));
        borne_sup_norm(i) = mean_ech_n(i) + 1.96 * (ET_ech_n(i) / sqrt(n));

        %Loi student - calcul des bornes de l'ic
        k = 2.093;
        s_n_1 = sqrt(n / (n -1)) * ET_ech_n(i) ;

        borne_inf_stud(i) = mean_ech_n(i) - k * (s_n_1 / sqrt(n));
        borne_sup_stud(i) =mean_ech_n(i) + k * (s_n_1 / sqrt(n));
       
        
        %Verification des ic avec la moyenne de la population
        if ( mean_pop > borne_inf_stud(i) && mean_pop < borne_sup_stud(i))
            stud = stud + 1;
        end
                
        if ( mean_pop > borne_inf_norm(i) && mean_pop < borne_sup_norm(i))
            norm = norm + 1;
        end
        
    end
    
end