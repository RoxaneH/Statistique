function [] = Q4a(points)

data = csvread('data.csv' , 1,1 );

beers = data(:,1);
beer_belgium = 295;
%ech100 = zeros(100,20,9);
nbr_elem = size(beers,1)
ech = zeros(100,6,50);

for i = 1 : 100
  
    for j = 1 : 6
        for k = 1 : 50
           ech(i,j,k) = beers(mod(round(rand() * nbr_elem) , 100) +1);
        end
    end
end

%initialisation de la borne supérieur
x = 0;
for i = 1 : nbr_elem
    if beers(i) > beer_belgium
        x = x+1;
    end
end
x = x/nbr_elem;
eps = 0.1598;
sup = eps + x;%+ 0.25

beer_belgium = 295;

beer_mean = zeros(100,1);
rejet = 0;
for t = 1 : 6
    rejet = 0;
    for i = 1 : 100
        for j = 1 : 50
            %verif condition d'hypothese ( < 10 )
            %disp(ech(i,t,j))
            if(ech(i,t,j) > beer_belgium)
                beer_mean(i) = beer_mean(i) + 1;
            end
        end

        %calcul de la proportion de cas >beer_belgium
        beer_mean(i) = beer_mean(i)/50;

        %calcul de la proportion de cas rejeté
        if (beer_mean(i) > sup)
            rejet = rejet + 1;
        end
        
    end
    if (t == 1)
        disp( "Etat Belge :" + rejet)
    else
        disp("Institut " + (t-1) +" :"+rejet)
end


end