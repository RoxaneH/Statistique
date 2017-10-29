function [moy_parEtu_theo , moy_parEtu_ex , Prop_10_14_Theo ...
, Prop_10_14_Ex , cumsum_feq_Qtheo] = Q1d(points)

    %Definition de moy_parEtu_theo et moy_parEtu_ex
    nbrEtu = size(points(:,1));
    moy_parEtu_theo = zeros(nbrEtu);
    moy_parEtu_ex = zeros(nbrEtu);

    for i =  1 : nbrEtu
        moy_parEtu_theo(i) = round((points(i , 4) + points(i , 5) +...
        points(i , 6))/3);

        moy_parEtu_ex(i) = round( (points(i , 7) + points(i , 8) + ...
        points(i , 9))/3);
    end

    freq_parEtu_QTheo = hist(moy_parEtu_theo,21);
    freq_parEtu_QEx = hist(moy_parEtu_ex,21);

    Prop_10_14_Theo = sum(freq_parEtu_QTheo(11 : 15))/nbrEtu(1);
    Prop_10_14_Ex   = sum(freq_parEtu_QEx(11 : 15))/nbrEtu(1);

    %Affichage du polygone des fréquences
    figure('name', '1d - Polygone des frequences');

    subplot(2,1,1);
    cumsum_feq_Qtheo = cumsum (freq_parEtu_QTheo/127);
    plot( 0:20 , (cumsum (freq_parEtu_QTheo/127) ));
    title('Theorie')

    subplot(2,1,2);
    plot(0:20 , cumsum(freq_parEtu_QEx/127) );
    title('Exercice')

end
