
%% STATISTIQUE -- PARTIE 1

data = csvread('data.csv' , 1,1 );

beers = data(:,1);
spirit = data(:,2);
wine = data(:,3);
liters = data(:,4);

%Question 1
% % a)
% Q1a(beers , spirit);
% 
% % b)
 [moy_beer,moy_spirit,med_beer,med_spirit ...
    ,mode_beer ,mode_spirit , ET_beer , ET_spirit ...
    , belge_beer ,belge_spirit] = Q1b(beers , spirit);
% 
% % c)
 [countries_normal_beer , countries_normal_spirit] = Q1c(beers , spirit , moy_beer ...
     , moy_spirit , ET_beer , ET_spirit);
 val_normale_biere = sum(countries_normal_beer);
 val_normale_alcool = sum(countries_normal_spirit);
 
% belgium_normal_beer = countries_normal_beer(1);
% belgium_normal_spirit = countries_normal_spirit(1);
% 
% % d)
 [quar25_beer ,quar50_beer , quar75_beer ...
     ,quar25_spirit , quar50_spirit ,quar75_spirit ] = Q1d(beers , spirit);
% 
% % e)
 [prop_200_belge] = Q1e(beers);
% 
% % f)
 [beers_alcool,spirit_litres,wine_liters] = Q1f(beers, spirit, wine,liters);

%% STATISTIQUE -- PARTIE 2

ech = echantillons(data);
%ech100 = echantillons_100(data);


[moy_ech_beer, med_ech_beer, ET_ech_beer, moy_ech_spirit, med_ech_spirit, ET_ech_spirit] = Q2ai(ech);

Q2aii(ech);

[ks_beer, ks_spirit] = Q2aiii(ech, beers, spirit)

%[moy100_beer, moy100_spirit] = Q2bi(ech100);

%moyenne100_beer = mean(moy100_beer);
%moyenne100_spirit = mean(moy100_spirit);

%[med100_beer, med100_spirit] = Q2bii(ech100);

%moyenne100_beer_bis = mean(med100_beer);
%moyenne100_spirit_bis = mean(med100_spirit);

%[ET100_beer, ET100_spirit] = Q2biii(ech100);

%moyET100 = mean(ET100_beer);
%moyET100 = mean(ET100_spirit);

%[distKS100_beer, distKS100_spirit] = Q2biv(ech100, beers, spirit);
%[distKS100_wine, distKS100_liters] = Q2biv(ech100, wine, liters);

