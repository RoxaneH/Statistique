%% PROJET N*2 STATISTIQUE %%

[ech20 , mean_pop , pop , var_pop ] = echantillon(20);

%--1.(a)
[biais_mx_20 , var_mx_20] = Q1a(ech20 , mean_pop , var_pop );

%--1.(b)
[biais_medx_20 , var_medx_20] = Q1b(ech20 , mean_pop , var_pop );

%--1.(c)
[ech50 , mean_pop , pop , var_pop ] = echantillon(50);

[biais_mx_50 , var_mx_50] = Q1a(ech50 , mean_pop , var_pop );
[biais_medx_50 , var_medx_50] = Q1b(ech50 , mean_pop , var_pop );

%--1.(d)
[borne_g_norm ,borne_d_norm ,borne_g_stud ,borne_d_stud ,stud ,norm] ...
    =  Q1d(ech20 , mean_pop);

% - TEST D HYPOTHESE

[ech7_20] = echantillon_7();

%--2.(a)
[ulg_rejet , ulg_mean] = Q2a(ech7_20);

%--2.(b)
[inst_rejet , inst_mean] = Q2b(ech7_20);

