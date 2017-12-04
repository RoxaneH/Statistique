function [ech50] = echantillons_50(data)

dim3 = size(data, 2);
ech50 = zeros(50,dim3,100);
nbr_elem = size(data, 1);

for i = 1 : 100
    
    sample = zeros(50,dim3);

    for k = 1 : 50
       tmp = round(rand * nbr_elem ) + 1;
       if tmp == 0
           tmp = tmp +1;
       elseif tmp == 101
           tmp = tmp -1 ;
       end
       for j = 1 : dim3
            sample(k,j) = data(tmp,j);
       end
    end
    
    ech50(:,:,i) = sample;
end


end