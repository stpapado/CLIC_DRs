% tmestef gia trapezio
clear;
% Nd=100;
% theta=2.*pi./Nd;
% rhmin=5.4;
% rho=0.328;
% Ld=0.58/2;
% el=(pi*(-1+rho)*rhmin-Ld*Nd*rho*log(rho))/((-1+rho)*(Ld*Nd-pi*rhmin));
En=2.86;
%Nd=100;
%theta=2.*pi./Nd;
%rhmin=4.111;
rhmin =4.111
Bf=En/(rhmin*0.2998)
%rho=0.41;%0.295;
%rho=0.27;Ld=0.58/2;el=0.036;
rho=0.2641;Ld=0.58/2;%el=0.036; 
Nd=90;
el=(pi*(-1+rho)*rhmin-Ld*Nd*rho*log(rho))/((-1+rho)*(Ld*Nd-pi*rhmin))
%el=0.0175

%rho=0.999;Ld=0.58/2;el=1; 
rhmin/rho
%el=(pi*(-1+rho)*rhmin-Ld*Nd*rho*log(rho))/((-1+rho)*(Ld*Nd-pi*rhmin));

lq=0.25;
ls=0.15;
la=0.21+lq/2+ls;
lb=0.03+lq;
lc=0.055+lq/2+ls/2;
[la lb lc]
% lq=0.2;
% ls=0.15;
% la=0.5;
% lb=0.3;
% lc=0.25;

l1minmax=[la,la];
l2minmax=[lb,lb];
l3minmax=[lc,lc];

%   l1minmax=[0.1,2];
%   l2minmax=[0.1,2];
%   l3minmax=[0.1,1];
   NStep=100;
%   n=1;
%   k=1;
%   stepem=1;
%   hh=1;
%  
 n=15*10;
 k=1;
 stepem=0.1;
 hh=10000;

 
%  n=15;
%  k=1;
%  stepem=1;
%  hh=1000;

 
%l1minmax=[input('Minimum l1 [m]: '),input('Maximum l1 [m]: ')];
%l2minmax=[input('Minimum l2 [m]: '),input('Maximum l2 [m]: ')];
%l3minmax=[input('Minimum l3 [m]: '),input('Maximum l3 [m]: ')];

    
l1vect=[l1minmax(1) (l1minmax(2)-l1minmax(1))/(NStep-1) l1minmax(2)]; % [l1initial l1step l1final]
l2vect=[l2minmax(1) (l2minmax(2)-l2minmax(1))/(NStep-1) l2minmax(2)]; % [l1initial l1step l1final]
l3vect=[l3minmax(1) (l3minmax(2)-l3minmax(1))/(NStep-1) l3minmax(2)]; % [l1initial l1step l1final]
  

L1=Ld./(1+1./el)
%L1/el
th=(L1.*(el.*(-1+rho)+rho.*log(rho)))./(el.*(-1+rho).*rhmin);
z=(L1.^2.*(el.^2.*(-1+rho)+rho.*log(rho)))./(el.^2.*(-1+rho).*rhmin);



if  l1vect(2)==0
    l1vect(2)=0.1;
    l2vect(2)=0.1;
    l3vect(2)=0.1;
end
    l1=l1vect(1):l1vect(2):l1vect(3);            
    l2=l2vect(1):l2vect(2):l2vect(3);            
    l3=l3vect(1):l3vect(2):l3vect(3);            

    ll1=repmat(repmat(l1,length(l2),1),length(l3),1);
    ll2=repmat(repmat(l2,length(l3),1)',length(l1),1);
    ll3=repmat(reshape(repmat(l3,length(l3),1),length(l1)*length(l2),1),1,length(l3));
    
hetamin=(L1.^2.*((-1+rho).*(3.*(1-3.*rho).*rho.^3-3.*el.*rho.^2.*(-1+rho.^2)+el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))-6.*rho.^4.*(el.*(-1+rho)+rho).*log(1./rho)))./(6.*el.^2.*(-1+rho).^3.*(2+rho+rho.^2).*rhmin);

betamin=L1./(sqrt(30).*sqrt((el.^2.*(-1+rho).^3.*(2+rho+rho.^2).*((-1+rho).*(3.*rho.^3.*(1+rho)-6.*el.*rho.^2.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))+6.*rho.^4.*(-2.*el.*(-1+rho)+rho).*log(1./rho)+6.*rho.^5.*log(1./rho).^2))./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho+3.*rho.^2)+45.*rho.^5.*(-44-3.*rho-6.*rho.^2+rho.^3)+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20-9.*rho+6.*rho.^2+3.*rho.^3)+90.*el.*rho.^4.*(8-13.*rho+7.*rho.^2-3.*rho.^3+rho.^4))-120.*(-1+rho).*rho.^4.*(2.*el.^3.*(-1+rho).^3-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho)-6.*el.*rho.*(2-3.*rho+rho.^2)).*log(1./rho)+180.*(-2+rho).*rho.^5.*(el.*(-1+rho)+rho).^2.*log(1./rho).^2)));

cq=3.84*10.^(-13);
gamma=5597;
J=1;
G=cq.*gamma.^2/J;

emmin=(G.*L1.^3.*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(1./rho).*(-2.*el.*(-1+rho)+rho+rho.*log(1./rho))))./(6.*sqrt(30).*el.^3.*(-1+rho).^3.*(1+rho).*rhmin.^3.*sqrt(((-1+rho).^3.*(2+rho+rho.^2).*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(1./rho).*(-2.*el.*(-1+rho)+rho+rho.*log(1./rho))))./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))+60.*rho.^4.*log(1./rho).*(-2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))+3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(1./rho)))));

er=k:stepem:(k+stepem*(n-1));

hetaxcd1=(1./(30.*el.^2.*(-1+rho).^3.*(2+rho+rho.^2).*rhmin)).*L1.^2.*(5.*(-1+rho).*(3.*(1-3.*rho).*rho.^3-3.*el.*rho.^2.*(-1+rho.^2)+el.^2.*(-1+rho).^2.*(2+3.*rho.*(1+rho)))+30.*rho.^4.*(el.*(-1+rho)+rho).*log(rho)+sqrt(5).*sqrt((-1+er.^2).*((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))+60.*rho.^4.*log(rho).*(2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))+3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(rho)))));
hetaxcd2=(1./(30.*el.^2.*(-1+rho).^3.*(2+rho+rho.^2).*rhmin)).*L1.^2.*(5.*(-1+rho).*(3.*(1-3.*rho).*rho.^3-3.*el.*rho.^2.*(-1+rho.^2)+el.^2.*(-1+rho).^2.*(2+3.*rho.*(1+rho)))+30.*rho.^4.*(el.*(-1+rho)+rho).*log(rho)-sqrt(5).*sqrt((-1+er.^2).*((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))+60.*rho.^4.*log(rho).*(2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))+3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(rho)))));
    
step=abs(real((hetaxcd2-hetaxcd1)./(hh)));

    hcd=zeros(hh+1,n);
    for i=1:n
        if step(i)==0
            hcd(:,i)=repmat(real(hetaxcd1(i)),hh+1,1);
        elseif step(i)>0
            hcd(:,i)=(hetaxcd1(i):step(i):hetaxcd2(i))';   
        end
    end
    
    betaxcd1=zeros(hh+1,n);
    betaxcd2=zeros(hh+1,n);
   
for l=1:1:n    
betaxcd1(:,l)=(er(l).*L1.^2+sqrt((-L1.^4.*(-(-1+rho).^2.*(30.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho).*(-4.*er(l).^2+3.*(2+rho+rho.^2))+45.*rho.^5.*(2.*(22+rho+6.*rho.^2-5.*rho.^3)+er(l).^2.*(-44-3.*rho-6.*rho.^2+rho.^3))+90.*el.*(-1+rho).*rho.^4.*(-4.*(-2+rho+rho.^3)+er(l).^2.*(-8+5.*rho-2.*rho.^2+rho.^3))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(12.*(-2+rho+rho.^3)+er(l).^2.*(20-9.*rho+6.*rho.^2+3.*rho.^3))-el.^4.*(-1+rho).^4.*(-16.*er(l).^2.*(1+3.*rho+3.*rho.^2)+9.*(4+12.*rho+17.*rho.^2+10.*rho.^3+5.*rho.^4)))+60.*(-1+rho).*rho.^4.*(2.*er(l).^2.*el.^2.*(-1+rho).^2.*rho-12.*el.*(-1+rho).*rho.*(-2-er(l).^2.*(-2+rho)+rho+rho.^3)+3.*rho.*(4+10.*rho+rho.^3-3.*rho.^4-2.*er(l).^2.*(2+5.*rho))+el.^3.*(-1+rho).^3.*(-4.*er(l).^2+3.*(2+rho+rho.^2))).*log(rho)+180.*rho.^5.*(el.*(-1+rho)+rho).^2.*(-2-er(l).^2.*(-2+rho)+rho+rho.^3).*log(rho).^2)+60.*L1.^2.*el.^2.*(-1+rho).^3.*(2+rho+rho.^2).*rhmin.*((-1+rho).*(3.*(1-3.*rho).*rho.^3-3.*el.*rho.^2.*(-1+rho.^2)+el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))+6.*rho.^4.*(el.*(-1+rho)+rho).*log(rho)).*hcd(:,l)-180.*el.^4.*(-1+rho).^6.*(2+rho+rho.^2).^2.*rhmin.^2.*hcd(:,l).^2)./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho+3.*rho.^2)+45.*rho.^5.*(-44-3.*rho-6.*rho.^2+rho.^3)+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20-9.*rho+6.*rho.^2+3.*rho.^3)+90.*el.*rho.^4.*(8-13.*rho+7.*rho.^2-3.*rho.^3+rho.^4))+120.*(-1+rho).*rho.^4.*(2.*el.^3.*(-1+rho).^3-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho)-6.*el.*rho.*(2-3.*rho+rho.^2)).*log(rho)+180.*(-2+rho).*rho.^5.*(el.*(-1+rho)+rho).^2.*log(rho).^2)))./(sqrt(30).*L1.*el.*sqrt(((-1+rho).^3.*(2+rho+rho.^2).*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(rho).*(2.*el.*(-1+rho)-rho+rho.*log(rho))))./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))-60.*rho.^4.*log(rho).*(-2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))-3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(rho)))));
betaxcd2(:,l)=(er(l).*L1.^2-sqrt((-L1.^4.*(-(-1+rho).^2.*(30.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho).*(-4.*er(l).^2+3.*(2+rho+rho.^2))+45.*rho.^5.*(2.*(22+rho+6.*rho.^2-5.*rho.^3)+er(l).^2.*(-44-3.*rho-6.*rho.^2+rho.^3))+90.*el.*(-1+rho).*rho.^4.*(-4.*(-2+rho+rho.^3)+er(l).^2.*(-8+5.*rho-2.*rho.^2+rho.^3))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(12.*(-2+rho+rho.^3)+er(l).^2.*(20-9.*rho+6.*rho.^2+3.*rho.^3))-el.^4.*(-1+rho).^4.*(-16.*er(l).^2.*(1+3.*rho+3.*rho.^2)+9.*(4+12.*rho+17.*rho.^2+10.*rho.^3+5.*rho.^4)))+60.*(-1+rho).*rho.^4.*(2.*er(l).^2.*el.^2.*(-1+rho).^2.*rho-12.*el.*(-1+rho).*rho.*(-2-er(l).^2.*(-2+rho)+rho+rho.^3)+3.*rho.*(4+10.*rho+rho.^3-3.*rho.^4-2.*er(l).^2.*(2+5.*rho))+el.^3.*(-1+rho).^3.*(-4.*er(l).^2+3.*(2+rho+rho.^2))).*log(rho)+180.*rho.^5.*(el.*(-1+rho)+rho).^2.*(-2-er(l).^2.*(-2+rho)+rho+rho.^3).*log(rho).^2)+60.*L1.^2.*el.^2.*(-1+rho).^3.*(2+rho+rho.^2).*rhmin.*((-1+rho).*(3.*(1-3.*rho).*rho.^3-3.*el.*rho.^2.*(-1+rho.^2)+el.^2.*(-1+rho).^2.*(2+3.*rho+3.*rho.^2))+6.*rho.^4.*(el.*(-1+rho)+rho).*log(rho)).*hcd(:,l)-180.*el.^4.*(-1+rho).^6.*(2+rho+rho.^2).^2.*rhmin.^2.*hcd(:,l).^2)./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho+3.*rho.^2)+45.*rho.^5.*(-44-3.*rho-6.*rho.^2+rho.^3)+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20-9.*rho+6.*rho.^2+3.*rho.^3)+90.*el.*rho.^4.*(8-13.*rho+7.*rho.^2-3.*rho.^3+rho.^4))+120.*(-1+rho).*rho.^4.*(2.*el.^3.*(-1+rho).^3-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho)-6.*el.*rho.*(2-3.*rho+rho.^2)).*log(rho)+180.*(-2+rho).*rho.^5.*(el.*(-1+rho)+rho).^2.*log(rho).^2)))./(sqrt(30).*L1.*el.*sqrt(((-1+rho).^3.*(2+rho+rho.^2).*(-6.*el.*(-1+rho).^2.*rho.^2.*(1+rho)+3.*rho.^3.*(-1+rho.^2)+2.*el.^2.*(-1+rho).^3.*(2+3.*rho.*(1+rho))+6.*rho.^4.*log(rho).*(2.*el.*(-1+rho)-rho+rho.*log(rho))))./((-1+rho).^2.*(-120.*el.^3.*(-1+rho).^3.*rho.^2.*(1+rho)+16.*el.^4.*(-1+rho).^4.*(1+3.*rho.*(1+rho))+15.*el.^2.*(-1+rho).^2.*rho.^3.*(20+3.*(-1+rho).*rho.*(3+rho))+45.*rho.^5.*(-44+rho.*(-3+(-6+rho).*rho))+90.*el.*(-1+rho).*rho.^4.*(-8+rho.*(5+(-2+rho).*rho)))-60.*rho.^4.*log(rho).*(-2.*(-1+rho).*(2.*el.^3.*(-1+rho).^3-6.*el.*(-2+rho).*(-1+rho).*rho-el.^2.*(-1+rho).^2.*rho+3.*rho.*(2+5.*rho))-3.*(-2+rho).*rho.*(el.*(-1+rho)+rho).^2.*log(rho)))));
end

    l11=ll1(:);
    l22=ll2(:);
    l33=ll3(:);

    LL1=zeros(hh+1,length(er));
    LL2=zeros(hh+1,length(er));
    LL3=zeros(hh+1,length(er));
    
for i=1:length(l11)
    LL1(:,:,i)=repmat(l11(i),hh+1,n);
    LL2(:,:,i)=repmat(l22(i),hh+1,n);
    LL3(:,:,i)=repmat(l33(i),hh+1,n);
end

emitance=repmat(repmat(er.*emmin,hh+1,1),[1,1,length(l11)]);
   etacd=repmat(hcd,[1,1,length(l11)]);
   betacd1=repmat(betaxcd1,[1,1,length(l11)]);
   betacd2=repmat(betaxcd2,[1,1,length(l11)]);

Lcell=(LL1+LL2+LL3+Ld).*2;
    
    LL1=[LL1(:) ; LL1(:)]; 
    LL2=[LL2(:) ; LL2(:)]; 
    LL3=[LL3(:) ; LL3(:)]; 
    Lcell=[Lcell(:) ; Lcell(:)]; 

    betacd=[betacd1(:) ; betacd2(:)]; 
    etacd=[etacd(:) ; etacd(:)]; 
    
hetar=etacd./hetamin;

A=(2.*LL3.*(LL1.*th+z+hetamin.*hetar).*sqrt(betacd.^2.*th.^2-(-Ld.*th+z+hetamin.*hetar).^2));
B=LL2.*sqrt(betacd.^2.*th.^2+(-Ld.*th+z+hetamin.*hetar).^2);
C=(betacd.^2.*th.*(LL2.^2.*th+4.*LL3.*(LL1.*th+z+hetamin.*hetar))+(Ld.*th-z-hetamin.*hetar).*(-LL2.^2.*(z+hetamin.*hetar)+4.*LL1.*LL3.*(LL1.*th+z+hetamin.*hetar)+Ld.*(LL2.^2.*th+4.*LL3.*(LL1.*th+z+hetamin.*hetar))));
 
hs1=-(A)./(B+sqrt(C));
hs2=-(A)./(B-sqrt(C));
 
 hs=[real(hs1(:));real(hs2(:))];
 
    LL1=[LL1;LL1];
    LL2=[LL2;LL2];
    LL3=[LL3;LL3];
    Lcell=[Lcell;Lcell];
    etacd=[etacd;etacd];
    betacd=[betacd;betacd];
    emitance=[emitance(:);emitance(:); emitance(:);emitance(:)];
    DetFact=emitance./emmin;

    clear('l1','ll1','l11','l2','ll2','l22','l3','ll3','l33','hs1','hs2');
    
f1=LL2.*(etacd+LL1.*th+z)./(-hs+etacd+LL1.*th+LL2.*th+z);
f2=-LL2.*hs./(-hs+etacd+LL1.*th+z);


betaycd=sqrt((((Ld+LL1).*(f2+LL2)+f1.*(f2+Ld+LL1+LL2)).*(f1.*f2.*(Ld+LL1+LL2)+f1.*(f2+Ld+LL1+LL2).*LL3+(Ld+LL1).*(LL2.*LL3+f2.*(LL2+LL3))))./(-(f1+f2+LL2).*(f2.*(f1+LL2)+(f1+f2+LL2).*LL3)));
betar=betacd./betamin;

cosy=(((f2+LL2).*(LL1+Ld)+f1.*(LL1+LL2+f2+Ld)).*(f2.*(f1+LL2)+(f1+f2+LL2).*LL3)+(f1+f2+LL2).*(f1.*f2.*(Ld+LL1+LL2)+f1.*LL3.*(f2+Ld+LL1+LL2)+(Ld+LL1).*(LL2.*LL3+f2.*(LL2+LL3))))./(f1.^2.*f2.^2);
cosx=((f2.*(2.*(Ld+LL1).*(f2-LL2).*LL2+f1.^2.*(f2-2.*(Ld+LL1+LL2))-2.*f1.*(f2.*(Ld+LL1+LL2)-LL2.*(2.*(Ld+LL1)+LL2)))-2.*(-(Ld+LL1).*(f2-LL2)+f1.*(f2-Ld-LL1-LL2)).*(f1+f2-LL2).*LL3))./(f1.^2.*f2.^2);


sinx=(2.*(-(Ld+LL1).*(f2-LL2)+f1.*(f2-Ld-LL1-LL2)).*(-(Ld+LL1).*(-LL2.*LL3+f2.*(LL2+LL3))+f1.*(-(Ld+LL1+LL2).*LL3+f2.*(Ld+LL1+LL2+LL3))))./(f1.^2.*f2.^2.*betacd);
siny=(2.*((Ld+LL1).*(f2+LL2)+f1.*(f2+Ld+LL1+LL2)).*(f1.*f2.*(Ld+LL1+LL2)+f1.*(f2+Ld+LL1+LL2).*LL3+(Ld+LL1).*(LL2.*LL3+f2.*(LL2+LL3))))./(f1.^2.*f2.^2.*betaycd);



% Beta functions at each quadrupole for chromaticity calculations    
    bqf=((LL1+Ld).^2./betacd)+betacd;
    bqyf=((LL1+Ld).^2./betaycd)+betaycd;          
    bqd=((LL2.*(LL1+Ld)-f1.*(LL1+LL2+Ld)).^2+(f1-LL2).^2.*betacd.^2)./(f1.^2.*betacd);
    bqyd=((LL2.*(LL1+Ld)+f1.*(LL1+LL2+Ld)).^2+(f1+LL2).^2.*betaycd.^2)./(f1.^2.*betaycd);

    %bqd=((LL2.*(2.*LL1+(2.*Ld))-f1.*(2.*LL1+2*LL2+(2.*Ld))).^2+4*(f1-LL2).^2.*betacd.^2)./(4*f1.^2.*betacd);
    %bqyd=(LL2+(LL1.*(f1+LL2)./f1)+((f1+LL2)*(2.*Ld)./(2.*f1)).^2)./betaycd+(((f1+LL2).^2.*betaycd)./f1.^2);
      
    etaqf=etacd+LL1.*th+z;
    detaqf=(-2.*etacd+(f1-2.*LL1).*th-2.*z)./f1;
    
    %etaqd=(Ld*(4.*f1.*(LL1+LL2)+3*f1*Ld-LL2.*(4*LL1+3*Ld))+8*(f1-LL2).*etacd*r)./(8*f1*r);
    etaqd=(-LL2.*(etacd+LL1.*th)+f1.*(etacd+(LL1+LL2).*th)+(f1-LL2).*z)./f1;
    detaqd=-((f2-2.*LL2).*(etacd+LL1.*th)+f1.*(2.*etacd-f2.*th+2.*(LL1+LL2).*th)+(2.*f1+f2-2.*LL2).*z)./(f2.*f1);
        
    chromtotx=-2*(1/(4*pi))*(bqf./f1+bqd./f2);    
    chromtoty=-2*(1/(4*pi))*(bqyf.*(-1)./f1+bqyd.*(-1)./f2);

al=-((L1.*rho.*(-2.*L1.^2.*(-1+rho).*(el.*(-1+rho)+2.*rho)+(el.^2.*(L1.^2+2.*etacd.*rhmin).*(-1 + rho).^2+2.*el.*L1.^2.*(-1+rho).*rho+2.*L1.^2.*rho.*(1+rho)).*(log(L1./el)-log(L1./(el.*rho)))))./(2.*rhmin.^2.*(el-el.*rho).^3));
alpha=(1/L1).*((L1.^3+6.*L1.*rhmin.*etacd)./(6.*rhmin.^2))+(1/(Ld-L1)).*(al);
altme=-((L1.*rho.*(-2.*L1.^2.*(-1+rho).*(el.*(-1+rho)+2.*rho)+(el.^2.*(L1.^2+2.*hetamin.*rhmin).*(-1 + rho).^2+2.*el.*L1.^2.*(-1+rho).*rho+2.*L1.^2.*rho.*(1+rho)).*(log(L1./el)-log(L1./(el.*rho)))))./(2.*rhmin.^2.*(el-el.*rho).^3));
alphatme=(1/L1).*((L1.^3+6.*L1.*rhmin.*hetamin)./(6.*rhmin.^2))+(1/(Ld-L1)).*(altme);

Bqmax=1.1;
emit_injx=63*10^(-6)/gamma;
emit_injy=1.5*10^(-6)/gamma;
Rxqf=sqrt(6*bqf*emit_injx+((2.4/100)*etaqf).^2); %%(8.67)wiedemann
Rxqd=sqrt(6*bqd*emit_injx+((2.4/100)*etaqd).^2);
Ryqf=sqrt(6*bqyf*emit_injy);
Ryqd=sqrt(6*bqyd*emit_injy);


Bsmax=0.8;
gs1=-(2*chromtoty.*pi.*bqd+2*chromtotx.*pi.*bqyd)./(lq*bqf.*bqyd.*etaqf-lq*bqd.*bqyf.*etaqf);
gs2=(2*chromtoty.*pi.*bqf+2*chromtotx.*pi.*bqyf)./(lq*bqf.*bqyd.*etaqd-lq*bqd.*bqyf.*etaqd);


k1=1./(f1.*lq);
k2=1./(f2.*lq);                            
k1rigidity=(Bf.*rhmin)./(f1.*lq);
k2rigidity=(Bf.*rhmin)./(f2.*lq);

c5=abs(k1rigidity<=Bqmax./Rxqf)&abs(k2rigidity<=Bqmax./Rxqd);
c6=abs(k1rigidity<=(Bqmax./Ryqf))&abs(k2rigidity<=(Bqmax./Ryqd));

c7=abs(gs1)<=((2*Bsmax)./((Bf.*rhmin).*Rxqf.^2))&abs(gs2)<=((2*Bsmax)./((Bf.*rhmin).*Rxqd.^2));
c8=abs(gs1)<=((2*Bsmax)./((Bf.*rhmin).*Ryqf.^2))&abs(gs2)<=((2*Bsmax)./((Bf.*rhmin).*Ryqd.^2));

mm=abs(cosy)<1&abs(cosx)<1&f1<0&f2>0;
mm1=abs(cosy)<1&abs(cosx)<1&f1>0&f2<0;
mm2=abs(cosy)<1&abs(cosx)<1&f1<0&f2>0;

per1=mm1&abs(chromtoty)<2.5&abs(chromtotx)<2.5;
per2=mm2&abs(chromtoty)<2.5&abs(chromtotx)<2.5;
%%cosx=sqrt(2)/2;
%%sinx=sqrt(2)/2;

   mx1=(cosx>0&sinx>0)|(cosx<0&sinx>0);
   mx2=(cosx<0&sinx<0)|(cosx>0&sinx<0);
    
   my1=(cosy>0&siny>0)|(cosy<0&siny>0);
   my2=(cosy<0&siny<0)|(cosy>0&siny<0);
   
    mux=acosd(cosx).*mx1+(360-acosd(cosx)).*mx2;
    muy=acosd(cosy).*my1+(360-acosd(cosy)).*my2;
    
%   m3=(cosx>0&sinx>0);
%   m4=(cosx<0&sinx>0);
%   m5=(cosx<0&sinx<0);
%   m6=(cosx>0&sinx<0);
%   
%   m7=(cosy>0&siny>0);
%   m8=(cosy<0&siny>0);
%   m9=(cosy<0&siny<0);
%   mm1=(cosy>0&siny<0);
%   
%     muxs=(asind(sinx)).*m3+(90+asind(sinx)).*m4+(180-asind(sinx)).*m5+(360+asind(sinx)).*m6;
%     
%     muys=(asind(siny)).*m7+(90+asind(siny)).*m8+(180-asind(siny)).*m9+(360+asind(siny)).*mm1;
%
% A3=[f1(mm&f1>0&f2<0) f2(mm&f1>0&f2<0) mux(mm&f1>0&f2<0)./(360) muy(mm&f1>0&f2<0)./(360) DetFact(mm&f1>0&f2<0)];
% save('/afs/cern.ch/user/s/stpapado/testTME/data.tfs','-ascii','-tabs','A3')
%%
figure;
scatter((mux(mm1))/360,(muy(mm1))/360,25,DetFact(mm1),'filled','s');
%hold all;
%scatter(0.550908463390738,0.101144382629564,'filled','om');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.1:1]);
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);
%xlim([0.4 0.5]);
%caxis([2 15])
%title('trapezium');
%
figure;
scatter((mux(mm1))/360,(muy(mm1))/360,25,DetFact(mm1)*emmin*gamma*1e9,'filled','s');
hold all;
scatter(0.550908463390738,0.101144382629564,'filled','om');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_x [nm]','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
set(gca,'XTick',[0:0.1:1]);
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);
xlim([0.4 0.5]);
%caxis([2 15])
title('trapezium');
%%
% figure;
% scatter((mux(mm))/360,(muy(mm))/360,25,alpha(mm),'filled','s');
% xlabel('\mu_x [360\circ]','FontSize',17)
% ylabel('\mu_y [360\circ]','FontSize',17)
% clb=colorbar;
% colormap(jet);
% ylabel(clb,'\alpha_p','FontSize',19)
% set(gca,'FontSize',17)
% box on
% axis('tight')
% set(gcf,'color','w');
% %set(gca,'XTick',[0:0.1:1]);
% set(gca,'YTick',[0:0.2:1]);
% ylim([0 1]);


figure;
scatter((mux(mm2))/360,(muy(mm2))/360,25,chromtotx(mm2),'filled','s');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-1.5 -0.5]);
ylabel(clb,'\xi_x','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);


figure;
scatter((mux(mm2))/360,(muy(mm2))/360,25,chromtoty(mm2),'filled','s');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-1.5 -0.5]);
ylabel(clb,'\xi_y','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);
%%
figure;
scatter((mux(mm))/360,(muy(mm))/360,25,betaycd(mm),'filled','s');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap(jet);
caxis([0 20]);
ylabel(clb,'\beta_{ycd}[m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);
%%
per=mm&abs(chromtotx)<0.75&abs(chromtoty)<0.75&c5&c6&c7&c8;
er3=[LL1(per&f1>0&f2<0) LL2(per&f1>0&f2<0) LL3(per&f1>0&f2<0) abs(chromtotx(per&f1>0&f2<0)) abs(chromtoty(per&f1>0&f2<0)) f1(per&f1>0&f2<0) f2(per&f1>0&f2<0)];
save('/afs/cern.ch/user/s/stpapado/private/lattice_ring/trap/er3.tfs','-ascii','-tabs','er3')

%%
A3=[f1(mm&f1>0&f2<0) f2(mm&f1>0&f2<0) betacd(mm&f1>0&f2<0) etacd(mm&f1>0&f2<0) mux(mm&f1>0&f2<0)/2/pi muy(mm&f1>0&f2<0)/2/pi];
save('/afs/cern.ch/user/s/stpapado/testTME/da.tfs','-ascii','-tabs','A3')
%%
A3=[k1(mm&f1>0&f2<0) k2(mm&f1>0&f2<0) betacd(mm&f1>0&f2<0) etacd(mm&f1>0&f2<0)];
x = A3(:,1);
y = A3(:,2);
plot(x,y,'ok','MarkerSize',4)
%%
lq=0.2;
k1=1./(f1.*lq);
k2=1./(f2.*lq);                            

figure
scatter(k1(f1>0&f2<0),k2(f1>0&f2<0),20,DetFact(f1>0&f2<0),'filled','s');
xlabel('k1','FontSize',17)
ylabel('k2','FontSize',17)
clb= colorbar;
colormap(jet);
hold all;
scatter(k1(mm),k2(mm),25,DetFact(mm),'+k');
hold all;
scatter(k1(per),k2(per),25,DetFact(per),'+m');

ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
%%
fid = fopen(['/afs/cern.ch/user/s/stpapado/testTME/out2.tfs']);
L = textscan(fid,'%f%f%f%f','Headerlines',8);
fclose(fid);
X=L{1};
Y=L{2};
plot(X,Y,'oy','MarkerSize',2)
%%
%edw vgazw ta beta-eta me tin er
figure
scatter(etacd,betacd,20,DetFact,'filled','s');
xlabel('\eta_{cd} [m]','FontSize',17)
ylabel('\beta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%xlim([-0.006 0.006]);ylim([0 2]);
hold all;
scatter(etacd(mm),betacd(mm),25,DetFact(mm),'filled','ok');
hold all;
scatter(etacd(per),betacd(per),25,DetFact(per),'filled','dm');
%%

figure
scatter(etacd,betacd,20,DetFact,'filled','s');
xlabel('\eta_{cd} [m]','FontSize',17)
ylabel('\beta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%xlim([-0.006 0.006]);ylim([0 2]);
hold all;
scatter(etacd(mm1),betacd(mm1),25,DetFact(mm1),'filled','ok');
scatter(etacd(mm2),betacd(mm2),25,DetFact(mm2),'filled','ok');
hold all;
scatter(etacd(per1),betacd(per1),25,DetFact(per1),'filled','dm');
scatter(etacd(per2),betacd(per2),25,DetFact(per2),'filled','dm');
%%
figure;
scatter(etacd,betacd,20,mux/360,'filled','o');
hold all;
scatter(etacd(mm1),betacd(mm1),20,(mux(mm1))/360,'ok');
scatter(etacd(mm2),betacd(mm2),20,(mux(mm2))/360,'ok');
xlabel('\eta_{cd} [m]','FontSize',17)
ylabel('\beta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\mu_x [2\pi]','FontSize',19)
%

figure;
scatter(etacd,betacd,20,muy/360,'filled','o');
hold all;
scatter(etacd(mm1),betacd(mm1),20,(muy(mm1))/360,'ok');
scatter(etacd(mm2),betacd(mm2),20,(muy(mm2))/360,'ok');
xlabel('\eta_{cd} [m]','FontSize',17)
ylabel('\beta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\mu_y [2\pi]','FontSize',19)
%%
lq=0.01;
k1=1./(f1.*lq);
k2=1./(f2.*lq);
figure;
scatter(etacd,betacd,20,k1,'filled','o');
hold all;
scatter(etacd(mm1),betacd(mm1),20,k1(mm1),'ok');
scatter(etacd(mm2),betacd(mm2),20,k1(mm2),'ok');
xlabel('\eta_{cd} [m]','FontSize',17)
ylabel('\beta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap(jet);
caxis([-20 20]);
ylabel(clb,'k_1 [m^{-2}]','FontSize',19)
%
figure;
scatter(etacd,betacd,20,k2,'filled','o');
hold all;
scatter(etacd(mm1),betacd(mm1),20,k2(mm1),'ok');
scatter(etacd(mm2),betacd(mm2),20,k2(mm2),'ok');
xlabel('\eta_{cd} [m]','FontSize',17)
ylabel('\beta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap(jet);
caxis([-20 20]);
ylabel(clb,'k_2 [m^{-2}]','FontSize',19)
%%
figure;
scatter((mux(mm2))/360,(muy(mm2))/360,25,k1(mm2),'filled','s');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
%caxis([-1.5 -0.5]);
ylabel(clb,'k_1 [m^{-2}]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);
figure;
scatter((mux(mm2))/360,(muy(mm2))/360,25,k2(mm2),'filled','s');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap((jet));
%caxis([-1.5 -0.5]);
ylabel(clb,'k_2 [m^{-2}]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);
%%
figure;
scatter((mux(mm2))/360,(muy(mm2))/360,25,betacd(mm2),'filled','s');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
%caxis([-1.5 -0.5]);
ylabel(clb,'\beta_{cd} [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);
figure;
scatter((mux(mm2))/360,(muy(mm2))/360,25,etacd(mm2),'filled','s');
xlabel('\mu_x [2\pi]','FontSize',17)
ylabel('\mu_y [2\pi]','FontSize',17)
clb=colorbar;
colormap((jet));
%caxis([-1.5 -0.5]);
ylabel(clb,'\eta_{cd} [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
set(gca,'YTick',[0:0.2:1]);
ylim([0 1]);
%%
figure;
scatter(etacd(mm2),betacd(mm2),25,(mux(mm2))/360,'filled','s');
ylabel('\beta_{cd} [m]','FontSize',17)
xlabel('\eta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
%caxis([-1.5 -0.5]);
ylabel(clb,'\mu_x [2\pi]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
%set(gca,'YTick',[0:0.2:1]);
%ylim([0 1]);
figure;
scatter(etacd(mm2),betacd(mm2),25,(muy(mm2))/360,'filled','s');
ylabel('\beta_{cd} [m]','FontSize',17)
xlabel('\eta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap((jet));
%caxis([-1.5 -0.5]);
ylabel(clb,'\mu_y [2\pi]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
%set(gca,'YTick',[0:0.2:1]);
%ylim([0 1]);
%%
figure;
scatter(etacd(mm2),betacd(mm2),25,k1(mm2),'filled','s');
ylabel('\beta_{cd} [m]','FontSize',17)
xlabel('\eta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
%caxis([-1.5 -0.5]);
ylabel(clb,'k_1','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
%set(gca,'YTick',[0:0.2:1]);
%ylim([0 1]);
figure;
scatter(etacd(mm2),betacd(mm2),25,k2(mm2),'filled','s');
ylabel('\beta_{cd} [m]','FontSize',17)
xlabel('\eta_{cd} [m]','FontSize',17)
clb=colorbar;
colormap((jet));
%caxis([-1.5 -0.5]);
ylabel(clb,'k_2','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%set(gca,'XTick',[0:0.2:1]);
%set(gca,'YTick',[0:0.2:1]);
%ylim([0 1]);
%%
%edw vgazw ta beta-eta me tin er
figure
scatter(etacd,betaycd,20,DetFact,'filled','s');
xlabel('\eta_{cd} [m]','FontSize',17)
ylabel('\beta_{ycd} [m]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
xlim([-0.0066 0.0066]);ylim([0 2]);
hold all;
scatter(etacd(mm),betaycd(mm),25,DetFact(mm),'filled','ok');
hold all;
scatter(etacd(per),betaycd(per),25,DetFact(per),'filled','dm');
%%
%edw vgazw ta f1-f2 me tin er
figure
scatter(f1(f1<0&f2>0),f2(f1<0&f2>0),15,DetFact(f1<0&f2>0),'filled','s');
xlabel('f_1 [m]','FontSize',17)
ylabel('f_2 [m]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');

hold all;
scatter(f1(mm2),f2(mm2),25,DetFact(mm2),'ok');
hold all;
scatter(f1(per2),f2(per2),25,DetFact(per2),'dm');
caxis([1.2 15.5])
%xlim([0.2 0.51]);ylim([-5.1 0]);
%xlim([-1.2 -0.19]);ylim([0.45 0.75]);
%%

%%
%edw vgazw ta f1-f2 me tin er
figure
scatter(f1(f1>-5&f1<0),f2(f1>-5&f1<0),15,DetFact(f1>-5&f1<0),'filled','s');
xlabel('f_1 [m]','FontSize',17)
ylabel('f_2 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')

%%
%edw vgazw ta f1-f2 me tin er
figure
scatter(f1(f1>0&f2>-10&f2<0),f2(f1>0&f2>-10&f2<0),20,DetFact(f1>0&f2>-10&f2<0),'filled','s');
xlabel('f_1 ','FontSize',17)
ylabel('f_2 ','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
hold all;
scatter(f1(mm1),f2(mm1),25,DetFact(mm1),'filled','ok');
scatter(f1(per1),f2(per1),25,DetFact(per1),'filled','om');
set(gcf,'color','w');
xlim([0.2 0.52]);ylim([-3.5 0]);
caxis([1.2 15.5])
%%
%edw vgazw ta f1-f2 me tin er
figure
lq=0.2;
k1=1./(f1.*lq);
k2=1./(f2.*lq);   
scatter(k1(f1>0&f2>-10&f2<0),k2(f1>0&f2>-10&f2<0),20,DetFact(f1>0&f2>-10&f2<0),'filled','s');
xlabel('k_1 ','FontSize',17)
ylabel('k_2 ','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
hold all;
scatter(k1(mm&f1>0&f2>-10&f2<0),k2(mm&f1>0&f2>-10&f2<0),25,DetFact(mm&f1>0&f2>-10&f2<0),'filled','ok');
scatter(k1(per&f1>0&f2>-10&f2<0),k2(per&f1>0&f2>-10&f2<0),25,DetFact(per&f1>0&f2>-10&f2<0),'filled','om');
set(gcf,'color','w');
xlim([5 20]);ylim([-40 0]);
caxis([2 15])
%%
%edw vgazw ta f1-f2 me tin er
figure
scatter(etacd./hetamin,betacd./betamin,20,DetFact,'filled','s');
xlabel('\eta_{r} ','FontSize',17)
ylabel('\beta_{r} ','FontSize',17)
clb=colorbar;
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
%%
%edw vgazw ta f1-f2 me tin er
figure
scatter(f1(f2>-5),f2(f2>-5),15,DetFact(f2>-5),'filled','s');
xlabel('f_1 [m]','FontSize',17)
ylabel('f_2 [m]','FontSize',17)
clb=colorbar;
caxis([1 5]);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
%%scatter3(LL1,LL2,LL3,25,abs(cosy),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
caxis([0 10]);
ylabel(clb,'|cos \phi_y|','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure
scatter(LL2(mm),LL3(mm),25,LL1(mm),'filled','s');
xlabel('s_2 [m]','FontSize',17)
ylabel('s_3 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'s_1 [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
%gia na vrethei se moires i gwnia mesw tou sunimitonou se sxesi me LL1,LL2,LL3
figure;
scatter3(LL1(mm),LL2(mm),LL3(mm),25,muy(mm),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'\phi_y [\circ]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
scatter(LL1(mm),LL2(mm),25,muy(mm),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'\phi_y [\circ]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
%gia to f1 se sxesi me LL1,LL2,LL3
figure;
scatter3(LL1(mm&f2<0&f1>0),LL2(mm&f2<0&f1>0),LL3(mm&f2<0&f1>0),25,f1(mm&f2<0&f1>0),'filled','s');
xlabel('s_1 [m]','FontSize',16)
ylabel('s_2 [m]','FontSize',16)
zlabel('s_3 [m]','FontSize',16)
title('\epsilon_r=1.2 for |\xi_x|<1.8, |\xi_y|<1.8','FontSize',16)
clb=colorbar;
colormap(flipud(jet));
ylabel(clb,'f_1 [m]','FontSize',16)

box on
axis('tight')

per=mm&abs(chromtoty)<1.6&abs(chromtotx)<1.6&c5&c6&c7&c8;
hold all;
scatter3(LL1(per&f2<0&f1>0),LL2(per&f2<0&f1>0),LL3(per&f2<0&f1>0),25,f1(per&f2<0&f1>0),'filled','om');

figure('units','position',[.1 .1 .5 .5])
set(gca,'FontSize',16)
%%

figure;
scatter3(LL1(mm&f2<0&f1>0),LL2(mm&f2<0&f1>0),LL3(mm&f2<0&f1>0),25,f2(mm&f2<0&f1>0),'filled','s');
xlabel('s_1 [m]','FontSize',16)
ylabel('s_2 [m]','FontSize',16)
zlabel('s_3 [m]','FontSize',16)
title('\epsilon_r=1.2 for |\xi_x|<1.8, |\xi_y|<1.8','FontSize',16)
clb=colorbar;
colormap(jet);
ylabel(clb,'f_2 [m]','FontSize',16)


box on
axis('tight')

per=mm&abs(chromtoty)<1.6&abs(chromtotx)<1.6&c5&c6&c7&c8;
hold all;
scatter3(LL1(per&f2<0&f1>0),LL2(per&f2<0&f1>0),LL3(per&f2<0&f1>0),25,f2(per&f2<0&f1>0),'filled','om');

figure('units','position',[.1 .1 .5 .5])
set(gca,'FontSize',16)
%%
%gia to f1 se sxesi me LL1,LL2,LL3
figure;
scatter3(LL1(mm&f2<0&f1>0),LL2(mm&f2<0&f1>0),LL3(mm&f2<0&f1>0),25,f2(mm&f2<0&f1>0),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;

ylabel(clb,'f_2 [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
hold all;
scatter3(LL1(per&f2<0&f1>0),LL2(per&f2<0&f1>0),LL3(per&f2<0&f1>0),25,f2(per&f2<0&f1>0),'filled','om');
%%
%to gradient gia to k1(rigidity) se sxesi me LL1,LL2,LL3
B=1.76543;
rhmin=5.4;
lq=0.1;
k1rigidity=B.*rhmin./(f1.*lq);
mm=abs(cosy)<1;
figure;
scatter3(LL1(mm),LL2(mm),LL3(mm),25,k1rigidity(mm),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
caxis([20 100]);
ylabel(clb,'g1 [T/m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
mm=abs(cosy)<1;
figure
scatter(LL1(mm),LL2(mm),25,f1(mm),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
ylabel(clb,'f_1 [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')

%%
%gia to f2 se sxesi me LL1,LL2,LL3
figure;
scatter3(LL1(mm&f1<0&f2>0),LL2(mm&f1<0&f2>0),LL3(mm&f1<0&f2>0),25,f2(mm&f1<0&f2>0),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
ylabel(clb,'f_2 [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
%to gradient gia to strength k2 se sxesi me LL1,LL2,LL3
B=1.76543;
rhmin=5.4;
lq=0.2;
k2rigidity=-B.*rhmin./(f2.*lq);
mm=abs(cosy)<1;
figure;
scatter3(LL1(mm),LL2(mm),LL3(mm),25,k2rigidity(mm),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
caxis([15 100]);
ylabel(clb,'g2 [T/m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
mm=abs(cosy)<1;
figure
scatter(LL1(mm),LL2(mm),25,f2(mm),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'f_2 [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
mm=abs(cosy)<1;
figure;
scatter3(LL1(mm&f2<0&f1>0),LL2(mm&f2<0&f1>0),LL3(mm&f2<0&f1>0),25,Lcell(mm&f2<0&f1>0),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'Lcell [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
scatter3(LL1(mm1),LL2(mm1),LL3(mm1),25,chromtotx(mm1),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-3 -1.5]);
ylabel(clb,'\xi_x','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%%
figure
scatter(LL1(mm1),LL2(mm1),25,chromtotx(mm1),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-3 -1.5]);
ylabel(clb,'\xi_x','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');

%%
figure;
scatter3(LL1(mm),LL2(mm),LL3(mm),25,betacd(mm),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'\beta_{cd} [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');

%%

figure;
scatter3(LL1(mm1),LL2(mm1),LL3(mm),25,etacd(mm1),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'\eta_{cd}','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');

%%
figure;
scatter3(LL1(mm1),LL2(mm1),LL3(mm1),25,chromtoty(mm1),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
caxis([-3 -1.5]);
colormap(flipud(jet));
ylabel(clb,'\xi_y','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%%
figure
scatter(LL1(mm1),LL2(mm1),25,chromtoty(mm1),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-3 -1.5]);
ylabel(clb,'\xi_y','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');
%%
B=1.76543;
rhmin=5.4;
lq=0.2;

k1rigidity=(B.*rhmin)./(f1.*lq);

k2rigidity=(B.*rhmin)./(f2.*lq);

per=abs(cosy)<1&abs(k2rigidity)<100&abs(k1rigidity)<100&abs(chromtoty)<2&abs(chromtotx)<2&bb;
%%
figure;
scatter3(LL1(per),LL2(per),LL3(per),25,Lcell(per),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
ylabel(clb,'Lcell [m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure
scatter(LL1(per),LL2(per),25,LL3(per),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
clb=colorbar;
caxis([0 1]);
ylabel(clb,'s_3[m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
per=abs(cosy)<1&abs(k2rigidity)<100&abs(k1rigidity)<100&abs(chromtoty)<2&abs(chromtotx)<2&bb;
figure
scatter(LL1(per),LL2(per),25,Lcell(per),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
clb=colorbar;
caxis([3 10]);
ylabel(clb,'Lcell[m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
%%scatter3(LL1(mm),LL2(mm),LL3(mm),25,(180+acosd(cosy(mm)))/(360),'filled','s');
xlabel('s_1 [m]','FontSize',17)
ylabel('s_2 [m]','FontSize',17)
zlabel('s_3 [m]','FontSize',17)
clb=colorbar;
caxis([0 1]);
ylabel(clb,'\phi_y [360\circ]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
scatter((180+acosd(cosx(mm)))/(360),(180+acosd(cosy(mm)))/(360),25,etacd(mm),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
ylabel(clb,'\eta_{cd}[m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
scatter((180+acosd(cosx(mm)))/(360),(180+acosd(cosy(mm)))/(360),25,betacd(mm),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
ylabel(clb,'\beta_{cd}[m]','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
scatter((mux(mm&f2>0&f1<0))/360,(muy(mm&f2>0&f1<0))/360,25,chromtotx(mm&f2>0&f1<0),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-3 -0.5]);
ylabel(clb,'\xi_x','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
scatter((mux(mm&f1>0&f2<0))/360,(muy(mm&f1>0&f2<0))/360,25,chromtotx(mm&f1>0&f2<0),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-3 -0.5]);
ylabel(clb,'\xi_x','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%    
figure;
scatter((mux(mm&f2>0&f1<0))/360,(muy(mm&f2>0&f1<0))/360,25,chromtoty(mm&f2>0&f1<0),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-2 -0.5]);
ylabel(clb,'\xi_y','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%    
figure;
scatter((mux(mm&f1>0&f2<0))/360,(muy(mm&f1>0&f2<0))/360,25,chromtoty(mm&f1>0&f2<0),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
colormap(flipud(jet));
caxis([-3 -0.5]);
ylabel(clb,'\xi_y','FontSize',17)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
scatter((mux(mm&f2>0&f1<0))/360,(muy(mm&f2>0&f1<0))/360,25,DetFact(mm&f2>0&f1<0),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
caxis([1 10]);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
%%
figure;
scatter((mux(mm&f1>0&f2<0))/360,(muy(mm&f1>0&f2<0))/360,25,DetFact(mm&f1>0&f2<0),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
colormap(jet);
ylabel(clb,'\epsilon_r','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')

%%
figure;
scatter((mux(mm))/360,(muy(mm))/360,25,betaycd(mm),'filled','s');
xlabel('\phi_x [360\circ]','FontSize',17)
ylabel('\phi_y [360\circ]','FontSize',17)
clb=colorbar;
colormap(jet);
%caxis([0 20]);
ylabel(clb,'\beta_{ycd}[m]','FontSize',19)
set(gca,'FontSize',17)
box on
axis('tight')
set(gcf,'color','w');

% *************************************************************************
