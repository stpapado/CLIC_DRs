clear all
files=dir('DAlim*.txt')
sgmx=    0.0002696519558 ;
sgmy=    3.993972242e-05 ;
sgmx                =    0.0002729635087 ;
sgmy                =    4.023285923e-05 ;

%figure;
hold all
%kk=0;
for i=1:length(files)
    AA=importdata(files(i).name);
    xx=AA.data(:,3);
    yy=AA.data(:,5);    
    trn=AA.data(:,2);
    pid=AA.data(:,1);
    unstable=pid(find(trn<1024&trn>0));   
    if isempty(unstable)==1
        xLim(i)=xx(length(xx)/2);
        yLim(i)=yy(length(xx)/2);
    else
        files(i).name
        unstable(1)-1
        xLim(i)=xx(unstable(1)-1);
        yLim(i)=yy(unstable(1)-1);
    end    
end

testt=sortrows([xLim' yLim']);
plot(testt(:,1)/sgmx,testt(:,2)/sgmy,'.-', 'Linewidth',2, 'Markersize',12)
box on
xlabel('')

xlabel('\sigma_x','FontSize',20)
ylabel('\sigma_y','FontSize',20)
ylim([0 140]);
set(gca,'fontsize',17)
xlim([-100 100]);
title('\sigma_x=273.0\mum and \sigma_y=40.2\mum','FontSize',15,'FontWeight', 'Normal')
set(gcf,'color','w');
%%
legend('\delta_p=0', '\delta_p=0.5%','\delta_p=-0.5%')