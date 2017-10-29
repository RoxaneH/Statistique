function [ech7_20 ] = echantillon_7()

    [points, nomEpreuve, tabEx] = xlsread('data.xls');
    points = int8(points);
    pop = mean(points , 2);

    ech7_20 = zeros(100,7, 20 );

    for i = 1 : 100
        for j = 1 : 7
            ech7_20(i ,j,:) = randsample(pop , 20);
        end
    end
end