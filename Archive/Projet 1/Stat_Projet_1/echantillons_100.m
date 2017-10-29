function [ech100] = echantillons_100(points)

ech100 = zeros(100,20,9);

for i = 1 : 100
    ech = echantillons();
   for j = 1 : 20
       for k = 1 : 9
       
           ech100(i,j,k) = ech(j , k); 
     
       end
   end
end


end