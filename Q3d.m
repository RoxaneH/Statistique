function[stud, gauss] = Q3d(ech100, wine)

alpha = 1-0.95;
mean_pop = mean(wine);
stud = 0;
gauss = 0;

%on fait l'hypothèse que la variable suit une loi normale
for i=1 : 100
    ech_i = ech100(i, :, 1);
    %construction dun IC à 95% suivant la loi student
    mx = mean(ech_i);
    ET = std(ech_i);
    n = size(ech_i);
    
    u = 1.96;
    
    if (n > 30)
        k = u;
    else
        k = 2.093;
    end
    
    sum = 0;
    for i = 1:size(ech_i)
        sum = sum + ech_i(i)^2;
    end
    
    s_n = sqrt(sum/n - mx^2);
    
    borne_inf_stud = mx - k*(s_n/sqrt(n-1)); 
    borne_sup_stud = mx + k*(s_n/sqrt(n-1));
    
    borne_inf_gauss = mx - u*(ET/sqrt(n)); 
    borne_sup_gauss = mx + u*(ET/sqrt(n));
    
    
    if(mean_pop < borne_sup_stud && mean_pop > borne_inf_stud)
        stud = stud + 1;
    end
    
    if(mean_pop > borne_inf_gauss && mean_pop < borne_sup_gauss)
        gauss = gauss +1;
    end
    

end