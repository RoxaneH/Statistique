function [ech100] = echantillons_100(data)

dim3 = size(data, 1);
ech100 = zeros(100,20,dim3);

for i = 1 : 100
    ech = echantillons(data);
   for j = 1 : 20
       for k = 1 : dim3
       
           ech100(i,j,k) = ech(j , k); 
     
       end
   end
end


end