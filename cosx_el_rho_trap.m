clear all;

ti1=0.04:0.001:1; %define el range
ti2=0.04:0.001:1; %define rho range
[el,rho] = meshgrid(ti1,ti2);

fr=(4.*sqrt(2).*(1+rho).*(el.*(-1+rho)+rho.*log(rho)).^3.*sqrt(((-1+rho).^3.*(2+rho+rho.^2).*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(rho).*(2.*el.*(-1+rho)-rho+rho.*log(rho))))./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))-60.*rho.^4.*log(rho).*(-2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))-3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(rho)))))./((-1+rho).*(3.*rho.^3.*(1+rho)-6.*el.*rho.^2.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))+6.*(2.*el.*(-1+rho)-rho).*rho.^4.*log(rho)+6.*rho.^5.*log(rho).^2);

cq=3.84*10.^(-13);gamma=5597;J=1;G=cq.*gamma.^2/J;
L1 =0.0101;
rhmin=4.111;
emmin=(G.*L1.^3.*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(1./rho).*(-2.*el.*(-1+rho)+rho+rho.*log(1./rho))))./(6.*sqrt(30).*el.^3.*(-1+rho).^3.*(1+rho).*rhmin.^3.*sqrt(((-1+rho).^3.*(2+rho+rho.^2).*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(1./rho).*(-2.*el.*(-1+rho)+rho+rho.*log(1./rho))))./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))+60.*rho.^4.*log(1./rho).*(-2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))+3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(1./rho)))));

    
cosx=1-(12.*(-1+rho).*(el.*(-1+rho)+rho.*log(rho)).^2.*((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho+3.*rho.^2)+45.*rho.^5.*(-44-3.*rho-6.*rho.^2+rho.^3)+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20-9.*rho+6.*rho.^2+3.*rho.^3)+90.*el.*rho.^4.*(8-13.*rho+7.*rho.^2-3.*rho.^3+rho.^4))+120.*(-1+rho).*rho.^4.*(2.*el.^3.*(-1+rho).^3-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho)-6.*el.*rho.*(2-3.*rho+rho.^2)).*log(rho)+180.*(-2+rho).*rho.^5.*(el.*(-1+rho)+rho).^2.*log(rho).^2))./(5.*(2+rho+rho.^2).*((-1+rho).*(3.*rho.^3.*(1+rho)-6.*el.*rho.^2.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))-6.*rho.^4.*(-2.*el.*(-1+rho)+rho).*log(rho)+6.*rho.^5.*log(rho).^2).*(-((12.*(1+el).*(-1+rho).^2.*(el.*(-1+rho)+rho.*log(rho)).*((-1+rho).*(3.*(1-3.*rho).*rho.^3-3.*el.*rho.^2.*(-1+rho.^2)+el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))+6.*rho.^4.*(el.*(-1+rho)+rho).*log(rho)))./(2+rho+rho.^2))+((-1+rho).*(3.*(1-3.*rho).*rho.^3-3.*el.*rho.^2.*(-1+rho.^2)+el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))+6.*rho.^4.*(el.*(-1+rho)+rho).*log(rho)).^2./(2+rho+rho.^2).^2-(12.*(-1+rho).^2.*(el.^2.*(-1+rho)+rho.*log(rho)).*((-1+rho).*(4.*el.^2.*(-1+rho).^2+3.*rho.^3.*(-1+3.*rho)+3.*el.*(4-6.*rho+rho.^2-2.*rho.^3+3.*rho.^4))-3.*rho.*(-2+3.*rho-rho.^2+rho.^3+rho.^4-2.*el.*(2-3.*rho+rho.^2)).*log(rho)))./(2+rho+rho.^2)+36.*(1+el).^2.*(-1+rho).^4.*(el.*(-1+rho)+rho.*log(rho)).^2.*(1+((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho+3.*rho.^2)+45.*rho.^5.*(-44-3.*rho-6.*rho.^2+rho.^3)+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20-9.*rho+6.*rho.^2+3.*rho.^3)+90.*el.*rho.^4.*(8-13.*rho+7.*rho.^2-3.*rho.^3+rho.^4))+120.*(-1+rho).*rho.^4.*(2.*el.^3.*(-1+rho).^3-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho)-6.*el.*rho.*(2-3.*rho+rho.^2)).*log(rho)+180.*(-2+rho).*rho.^5.*(el.*(-1+rho)+rho).^2.*log(rho).^2)./(30.*(1+el).^2.*(-1+rho).^3.*(2+rho+rho.^2).*((-1+rho).*(3.*rho.^3.*(1+rho)-6.*el.*rho.^2.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))-6.*rho.^4.*(-2.*el.*(-1+rho)+rho).*log(rho)+6.*rho.^5.*log(rho).^2)))));
sinx=-sqrt(1-(cosx).^2);
   
mx1=(cosx>0&sinx>0)|(cosx<0&sinx>0);
mx2=(cosx<0&sinx<0)|(cosx>0&sinx<0);
mux=acosd(cosx).*mx1+(360-acosd(cosx)).*mx2;
%%  plot the mux parametrized with el and rho
v=0:5:360;
fontsize1=25;
fontsize2=20;
figure('units','normalized','position',[.1 .1 .3 .42]);
%colormap(jet(100));
C = contourf(rho,el,mux,v,'edgecolor','none');
xlabel('\rho','FontSize',fontsize1)
ylabel('\lambda','FontSize',fontsize1)
clb= colorbar;
colormap(jet);
ylabel(clb,'\mu_{x}[\circ]','FontSize',fontsize1)
set(gca,'FontSize',fontsize1)
set(clb,'FontSize',fontsize1)
box on
axis('tight')
set(gca,'XTick',[0.04, 0.2:0.2:1]);
%set(gca,'XTickLabel', {'(0,0.1)'});  
set(gca,'YTick',[0.04, 0.2:0.2:1]);
%set(gca,'YTickLabel', {'0','L_1','L/2'});  
set(gcf,'color','w');

ylabh = get(clb,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') +[3.2 285 0]);

%cpos = get(clb,'YLabel');
set(gca,'Position',get(gca,'Position') +[0 0 0 0]);
set(clb,'Position',get(clb,'Position') +[-0.015 0 0 -0.005]);

caxis([220 360])

hold all
p1 = find(C(1,:)==250);p2 = p1 + C(2,p1);
x1 = C (1,p1+1:p2)';
y1 = C (2,p1+1:p2)';
p1 = find(C(1,:)==280);p2 = p1 + C(2,p1);
x2 = C (1,p1+1:p2)';
y2 = C (2,p1+1:p2)';
p1 = find(C(1,:)==310);p2 = p1 + C(2,p1);
x3 = C (1,p1+1:p2)';
y3 = C (2,p1+1:p2)';
p1 = find(C(1,:)==340);p2 = p1 + C(2,p1);
x4 = C (1,p1+1:p2)';
y4 = C (2,p1+1:p2)';
%% the ftme is paremetrized with rho and el
fontsize1=25;
fontsize2=20;
figure('units','normalized','position',[.1 .1 .3 .42]);
colormap(jet(200));
contourf(rho,el,fr,50,'edgecolor','none');
xlabel('\rho','FontSize',fontsize1)
ylabel('\lambda','FontSize',fontsize1)
clb= colorbar;
colormap(flipud(jet));
ylabel(clb,'F_{TME}','FontSize',fontsize1)
%caxis([1 50])
set(gca,'FontSize',fontsize1)
set(clb,'FontSize',fontsize1)
box on

set(gca,'XTick',[0.04, 0.2:0.2:1]);
%set(gca,'XTickLabel', {'(0,0.1)'});  
set(gca,'YTick',[0.04, 0.2:0.2:1]);
%set(gca,'YTickLabel', {'0','L_1','L/2'});  
set(gcf,'color','w');
xlim([0.04 1]);
ylim([0.04 1]);
%%
hold all
h1=plot(x1,y1);
h2=plot(x2,y2);
h3=plot(x3,y3);
h4=plot(x4,y4);
set(h1,'LineWidth',2);
set(h1,'Color','black');
set(h2,'LineWidth',2);
set(h2,'Color','black');
set(h3,'LineWidth',2);
set(h3,'Color','black');
set(h4,'LineWidth',2);
set(h4,'Color','black');
set(gcf,'color','w');

strmax1 = {'340^\circ'};
text(0.15,0.5,strmax1,'HorizontalAlignment','center','Color','black','FontSize',fontsize2);
strmax2 = {'310^\circ'};
text(0.5,0.8,strmax2,'HorizontalAlignment','center','Color','black','FontSize',fontsize2);
strmax1 = {'280^\circ'};
text(0.85,0.5,strmax1,'HorizontalAlignment','center','Color','black','FontSize',fontsize2);
strmax2 = {'250^\circ'};
text(0.9,0.25,strmax2,'HorizontalAlignment','center','Color','black','FontSize',fontsize2);

%h = colorbar('h',...);
%set(get(h,'title'),'string','ppb');
%locate = get(clb,'ylabel');
%pos = get(locate,'position'); %it gives a position of 0.0500 2.900 1.0001
ylabh = get(clb,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') +[2.5 7 0]);
axis('tight')
set(gca,'Position',get(gca,'Position') +[0 0 0 0]);
set(clb,'Position',get(clb,'Position') +[-0.015 0 0 -0.005]);
%% the emittance is paremetrized with rho and el
fontsize1=25;
fontsize2=20;
figure('units','normalized','position',[.1 .1 .3 .42]);
colormap(jet(500));
contourf(rho,el,emmin*gamma*1e9,100,'edgecolor','none');
xlabel('\rho','FontSize',fontsize1)
ylabel('\lambda','FontSize',fontsize1)
clb= colorbar;
colormap((jet));
ylabel(clb,'\epsilon_{TME}','FontSize',fontsize1)
caxis([0 300])
set(gca,'FontSize',fontsize1)
set(clb,'FontSize',fontsize1)
box on

set(gca,'XTick',[0.01, 0.2:0.2:1]);
%set(gca,'XTickLabel', {'(0,0.1)'});  
set(gca,'YTick',[0.01, 0.2:0.2:1]);
%set(gca,'YTickLabel', {'0','L_1','L/2'});  
set(gcf,'color','w');
%xlim([0.04 1]);
%ylim([0.04 1]);
%% the ftme is paremetrized with Nd, L and el after fixing the rhmin and using the el=(Nd*Ld*rho-pi*rhmin)/(-Nd*Ld+pi*rhmin)
clear all;
j=1;
%rhmin=5.4; %1.77t
rhmin=4.111; %2.3T
for L=0.5:0.0025:1.5,
    for rho=0.04:0.0025:1,
        for Nd=50:1:150,      
            el=(2.*pi.*(-1+rho).*rhmin-L.*Nd.*rho.*log(rho))./((-1+rho).*(L.*Nd-2.*pi.*rhmin));   
            %rho=exp(-el+(2.*pi.*(1+el).*rhmin)./(L.*Nd)+lambertw((exp(el-(2.*pi.*(1+el).*rhmin)./(L.*Nd)).*(L.*Nd.*el-2.*pi.*(1+el).*rhmin))./(L.*Nd)));
%el=0.1; 
            a=(4.*sqrt(2).*(1+rho).*(el.*(-1+rho)+rho.*log(rho)).^3.*sqrt(((-1+rho).^3.*(2+rho+rho.^2).*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(rho).*(2.*el.*(-1+rho)-rho+rho.*log(rho))))./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))-60.*rho.^4.*log(rho).*(-2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))-3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(rho)))))./((-1+rho).*(3.*rho.^3.*(1+rho)-6.*el.*rho.^2.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))+6.*(2.*el.*(-1+rho)-rho).*rho.^4.*log(rho)+6.*rho.^5.*log(rho).^2); 
            
            r=isnan(a);
            if r~=1,           
               y(j)=L;
               z(j)=Nd;
               x(j)=el;
               k(j)=a;
               w(j)=rho;
               j=j+1;
            end
        end
    end
end
%
fontsize1=25;
fontsize2=20;

per=(k>1&x<=0.5&x>=0);
figure('units','normalized','position',[.1 .1 .3 .42]);
scatter3(x(per),y(per),z(per),50,k(per),'filled','s');
xlabel('\lambda','FontSize',fontsize1)
ylabel('L [m]','FontSize',fontsize1)
zlabel('N_d','FontSize',fontsize1)
colormap(flipud(jet));
clb=colorbar;
ylabel(clb,'F_{TME}','FontSize',fontsize1)
set(gca,'FontSize',fontsize1)
set(clb,'FontSize',fontsize1)
box on
axis('tight')
set(gcf,'color','w');
set(gca,'XTick',[0:0.25:0.5]);

ylabh = get(clb,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') +[3 80 0]);

%ylabha = get(gca,'YLabel');
%set(ylabha,'Position',get(ylabha,'Position') +[0.2 0.2 0]);
%xlabha = get(gca,'XLabel');
%set(xlabha,'Position',get(xlabha,'Position') +[0.15 0.1 0]);

%cpos = get(clb,'YLabel');
set(gca,'Position',get(gca,'Position') +[-0.01 0 0 0]);
set(clb,'Position',get(clb,'Position') +[-0.0075 0 0 -0.005]);

xlim([0 0.57]);
caxis([1 max(k)]) %max(k)=158.0884
%% fix L, Nd and rhmin; the ftme is paremetrized with rho and el
clear all;
fontsize1=25;
fontsize2=20;

figure('units','normalized','position',[.1 .1 .3 .42]);

%rhmin=5.4; %1.77t
rhmin=4.111; %2.3T
L=[0.7 0.58 0.58];
Nd=[100 100 90];
rhoall=[0.04:0.005:1]';
for ii=1:length(L)  
    for jj=1:length(rhoall)
%for the trap
elall=(2.*pi.*(-1+rhoall).*rhmin-L(ii).*Nd(ii).*rhoall.*log(rhoall))./((-1+rhoall).*(L(ii).*Nd(ii)-2.*pi.*rhmin));
restr=elall>=0.04;
el=elall(restr);
rho=rhoall(restr);
aa=(4.*sqrt(2).*(1+rho).*(el.*(-1+rho)+rho.*log(rho)).^3.*sqrt(((-1+rho).^3.*(2+rho+rho.^2).*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(rho).*(2.*el.*(-1+rho)-rho+rho.*log(rho))))./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))-60.*rho.^4.*log(rho).*(-2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))-3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(rho)))))./((-1+rho).*(3.*rho.^3.*(1+rho)-6.*el.*rho.^2.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))+6.*(2.*el.*(-1+rho)-rho).*rho.^4.*log(rho)+6.*rho.^5.*log(rho).^2);          
scatter(rho(aa>1&el<1),el(aa>1&el<1),50,aa(aa>1&el<1),'filled','o');
hold all;
%for the step
% elall=(Nd(ii)*L(ii)/2*rhoall-pi*rhmin)/(-Nd(ii)*L(ii)/2+pi*rhmin);
% restr=elall>=0.1;
% el=elall(restr);
% rho=rhoall(restr);
% aa=2.*(el+rho).^3.*(1+rho.^2).*sqrt((1+rho.^3)./((4.*el.^4+24.*el.^4.*rho.^3+20.*el.^2.*(1+3.*el).*rho.^4+3.*(3+5.*el.*(3+4.*el)).*rho.^5+(4+15.*el.*(1+el)).*rho.^8).*(3.*el.*rho.^4+rho.^5+el.^2.*(1+3.*rho.^3))));
% scatter(rho(aa>1&el<1),el(aa>1&el<1),55,aa(aa>1&el<1),'o');
colormap(flipud(jet));
clb=colorbar;
axis('tight');
end
end

h1 = text(0.055,0.37, 'N_d=100, L=0.7m','FontSize',fontsize2);
set(h1, 'rotation', -38)
h2 = text(0.07,0.5, 'N_d=100, L=0.58m','FontSize',fontsize2);
set(h2, 'rotation', -40)
h3 = text(0.08,0.6, 'N_d=90, L=0.58m','FontSize',fontsize2);
set(h3, 'rotation', -42)

%caxis([1 clb.Limits(2)])
set(gca,'XTick',[0.04, 0.2:0.1:1]);
%set(gca,'XTickLabel', {'(0,0.1)'});  
set(gca,'YTick',[0.04, 0.2:0.2:1]);
xlim([0.04 0.31]);
ylim([0.04 1]);

xlabel('\rho','FontSize',fontsize1)
ylabel('\lambda','FontSize',fontsize1)
ylabel(clb,'F_{TME}','FontSize',fontsize1)
set(gca,'FontSize',fontsize1)
set(clb,'FontSize',fontsize1)
box on
set(gcf,'color','w');
%%
% fontsize1=25;
% fontsize2=20;
% 
% per=(k>1&x<=1&x>=0);
% figure('units','normalized','position',[.1 .1 .3 .42]);
% scatter3(x(per),y(per),z(per),50,k(per),'filled','s');
% xlabel('\lambda','FontSize',fontsize1)
% ylabel('L [m]','FontSize',fontsize1)
% zlabel('N_d','FontSize',fontsize1)
% colormap(flipud(jet));
% clb=colorbar;
% ylabel(clb,'F_{TME}','FontSize',fontsize1)
% set(gca,'FontSize',fontsize1)
% set(clb,'FontSize',fontsize1)
% box on
% axis('tight')
% set(gcf,'color','w');
% set(gca,'XTick',[0:0.5:1]);
% 
% ylabh = get(clb,'YLabel');
% set(ylabh,'Position',get(ylabh,'Position') +[3 120 0]);
% 
% ylabha = get(gca,'YLabel');
% set(ylabha,'Position',get(ylabha,'Position') +[0.2 0.2 0]);
% xlabha = get(gca,'XLabel');
% set(xlabha,'Position',get(xlabha,'Position') +[0.15 0.1 0]);
% 
% %cpos = get(clb,'YLabel');
% set(gca,'Position',get(gca,'Position') +[-0.01 0 0 0]);
% set(clb,'Position',get(clb,'Position') +[-0.0075 0 0 -0.005]);
% 
% xlim([0 1]);
% caxis([1 max(k)]) %max(k)=215.5296
% %%
% per=(k>1&x<1&x>0);
% per2=per&w<0.1; %for el=0
% %per2=per&y>186.11./z; %for el=0.1
% 
% figure;
% scatter(y(per),z(per),50,k(per),'filled','s');
% xlabel('L [m]','FontSize',17)
% ylabel('N_d','FontSize',17)
% colormap(flipud(jet));
% clb=colorbar;
% %caxis([1 10]);
% ylabel(clb,'F_{TME}','FontSize',17)
% set(gca,'FontSize',17)
% box on
% axis('tight')
% 
% hold all;
% scatter(y(per2),z(per2),20,k(per2),'filled','ow');