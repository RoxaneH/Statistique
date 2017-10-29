function [ech] = echantillons(data)
n_features = size(data, 2);
nbr_elem = size(data, 1);

ech = zeros(20,n_features);

    for i = 1 : 20
       tmp = round(rand * nbr_elem ) + 1;
       for j = 1 : n_features
            ech(i,j) = data(tmp,j);
       end
    end
end
