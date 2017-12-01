function [ech] = echantillons(data)

n_features = size(data, 2);
nbr_elem = size(data, 1);

ech = zeros(20,n_features);

    for i = 1 : 20
       tmp = round(rand * nbr_elem ) + 1;
       if tmp == 0
           tmp = tmp +1;
       elseif tmp == 101
           tmp = tmp -1 ;
       end
       for j = 1 : n_features
            ech(i,j) = data(tmp,j);
       end
    end
end
