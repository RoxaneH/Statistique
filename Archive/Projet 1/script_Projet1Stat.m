%-------------SCRIPT PROJET 1 STATISTIQUE

[points, nomEpreuve, tabEx] = xlsread('data.xls');

%%----Question n°1
%-(a)
Q1a(points);

%-(b)
[moy_ExQ1 ,moy_ExQ2 ,moy_ExQ3 ,mode_ExQ1, mode_ExQ2, mode_ExQ3,...
    med_ExQ1, med_ExQ2, med_ExQ3 , ET_ExQ1 ,ET_ExQ2 , ET_ExQ3]= Q1b(points)


%-(c)
[quar25_Qproj, quar50_Qproj, quar75_Qproj] = Q1c(points)

%-(d)
[moy_parEtu_theo , moy_parEtu_ex , Prop_10_14_Theo ...
    , Prop_10_14_Ex, cumsum_feq_Qtheo] = Q1d(points)


%-(e)
[coefCorr_proj2_Qproj] = Q1e(points)



%----Question  2)
%--(a)
ech = echantillons(points);
%-i)

[moy_ech_Ex1, moy_ech_Ex2, moy_ech_Ex3, ...
    med_ech_Ex1, med_ech_Ex2 ,med_ech_Ex3 ...
   ET_ech_Ex1,ET_ech_Ex2,ET_ech_Ex3 ] =  Q2ai(ech)

%-ii)

Q2aii(ech , points);

%-iii)

[KS_dist] = Q2aiii(ech , cumsum_feq_Qtheo)

%----(b)

ech100 = echantillons_100(points);
%--i)

[moy_moy_ech100] = Q2bi(ech100)

%--ii)

[moy_med_ech100] = Q2bii(ech100)

%--iii)

[moy_ET_ech100] = Q2biii(ech100)

%--iv)

[KS_pop_ech] = Q2biv(ech100 , points)

%--v)

Q2bv(ech100,points)
