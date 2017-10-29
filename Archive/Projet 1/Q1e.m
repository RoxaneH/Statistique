function [coefCorr_proj2_Qproj] = Q1e(points)

    pts_proj2 = points(:, 2);
    pts_QProj = points(:, 3);
    
    %Affichage des graphique 
    figure('name' , ' 1e - Question sur le projet et projet 2') 
    title('Projet 2 - Q Projet')
    scatter( pts_QProj, pts_proj2)
    title('Correlation entre question sur le projet et le projet 2')
    xlabel('Points de la questions projet')
    ylabel('Points du Projet 2')
    
    %Calcul du coef de correlation
    mat_coefCorr_proj2_Qproj = corrcoef(pts_proj2 , pts_QProj);
    coefCorr_proj2_Qproj = mat_coefCorr_proj2_Qproj(2,1);

end
