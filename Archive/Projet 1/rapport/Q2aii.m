function [] = Q2aii(ech,points)

    %Boite a moustache pour question projet
    figure('name','2aii - Questions sur les projet')
    
    subplot(1,2,1)
    boxplot([ech(:,1),ech(:,2)],'label',{'Proj 1-ech','Proj 2-ech'});

    subplot(1,2,2)
    boxplot([points(:,1),points(:,2)],'label',{'Proj 1 - pop','Proj 2 - pop'});

end