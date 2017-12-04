function [pays_normal_beer, pays_normal_spirit] = Q1a(beers , spirit , moy_beer , moy_spirit ...
    , ET_beer , ET_spirit)

len = size(beers , 1);

pays_normal_beer = zeros(len ,1);
pays_normal_spirit = zeros(len , 1);
beer_min = moy_beer - ET_beer;
beer_max = moy_beer + ET_beer;
spirit_min = moy_spirit - ET_spirit;
spirit_max = moy_spirit + ET_spirit;
for i=1 : len
    if beers(i) >= moy_beer - ET_beer  && beers(i) <= moy_beer + ET_beer
        pays_normal_beer(i) = 1;
    end
    
    if spirit(i) >= moy_spirit - ET_spirit  && spirit(i) <= moy_spirit + ET_spirit
        pays_normal_spirit(i) = 1;
    end
    
end

end