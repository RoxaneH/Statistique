function [echn , mean_pop , pop , var_pop ] = echantillon( n )

    [points, nomEpreuve, tabEx] = xlsread('data.xls');
    
    points = int8(points);
   
    pop = mean(points , 2);
    
    mean_pop = mean(pop);
    var_pop = var(pop,1);

    echn = zeros(100, n );
        
    for i = 1 : 100
        echn(i,:) = randsample(pop , n);
    end

end