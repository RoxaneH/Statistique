function [] = Q2aii(ech)
    
    ech_beer = ech(:,1);
    %Boite a moustache pour question projet
    figure('name','Q2aii - Question')
    boxplot(ech_beer);
    title('20 échantillons - bière');

end