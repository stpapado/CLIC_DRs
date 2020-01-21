%trapezium shape
fontsize1=25;
fontsize2=20;
fontsize3=22;

%benfing radius evolution
f=figure('units','normalized','position',[.1 .1 .3 .4]);
hold all;
plot([-10 -2],8+(2+[-10 -2]).*(8-10)./8,'-r','LineWidth',2);
plot([-2 2],[8 8],'-r','LineWidth',2);
plot([2 10],8+(2-[2 10]).*(8-10)./8,'-r','LineWidth',2); 
xlabel('s [m]','FontSize',fontsize1)
ylabel('\rho(s) [m]','FontSize',fontsize1)
set(gcf,'color','w');
set(gca,'fontsize',fontsize2)
box on
xlim([-11.1 11.1]); 
ylim([7.5 10.5]); 
%%
%benfing radius evolution
f=figure('units','normalized','position',[.1 .1 .3 .4]);
hold all;
En=2.86;
rmin=4.111; %4.111

%rho=0.1550;el=0.0428; %'N_d=100, L=0.7m'
rho=0.2150;el=0.0439; %'N_d=100, L=0.58m'
%rho=0.2600;el=0.0426;  %'N_d=90, L=0.58m'

rmax=rmin/rho;
Ld=0.58/2;
LL1=Ld./(1+1./el);
LL2=LL1/el;

plot([[-LL2 -LL1],[-LL1 LL1],[LL1 LL2]],[rmin+(LL1+[-LL2 -LL1]).*(rmin-rmax)./LL2,[rmin rmin],rmin+(LL1-[LL1 LL2]).*(rmin-rmax)./LL2],':g','LineWidth',2);

xlabel('s [m]','FontSize',fontsize1)
ylabel('\rho(s) [m]','FontSize',fontsize1)
set(gcf,'color','w');
set(gca,'fontsize',fontsize2)
box on
%xlim([-0.32 0.32]); 
ylim([3 30]); 
%legend('N_d=100, L=0.7m', 'N_d=100, L=0.58m','N_d=90, L=0.58m','Location','north');
%[0.1550 0.0428], [0.2150 0.0439] [0.2600 0.0426]
%% 
En=2.86;
rhmin=4.111; %4.111
rho=0.26117;%rho=0.294956491786509;
r2=rhmin/rho;
L1=0.0107;
Ld=0.58/2;
L2=Ld-L1;
%Bf=En/(rhmin*0.2998);
f=figure('units','normalized','position',[.1 .1 .3 .4]);
hold all;
plot([-Ld:0.001:-L1],rhmin+(L1+[-Ld:0.001:-L1]).*(rhmin-r2)./L2,'-r','LineWidth',2);
plot([-L1 L1],[rhmin rhmin],'-r','LineWidth',2);
plot([L1:0.001:Ld],rhmin+(L1-[L1:0.001:Ld]).*(rhmin-r2)./L2,'-r','LineWidth',2); 
xlabel('s [m]','FontSize',fontsize1)
ylabel('\rho(s) [m]','FontSize',fontsize1)
set(gcf,'color','w');
set(gca,'fontsize',fontsize2)
box on
axis('tight')
%xlim([-11.1 11.1]); 
%ylim([7.5 10.5]); 
%%
ang=(2*pi/90)/2;
th=ang-L1/rhmin;
ANGLE=th/7;
rr=0.4647368393+0.03;
difer=(r2-rhmin)/7;
hold all;
% ldif=0.02803921119/6;
% l1=0.03885561169+ldif;
% l2=0.03764600718+ldif;
% l3=0.03643640266+ldif;
% l4=0.03522679814+ldif;
% l5=0.03401719362+ldif;
% l6=0.0328075891+ldif;
% l7=0.06431039763+ldif;
%r8=rhmin+rr;r7=rhmin+rr*4;r6=rhmin+rr*7;r5=rhmin+rr*10;r4=rhmin+rr*13;r3=rhmin+rr*16;
%r8=4.820718648747818;r7=6.491941842148647;r6=8.206140656321455;r5=9.977327399074657;r4=11.808391921502986;r3=13.702422826265293;r2=16.378885543514613;
r8 = 5.5; r7 = 7; r6 = 8.5; r5 = 10; r4 = 11.5; r3 = 13;  rmax = 15.74;
r8 = 7; r7 = 8; r6 = 9; r5 = 10; r4 = 11; r3 = 13;  rmax = 15;
lens=(Ld-L1)/8;
%lens=0.03735;

plot([0 L1],[rhmin rhmin],'-r','LineWidth',2);
plot([L1 L1+lens],[r8 r8],'-r','LineWidth',2);
plot([L1+lens L1+2*lens],[r7 r7],'-r','LineWidth',2);
plot([L1+2*lens L1+3*lens],[r6 r6],'-r','LineWidth',2);
plot([L1+3*lens L1+4*lens],[r5 r5],'-r','LineWidth',2);
plot([L1+4*lens L1+5*lens],[r4 r4],'-r','LineWidth',2);
plot([L1+5*lens L1+6*lens],[r3 r3],'-r','LineWidth',2);
plot([L1+6*lens Ld],[rmax rmax],'-r','LineWidth',2);

%newrhos=[5.056752499623296 6.950758023605292 8.953188883274237 11.103791793980930 13.419644839727727 15.920555491291504 19.861078158270264]
%%
%axis('tight')
plot([0 2],[7.7 7.7],'-k','LineWidth',1);
plot([2 10],[7.7 7.7],'-k','LineWidth',1);
plot([0 0],[7.6 7.8],'-k','LineWidth',1);
plot([2 2],[7.6 7.8],'-k','LineWidth',1);
plot([10 10],[7.6 7.8],'-k','LineWidth',1);
set(gca, 'YTick', []);
set(gca,'XTick',[ 0 10]);
set(gca,'XTickLabel', {'0','L/2'},'FontSize',fontsize3);  

strmax1 = {'\rho_{1}'};
text(0,8.1,strmax1,'HorizontalAlignment','center','Color','black','FontSize',fontsize3);
strmax2 = {'\rho_{2}'};
text(10,10.13,strmax2,'HorizontalAlignment','center','Color','black','FontSize',fontsize3);
strmax3 = {'L_1'};
text(1,7.7,strmax3,'HorizontalAlignment','center','Color','black','BackgroundColor','w','FontSize',fontsize3);
strmax3 = {'L_2'};
text(6,7.7,strmax3,'HorizontalAlignment','center','Color','black','BackgroundColor','w','FontSize',fontsize3);
strmax = {'\rho_{2}(s)'};
text(5.2,9,strmax,'HorizontalAlignment','center','Color','black','FontSize',fontsize3);

%% to insert also the shapes of the consequetive dipoles used in MADX
plot([2 4.25],[8.3 8.3],'-k','LineWidth',2);
plot([4.25 6.5],[8.85 8.85],'-k','LineWidth',2);
plot([6.5 8.75],[9.4 9.4],'-k','LineWidth',2);
plot([8.75 11],[10 10],'-k','LineWidth',2);

plot([2 2],[8 8.3],'--k','LineWidth',2);
plot([4.25 4.25],[8 8.85],'--k','LineWidth',2);
plot([6.5 6.5],[8 9.4],'--k','LineWidth',2);
plot([8.75 8.75],[8 10],'--k','LineWidth',2);
plot([11 11],[8 10],'--k','LineWidth',2);

%% bending radius variation
figure;
hold all;

ll0=0.011166920934448; 

%trapezium
thelength=0.034854134883194;
r1=4.111;rr1=4.585220079748774;rr2=5.6;rr3=6.6;rr4=7.6;rr5=8.6;rr6=9.6;rr7=10.5;r2=12.164521378902204;
r1=4.111;rr1 = 7; rr2 = 8; rr3 = 9; rr4 = 10; rr5 = 11; rr6 = 13;  rr7 = 15; r2=24;

plot([0 ll0],[r1 r1],'-r','LineWidth',2);
plot([ll0 ll0+thelength],[rr1 rr1],'-r','LineWidth',2);
plot([ll0+thelength ll0+2*thelength],[rr2 rr2],'-r','LineWidth',2);
plot([ll0+2*thelength ll0+3*thelength],[rr3 rr3],'-r','LineWidth',2);
plot([ll0+3*thelength ll0+4*thelength],[rr4 rr4],'-r','LineWidth',2);
plot([ll0+4*thelength ll0+5*thelength],[rr5 rr5],'-r','LineWidth',2);
plot([ll0+5*thelength ll0+6*thelength],[rr6 rr6],'-r','LineWidth',2);
plot([ll0+6*thelength ll0+7*thelength],[rr7 rr7],'-r','LineWidth',2);
plot([ll0+7*thelength ll0+8*thelength],[r2 r2],'-r','LineWidth',2);

%trapezium ciemat
l1 = 0.010714;l2 = 0.0123;l3 = 0.022486;l4 = 0.0255;l5 = 0.03;l6 = 0.037;l7 = 0.043;l8 = 0.05;l9 = 0.059;
ang1 = 0.002606347383; ang2 =0.004233412896;
rrr2=l2/ang1;rrr3=l3/ang1;rrr4=l4/ang2;rrr5=l5/ang2;rrr6=l6/ang2;rrr7=l7/ang2;rrr8=l8/ang2;r22=8.453629446843511;
plot([0 l1],[r1 r1],'--k','LineWidth',2);
plot([l1 l1+l2],[rr1 rr1],'--k','LineWidth',2);
plot([l1+l2 l1+l2+l3],[rr2 rr2],'--k','LineWidth',2);
plot([l1+l2+l3 l1+l2+l3+l4],[rr3 rr3],'--k','LineWidth',2);
plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rr4 rr4],'--k','LineWidth',2);
plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rr5 rr5],'--k','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rr6 rr6],'--k','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rr7 rr7],'--k','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'--k','LineWidth',2);


%step
%ls =0.278835201857565;
%plot([0 ll0],[r1 r1],'--b','LineWidth',2);
%plot([ll0 ll0+ls],[r2 r2],'--b','LineWidth',2)
%% field variation
figure;
hold all;

ll0=0.011166920934448; 
multip=2.86/0.2998;
%trapezium
thelength=lens;
r1=multip/4.111;rr1=multip/4.585220079748774;rr2=multip/5.6;rr3=multip/6.6;rr4=multip/7.6;rr5=multip/8.6;rr6=multip/9.6;rr7=multip/10.5;r2=multip/12.164521378902204;
r1=multip/4.111;rr1 = multip/7; rr2 = multip/8; rr3 = multip/9; rr4 = multip/10; rr5 = multip/11; rr6 = multip/13;  rr7 = multip/15; r2=multip/25;

%r1=multip/rhmin;rr1=multip/r8;rr2=multip/r7;rr3=multip/r6;rr4=multip/r5;rr5=multip/r4;rr6=multip/r3;rr7=multip/rmax;r2=multip/12.164521378902204;
plot([0 ll0],[r1 r1],'-k','LineWidth',2);
plot([ll0 ll0+thelength],[rr1 rr1],'-k','LineWidth',2);
plot([ll0+thelength ll0+2*thelength],[rr2 rr2],'-k','LineWidth',2);
plot([ll0+2*thelength ll0+3*thelength],[rr3 rr3],'-k','LineWidth',2);
plot([ll0+3*thelength ll0+4*thelength],[rr4 rr4],'-k','LineWidth',2);
plot([ll0+4*thelength ll0+5*thelength],[rr5 rr5],'-k','LineWidth',2);
plot([ll0+5*thelength ll0+6*thelength],[rr6 rr6],'-k','LineWidth',2);
plot([ll0+6*thelength ll0+7*thelength],[rr7 rr7],'-k','LineWidth',2);
plot([ll0+7*thelength ll0+8*thelength],[r2 r2],'-k','LineWidth',2);

%trapezium ciemat
l1 = 0.010714;l2 = 0.0123;l3 = 0.022486;l4 = 0.0255;l5 = 0.03;l6 = 0.037;l7 = 0.043;l8 = 0.05;l9 = 0.059;
ang1 = 0.002606347383; ang2 =0.004233412896;
rrr2=multip/(l2/ang1);rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang2);rrr5=multip/(l5/ang2);rrr6=multip/(l6/ang2);rrr7=multip/(l7/ang2);rrr8=multip/(l8/ang2);r22=multip/8.453629446843511;
plot([0 l1],[r1 r1],'--b','LineWidth',2);
plot([l1 l1+l2],[rr1 rr1],'--b','LineWidth',2);
plot([l1+l2 l1+l2+l3],[rr2 rr2],'--b','LineWidth',2);
plot([l1+l2+l3 l1+l2+l3+l4],[rr3 rr3],'--b','LineWidth',2);
plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rr4 rr4],'--b','LineWidth',2);
plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rr5 rr5],'--b','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rr6 rr6],'--b','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rr7 rr7],'--b','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'--b','LineWidth',2);


%step
%ls =0.278835201857565;
%plot([0 ll0],[r1 r1],'--b','LineWidth',2);
%plot([ll0 ll0+ls],[r2 r2],'--b','LineWidth',2)
%%
%trapezium ciemat
figure;
hold all;
%OLD ciemat trap in madx
l1 = 0.010714;l2 = 0.0123;l3 = 0.022486;l4 = 0.0255;l5 = 0.03;l6 = 0.037;l7 = 0.043;l8 = 0.05;l9 = 0.059;
ang1 = 0.002606347383; ang2 =0.004233412896;
multip=2.86/0.2998;
r1=multip/4.111;rrr2=multip/(l2/ang1);rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang2);rrr5=multip/(l5/ang2);rrr6=multip/(l6/ang2);rrr7=multip/(l7/ang2);rrr8=multip/(l8/ang2);%r22=multip/8.453629446843511;
r2=0.685;
plot([0 l1],[r1 r1],'-b','LineWidth',2);
plot([l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
plot([l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
plot([l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
hh1=plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);

%NEW ciemat trap in madx
%b2 = 5.5; b3 = 6.8; b4 = 7.9; b5 = 9; b6 = 10.5; b7 = 11.5; b8 = 14; b9=15.63;
b2 = 7; b3 = 8; b4 = 9; b5 = 9.5; b6 = 11; b7 = 12; b8 = 14; b9=15.63;
%b2 = 7; b3 = 8; b4 = 9; b5 = 10; b6 = 11; b7 = 13;  b8 = 15; b9=24;

r1=multip/4.111;bb2=multip/(b2);bb3=multip/(b3);bb4=multip/(b4);bb5=multip/(b5);bb6=multip/(b6);bb7=multip/(b7);bb8=multip/(b8);%r22=multip/8.453629446843511;
r2=multip/b9;
plot([0 l1],[r1 r1],'--r','LineWidth',2);
plot([l1 l1+l2],[bb2 bb2],'--r','LineWidth',2);
plot([l1+l2 l1+l2+l3],[bb3 bb3],'--r','LineWidth',2);
plot([l1+l2+l3 l1+l2+l3+l4],[bb4 bb4],'--r','LineWidth',2);
plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[bb5 bb5],'--r','LineWidth',2);
plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[bb6 bb6],'--r','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[bb7 bb7],'--r','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[bb8 bb8],'--r','LineWidth',2);
hh2=plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'--r','LineWidth',2);

%analytical result
ll1=0.01;
plot([0 ll1],[r1 r1],'--k')
rmax=15.63;
ss=[ll1:0.001:Ld];
Bvar=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(Ld-ll1));
hh3=plot(ss,Bvar,'--k');

sss=[0:0.001:Ld];
Bvar2=multip./(rhmin+(-sss).*(rhmin-rmax)/(Ld));
hh4=plot(sss,Bvar2,'--g');

ssss=[ll1:0.001:Ld];
Bvar3=multip./(b2+(ll1-ssss).*(b2-rmax)/(Ld-ll1));
hh4=plot(ssss,Bvar3,'--c');

legend([hh1,hh2,hh3],'madx_{old}','madx_{new}','anal.','other');
%% shorter dipole, 0.532
fid1 = fopen(['v67_GFR_field.table']);
L1 = textscan(fid1,'%f%f%f%f%f%f%f%f%f%f%f%f','Headerlines',8);
fclose(fid1);
%trapezium ciemat
figure('Position',[100 100 650 500]);
hold all;
Nd=90;
%l1 = 0.01;l2 = 0.011;l3 = 0.021;l4 = 0.023;l5 = 0.03;l6 = 0.032;l7 = 0.0381;l8 = 0.04811;l9 = 0.058125;
%OLD ciemat trap in madx
l1 = 0.005;l2 = 0.013;l3 = 0.023;l4 = 0.026;l5 = 0.031;l6 = 0.037;l7 = 0.043;l8 = 0.053;l9 = 0.059;
%l1 = 0.005;l2 = 0.0123;l3 = 0.022486;l4 = 0.0255;l5 = 0.03;l6 = 0.037;l7 = 0.043;l8 = 0.05+0.00714;l9 = 0.059+0.005;
ang0=0.0012161;
ang1=0.003;
ang2=0.0044;
ang3=0.0044;
ang4=0.0045;
ang5=0.0045;
ang6=0.0045;
ang7=0.0046;
ang8=0.00379;
totallength=2*(l1+l2+l3+l4+l5+l6+l7+l8+l9)
totalangle=(2*pi/Nd)/2-(ang0+ang1+ang2+ang3+ang4+ang5+ang6+ang7+ang8)
[(ang0);(ang1);(ang2);(ang3);(ang4);(ang5);(ang6);(ang7);(ang8)]'
[(l1/ang0);(l2/ang1);(l3/ang2);(l4/ang3);(l5/ang4);(l6/ang5);(l7/ang6);(l8/ang7);(l9/ang8)]' %r22=multip/8.453629446843511;
r1=multip/(l1/ang0);
%r2=multip/(l9/ang8)]
%multip=2.86/0.2998;
%r1=multip/(l1/ang0);rrr2=multip/(l2/ang1);rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang3);rrr5=multip/(l5/ang4);rrr6=multip/(l6/ang5);rrr7=multip/(l7/ang6);rrr8=multip/(l8/ang7);%r22=multip/8.453629446843511;
%r2=multip/(l9/ang8);
%  plot([0 l1],[r1 r1],'-b','LineWidth',2);
%  plot([l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
%  plot([l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
%  plot([l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
%  hh1=plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
%  plot([0 -l1],[r1 r1],'-b','LineWidth',2);
%  plot(-[l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
%  plot(-[l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
%  plot(-[l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
%  hh1=plot(-[l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
%NEW ciemat trap in madx
%b2 = 5.5; b3 = 6.8; b4 = 7.9; b5 = 9; b6 = 10.5; b7 = 11.5; b8 = 14; b9=15.63;
%b2 = 5.5; b3 = 6.2; b4 = 7.2; b5 = 8.2; b6 = 10; b7 = 12; b8 = 14; b9=25;
%b2 = 5.2; b3 = 6.1; b4 = 7; b5 = 8.1; b6 =10; b7 = 11.5; b8 = 13.5; b9=20;
%b2 = 5; b3 = 5.8; b4 = 7; b5 = 8.2; b6 =10.2; b7 = 12; b8 = 14; b9=18;
%b2 = 7; b3 = 8; b4 = 9; b5 = 10; b6 = 11; b7 = 13;  b8 = 15; b9=24;
%b2 = 5; b3 = 6.5; b4 = 8.7; b5 =11.5; b6 = 14.7; b7 = 18.5; b8 = 23; b9=30;

%ciemat design
hh1=plot(L1{3}(1:400)/1000,-L1{5}(1:400),'r','LineWidth',2); hold all; plot(-L1{3}(1:400)/1000,-L1{5}(1:400),'r','LineWidth',2);

%analytical result
ll1=l1;
plot([0 ll1],[r1 r1],'--k')
rmax=l9/ang8; %rho=0.263
%rmax=15.6312; %rho=0.263
%rmax=18; %rho=0.263
ss=[ll1:0.001:totallength/2];
Bvar=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(totallength/2-ll1));
hh3=plot(ss,Bvar,'--k','LineWidth',2);
Bvar2=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(totallength/2-ll1));
plot(-ss,Bvar2,'--k','LineWidth',2);

%in madx
r1=multip/(l1/ang0);rrr2=multip/(l2/ang1);rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang3);rrr5=multip/(l5/ang4);rrr6=multip/(l6/ang5);rrr7=multip/(l7/ang6);rrr8=multip/(l8/ang7);%r22=multip/8.453629446843511;
r2=multip/(l9/ang8);
% plot([0 l1],[r1 r1],'-b','LineWidth',2);
% plot([l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
% plot([l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
% plot([l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
% plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
% plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
% plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
% plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
% hh2=plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
all_lengths=[[0 l1],[l1 l1+l2],[l1+l2 l1+l2+l3],[l1+l2+l3 l1+l2+l3+l4],[l1+l2+l3+l4 l1+l2+l3+l4+l5],[l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9]];
all_fields=[[r1 r1],[rrr2 rrr2],[rrr3 rrr3],[rrr4 rrr4],[rrr5 rrr5],[rrr6 rrr6],[rrr7 rrr7],[rrr8 rrr8],[r2 r2]];
hh2=plot(all_lengths, all_fields,'-b','LineWidth',1);

% plot(-[0 l1],[r1 r1],'-b','LineWidth',2);
% plot(-[l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
% plot(-[l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
% plot(-[l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
% plot(-[l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
% plot(-[l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
% plot(-[l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
% plot(-[l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
% hh2=plot(-[l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
hh2=plot(-all_lengths, all_fields,'-b','LineWidth',1);

%ll1=0.01;
%plot([0 ll1],[r1 r1],'-k')
%rmax=13.823133826496301; %rho=0.263
%rmax=15.6312; %rho=0.263
%rmax=18; %rho=0.263
% ss=[ll1:0.001:Ld];
% Bvar=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(Ld-ll1));
% hh3=plot(ss,Bvar,'-k','LineWidth',2);
% Bvar2=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(Ld-ll1));
% plot(-ss,Bvar2,'-k','LineWidth',2);

% sss=[0:0.001:Ld];
% rmax=15.6312; 
% Bvar2=multip./(rhmin+(-sss).*(rhmin-rmax)/(Ld));
% hh4=plot(sss,Bvar2,'--g');

% ssss=[ll1:0.001:Ld];
% Bvar3=multip./(b2+(ll1-ssss).*(b2-rmax)/(Ld-ll1));
% hh4=plot(ssss,Bvar3,'--c');

legend([hh1,hh3,hh2],'Designed variable bend (CIEMAT)','Trapezium field profile (analytical)','Modelled field profile (MADX)', 'location','north');
ylim([0 3]);
set(gca,'fontsize',17)
box on
set(gcf,'color','w');
xlabel('dipole length [m]','FontSize',20)
ylabel('dipole field [T]','FontSize',20)
%% test 1, much shorter dipole
fid1 = fopen(['v67_GFR_field.table']);
L1 = textscan(fid1,'%f%f%f%f%f%f%f%f%f%f%f%f','Headerlines',8);
fclose(fid1);
%trapezium ciemat
figure('Position',[100 100 650 500]);
hold all;
Nd=90;
%l1 = 0.01;l2 = 0.011;l3 = 0.021;l4 = 0.023;l5 = 0.03;l6 = 0.032;l7 = 0.0381;l8 = 0.04811;l9 = 0.058125;
%OLD ciemat trap in madx

% l1 = 0.005;l2 = 0.008;l3 = 0.02;l4 = 0.02;l5 = 0.02;l6 = 0.03;l7 = 0.03;l8 = 0.03;l9 = 0.04;
% %l1 = 0.005;l2 = 0.0123;l3 = 0.022486;l4 = 0.0255;l5 = 0.03;l6 = 0.037;l7 = 0.043;l8 = 0.05+0.00714;l9 = 0.059+0.005;
% ang0=0.0012161;
% ang1=0.0019;
% ang2=0.00445;
% ang3=0.0041;
% ang4=0.0038;
% ang5=0.0053;
% ang6=0.0048;
% ang7=0.0043;
% ang8=0.00504;

% l1 = 0.01;l2 = 0.03;l3 = 0.03;l4 = 0.03;l5 = 0.03;l6 = 0.03;l7 = 0.03;l8 = 0.03;l9 = 0.03;
% %l1 = 0.005;l2 = 0.0123;l3 = 0.022486;l4 = 0.0255;l5 = 0.03;l6 = 0.037;l7 = 0.043;l8 = 0.05+0.00714;l9 = 0.059+0.005;
% ang0=0.0012161*2;
% ang1=0.00335*2;
% ang2=0.00275*2;
% ang3=0.00225*2;
% ang4=0.00195*2;
% ang5=0.00175*2;
% ang6=0.00155*2;
% ang7=0.0014*2;
% ang8=0.001235*2;
%
l1 = 0.005;l2 = 0.04;l3 = 0.04;l4 = 0.04;l5 = 0.04;l6 = 0.04;l7 = 0.04;l8 = 0.04;l9 = 0.005;
%l1 = 0.005;l2 = 0.0123;l3 = 0.022486;l4 = 0.0255;l5 = 0.03;l6 = 0.037;l7 = 0.043;l8 = 0.05+0.00714;l9 = 0.059+0.005;
ang0=0.024325/3.35/3/2;
ang1=0.0045*2;
ang2=0.0031*2;
ang3=0.0025*2;
ang4=0.002*2;
ang5=0.0017*2;
ang6=0.0015*2;
ang7=0.0013*2;
ang8=0.00015*2;

totallength=2*(l1+l2+l3+l4+l5+l6+l7+l8+l9)
totalangle=(2*pi/Nd)/2-(ang0+ang1+ang2+ang3+ang4+ang5+ang6+ang7+ang8)
[(ang0);(ang1);(ang2);(ang3);(ang4);(ang5);(ang6);(ang7);(ang8)]'
[(l1/ang0);(l2/ang1);(l3/ang2);(l4/ang3);(l5/ang4);(l6/ang5);(l7/ang6);(l8/ang7);(l9/ang8)]' %r22=multip/8.453629446843511;
r1=multip/(l1/ang0);
%
%r2=multip/(l9/ang8)]
%multip=2.86/0.2998;
%r1=multip/(l1/ang0);rrr2=multip/(l2/ang1);rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang3);rrr5=multip/(l5/ang4);rrr6=multip/(l6/ang5);rrr7=multip/(l7/ang6);rrr8=multip/(l8/ang7);%r22=multip/8.453629446843511;
%r2=multip/(l9/ang8);
%  plot([0 l1],[r1 r1],'-b','LineWidth',2);
%  plot([l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
%  plot([l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
%  plot([l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
%  hh1=plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
%  plot([0 -l1],[r1 r1],'-b','LineWidth',2);
%  plot(-[l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
%  plot(-[l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
%  plot(-[l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
%  hh1=plot(-[l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
%NEW ciemat trap in madx
%b2 = 5.5; b3 = 6.8; b4 = 7.9; b5 = 9; b6 = 10.5; b7 = 11.5; b8 = 14; b9=15.63;
%b2 = 5.5; b3 = 6.2; b4 = 7.2; b5 = 8.2; b6 = 10; b7 = 12; b8 = 14; b9=25;
%b2 = 5.2; b3 = 6.1; b4 = 7; b5 = 8.1; b6 =10; b7 = 11.5; b8 = 13.5; b9=20;
%b2 = 5; b3 = 5.8; b4 = 7; b5 = 8.2; b6 =10.2; b7 = 12; b8 = 14; b9=18;
%b2 = 7; b3 = 8; b4 = 9; b5 = 10; b6 = 11; b7 = 13;  b8 = 15; b9=24;
%b2 = 5; b3 = 6.5; b4 = 8.7; b5 =11.5; b6 = 14.7; b7 = 18.5; b8 = 23; b9=30;

%ciemat design
hh1=plot(L1{3}(1:400)/1000,-L1{5}(1:400),'r','LineWidth',2); hold all; plot(-L1{3}(1:400)/1000,-L1{5}(1:400),'r','LineWidth',2);

%analytical result
ll1=l1;
plot([0 ll1],[r1 r1],'--k')
rmax=l9/ang8; %rho=0.263
%rmax=15.6312; %rho=0.263
%rmax=18; %rho=0.263
ss=[ll1:0.001:totallength/2];
Bvar=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(totallength/2-ll1));
hh3=plot(ss,Bvar,'--k','LineWidth',2);
Bvar2=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(totallength/2-ll1));
plot(-ss,Bvar2,'--k','LineWidth',2);

%in madx
r1=multip/(l1/ang0);rrr2=multip/(l2/ang1);rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang3);rrr5=multip/(l5/ang4);rrr6=multip/(l6/ang5);rrr7=multip/(l7/ang6);rrr8=multip/(l8/ang7);%r22=multip/8.453629446843511;
r2=multip/(l9/ang8);
plot([0 l1],[r1 r1],'-b','LineWidth',2);
plot([l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
plot([l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
plot([l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
hh2=plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
plot(-[0 l1],[r1 r1],'-b','LineWidth',2);
plot(-[l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
plot(-[l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
plot(-[l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
plot(-[l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
plot(-[l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
plot(-[l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
plot(-[l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
hh2=plot(-[l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
%ll1=0.01;
%plot([0 ll1],[r1 r1],'-k')
%rmax=13.823133826496301; %rho=0.263
%rmax=15.6312; %rho=0.263
%rmax=18; %rho=0.263
% ss=[ll1:0.001:Ld];
% Bvar=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(Ld-ll1));
% hh3=plot(ss,Bvar,'-k','LineWidth',2);
% Bvar2=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(Ld-ll1));
% plot(-ss,Bvar2,'-k','LineWidth',2);

% sss=[0:0.001:Ld];
% rmax=15.6312; 
% Bvar2=multip./(rhmin+(-sss).*(rhmin-rmax)/(Ld));
% hh4=plot(sss,Bvar2,'--g');

% ssss=[ll1:0.001:Ld];
% Bvar3=multip./(b2+(ll1-ssss).*(b2-rmax)/(Ld-ll1));
% hh4=plot(ssss,Bvar3,'--c');

legend([hh1,hh3,hh2],'Designed variable bend (CIEMAT)','Trapezium field profile (analytical)','Modelled field profile (MADX)', 'location','north');
ylim([0 3]);
set(gca,'fontsize',17)
box on
set(gcf,'color','w');
xlabel('dipole length [m]','FontSize',20)
ylabel('dipole field [T]','FontSize',20)
%% test 2, shorter dipole step-like
fid1 = fopen(['v67_GFR_field.table']);
L1 = textscan(fid1,'%f%f%f%f%f%f%f%f%f%f%f%f','Headerlines',8);
fclose(fid1);
%trapezium ciemat
figure('Position',[100 100 650 500]);
hold all;
Nd=90;
%l1 = 0.01;l2 = 0.011;l3 = 0.021;l4 = 0.023;l5 = 0.03;l6 = 0.032;l7 = 0.0381;l8 = 0.04811;l9 = 0.058125;
%OLD ciemat trap in madx
l1 = 0.145;l9 = 0.1; %l9 = 0.25;
%l1 = 0.005;l2 = 0.0123;l3 = 0.022486;l4 = 0.0255;l5 = 0.03;l6 = 0.037;l7 = 0.043;l8 = 0.05+0.00714;l9 = 0.059+0.005;
ang0=0.035;
ang8=0.0001;
totallength=2*(l1+l9)
totalangle=(2*pi/Nd)/2-(ang0+ang8)
%[(ang0);(ang8)]'
[(l1/ang0);(l9/ang8)]' %r22=multip/8.453629446843511;
r1=multip/(l1/ang0);
%r2=multip/(l9/ang8)]
%multip=2.86/0.2998;
%r1=multip/(l1/ang0);rrr2=multip/(l2/ang1);rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang3);rrr5=multip/(l5/ang4);rrr6=multip/(l6/ang5);rrr7=multip/(l7/ang6);rrr8=multip/(l8/ang7);%r22=multip/8.453629446843511;
%r2=multip/(l9/ang8);
%  plot([0 l1],[r1 r1],'-b','LineWidth',2);
%  plot([l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
%  plot([l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
%  plot([l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
%  plot([l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
%  hh1=plot([l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
%  plot([0 -l1],[r1 r1],'-b','LineWidth',2);
%  plot(-[l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
%  plot(-[l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
%  plot(-[l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5 l1+l2+l3+l4+l5+l6],[rrr6 rrr6],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5+l6 l1+l2+l3+l4+l5+l6+l7],[rrr7 rrr7],'-b','LineWidth',2);
%  plot(-[l1+l2+l3+l4+l5+l6+l7 l1+l2+l3+l4+l5+l6+l7+l8],[rrr8 rrr8],'-b','LineWidth',2);
%  hh1=plot(-[l1+l2+l3+l4+l5+l6+l7+l8 l1+l2+l3+l4+l5+l6+l7+l8+l9],[r2 r2],'-b','LineWidth',2);
%NEW ciemat trap in madx
%b2 = 5.5; b3 = 6.8; b4 = 7.9; b5 = 9; b6 = 10.5; b7 = 11.5; b8 = 14; b9=15.63;
%b2 = 5.5; b3 = 6.2; b4 = 7.2; b5 = 8.2; b6 = 10; b7 = 12; b8 = 14; b9=25;
%b2 = 5.2; b3 = 6.1; b4 = 7; b5 = 8.1; b6 =10; b7 = 11.5; b8 = 13.5; b9=20;
%b2 = 5; b3 = 5.8; b4 = 7; b5 = 8.2; b6 =10.2; b7 = 12; b8 = 14; b9=18;
%b2 = 7; b3 = 8; b4 = 9; b5 = 10; b6 = 11; b7 = 13;  b8 = 15; b9=24;
%b2 = 5; b3 = 6.5; b4 = 8.7; b5 =11.5; b6 = 14.7; b7 = 18.5; b8 = 23; b9=30;

%ciemat design
hh1=plot(L1{3}(1:400)/1000,-L1{5}(1:400),'r','LineWidth',2); hold all; plot(-L1{3}(1:400)/1000,-L1{5}(1:400),'r','LineWidth',2);

%analytical result
ll1=l1;
plot([0 ll1],[r1 r1],'--k')
rmax=l9/ang8; %rho=0.263
%rmax=15.6312; %rho=0.263
%rmax=18; %rho=0.263
ss=[ll1:0.001:totallength/2];
Bvar=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(totallength/2-ll1));
hh3=plot(ss/2,Bvar,'--k','LineWidth',2);
Bvar2=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(totallength/2-ll1));
plot(-ss/2,Bvar2,'--k','LineWidth',2);

%in madx
r1=multip/(l1/ang0);rrr2=multip/(l2/ang1);rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang3);rrr5=multip/(l5/ang4);rrr6=multip/(l6/ang5);rrr7=multip/(l7/ang6);rrr8=multip/(l8/ang7);%r22=multip/8.453629446843511;
r2=multip/(l9/ang8);
plot([0 l1],[r1 r1],'-b','LineWidth',2);
hh2=plot([l1 l1+l9],[r2 r2],'-b','LineWidth',2);
plot(-[0 l1],[r1 r1],'-b','LineWidth',2);
hh2=plot(-[l1 l1+l9],[r2 r2],'-b','LineWidth',2);
%ll1=0.01;
%plot([0 ll1],[r1 r1],'-k')
%rmax=13.823133826496301; %rho=0.263
%rmax=15.6312; %rho=0.263
%rmax=18; %rho=0.263
% ss=[ll1:0.001:Ld];
% Bvar=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(Ld-ll1));
% hh3=plot(ss,Bvar,'-k','LineWidth',2);
% Bvar2=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(Ld-ll1));
% plot(-ss,Bvar2,'-k','LineWidth',2);

% sss=[0:0.001:Ld];
% rmax=15.6312; 
% Bvar2=multip./(rhmin+(-sss).*(rhmin-rmax)/(Ld));
% hh4=plot(sss,Bvar2,'--g');

% ssss=[ll1:0.001:Ld];
% Bvar3=multip./(b2+(ll1-ssss).*(b2-rmax)/(Ld-ll1));
% hh4=plot(ssss,Bvar3,'--c');

legend([hh1,hh3,hh2],'Designed variable bend (CIEMAT)','Trapezium field profile (analytical)','Modelled field profile (MADX)', 'location','north');
ylim([0 3]);
set(gca,'fontsize',17)
box on
set(gcf,'color','w');
xlabel('dipole length [m]','FontSize',20)
ylabel('dipole field [T]','FontSize',20)
%% less dipole pieces
%trapezium ciemat
figure;
hold all;
%OLD ciemat trap in madx
l1 = 0.010714;l2 = 0.0123+0.022486;l3 = 0.0255+0.03;l4 = 0.037+0.043;l5 = 0.05+0.059;
ang1 = 0.002606347383; ang2 =0.0074;
multip=2.86/0.2998;
r1=multip/4.111;rrr2=(multip/(0.0123/ang1)+multip/(0.022486/ang2))/3;rrr3=multip/(l3/ang2);rrr4=multip/(l4/ang2);rrr5=multip/(l5/ang2);%r22=multip/8.453629446843511;
r2=0.685;
plot([0 l1],[r1 r1],'-b','LineWidth',2);
plot([l1 l1+l2],[rrr2 rrr2],'-b','LineWidth',2);
plot([l1+l2 l1+l2+l3],[rrr3 rrr3],'-b','LineWidth',2);
plot([l1+l2+l3 l1+l2+l3+l4],[rrr4 rrr4],'-b','LineWidth',2);
plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[rrr5 rrr5],'-b','LineWidth',2);

%NEW ciemat trap in madx
%b2 = 5.5; b3 = 6.8; b4 = 7.9; b5 = 9; b6 = 10.5; b7 = 11.5; b8 = 14; b9=15.63;
%b2 = 5; b3 = 6.2; b4 = 7.2; b5 = 8.2; b6 = 10; b7 = 12; b8 = 15; b9=50;
b2 = 5.6; b3 = 7.8; b4 = 11.8; b5 = 18;
%b2 = 7; b3 = 8; b4 = 9; b5 = 10; b6 = 11; b7 = 13;  b8 = 15; b9=24;

r1=multip/4.111;bb2=multip/(b2);bb3=multip/(b3);bb4=multip/(b4);bb5=multip/(b5);%r22=multip/8.453629446843511;
%r2=multip/b9;
plot([0 l1],[r1 r1],'-r','LineWidth',2);
plot([l1 l1+l2],[bb2 bb2],'-r','LineWidth',2);
plot([l1+l2 l1+l2+l3],[bb3 bb3],'-r','LineWidth',2);
plot([l1+l2+l3 l1+l2+l3+l4],[bb4 bb4],'-r','LineWidth',2);
plot([l1+l2+l3+l4 l1+l2+l3+l4+l5],[bb5 bb5],'-r','LineWidth',2);

%analytical result
ll1=0.01;
plot([0 ll1],[r1 r1],'--k')
rmax=15.63;
ss=[ll1:0.001:Ld];
Bvar=multip./(rhmin+(ll1-ss).*(rhmin-rmax)/(Ld-ll1));
hh3=plot(ss,Bvar,'--k');

sss=[0:0.001:Ld];
Bvar2=multip./(rhmin+(-sss).*(rhmin-rmax)/(Ld));
hh4=plot(sss,Bvar2,'--g');

ssss=[ll1:0.001:Ld];
Bvar3=multip./(b2+(ll1-ssss).*(b2-rmax)/(Ld-ll1));
hh4=plot(ssss,Bvar3,'--c');

legend([hh1,hh2,hh3],'madx_{old}','madx_{new}','anal.','other');