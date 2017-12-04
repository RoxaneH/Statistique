function [ech100] = echantillons_100(data)

n_features = size(data, 2);
ech100 = zeros(20, n_features, 100);

for i = 1 : 100
    ech100(:, :, i) = echantillons(data);
   
end


end