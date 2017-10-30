
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
% [moy_beer,moy_spirit,med_beer,med_spirit ...
%    ,mode_beer ,mode_spirit , ET_beer , ET_spirit ...
%    , belge_beer ,belge_spirit] = Q1b(beers , spirit);
% 
% % c)
% [countries_normal_beer , countries_normal_spirit] = Q1c(beers , spirit , moy_beer ...
%     , moy_spirit , ET_beer , ET_spirit);
% 
% belgium_normal_beer = countries_normal_beer(1);
% belgium_normal_spirit = countries_normal_spirit(1);
% 
% % d)
% [quar25_beer ,quar50_beer , quar75_beer ...
%     ,quar25_spirit , quar50_spirit ,quar75_spirit ] = Q1d(beers , spirit);
% 
% % e)
% [prop_200_belge] = Q1e(beers);
% 
% % f)
% Q1f(beers, spirit, wine,liters)

%% STATISTIQUE -- PARTIE 2

ech = echantillons(data);


[moy_ech_beer, med_ech_beer, ET_ech_beer, moy_ech_spirit, med_ech_spirit, ET_ech_spirit] = Q2ai(ech);

Q2aii(ech);

Q2aiii(ech)



