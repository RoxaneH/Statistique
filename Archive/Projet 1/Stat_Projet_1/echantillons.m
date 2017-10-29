function [ech] = echantillons(points)

[points, nomEpreuve, tabEx] = xlsread('data.xls');

ech = zeros(20,9);

    for i = 1 : 20
       tmp = round(rand * 126) + 1;
       for j = 1 : 9
            ech(i,j) = points(tmp,j);
       end
    end
end
