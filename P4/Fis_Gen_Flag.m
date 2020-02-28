X1 = 0:2:359;
X2 = -2.25:0.25:7.25;
X3 = 0:1:100;
ENg = trapezoidal(0,0,0,10,35,359,2);
Ng = trapezoidal(0,10,80,100,170,359,2);
Wg = trapezoidal(0,100,170,190,260,359,2);
Sg = trapezoidal(0,190,260,280,350,359,2);
ESg = trapezoidal(0,280,350,359,359,359,2);

ENf = trapezoidal(0,0,0,10,35,359,2);
Nf = trapezoidal(0,10,80,100,170,359,2);
Wf = trapezoidal(0,100,170,190,260,359,2);
Sf = trapezoidal(0,190,260,280,350,359,2);
ESf = trapezoidal(0,280,350,359,359,359,2);

Low = trapezoidal(0,0,0,10,35,100,1);
Med = trapezoidal(0,15,40,60,85,100,1);
High = trapezoidal(0,65,90,100,100,100,1);

CW = trapezoidal(-2.25,-2.25, -0.25, 0.25, 2.25,7.25,0.25);
DM = trapezoidal(-2.25,0.25,2.25,2.75,4.75,7.25,0.25);
ACW = trapezoidal(-2.25,2.75, 4.75, 5.25, 7.25,7.25,0.25);


preFlag = input('Enter flag position (0-359): ');
preGen = input('Enter generator position(0-359): ');

Flag= preFlag/2;
Gen = preGen/2;

%Minimos de ENg con las posiciones de la bandera 

min1 = min(ENg(Gen),ENf(Flag)); %low,dm
min2 = min(ENg(Gen),Nf(Flag));%low,cw
min3 = min(ENg(Gen),Wf(Flag));%high,acw
min4 = min(ENg(Gen),Sf(Flag));%low,acw
min5 = min(ENg(Gen),ESf(Flag));%low, acw

%Minimos de Ng con las posiciones de la bandera

min6 = min(Ng(Gen),ENf(Flag)); %med,acw
min7 = min(Ng(Gen),Nf(Flag)); %low,dm
min8 = min(Ng(Gen),Wf(Flag)); %low,cw
min9 = min(Ng(Gen),Sf(Flag));%high,cw
min10 = min(Ng(Gen),ESf(Flag));%med,acw

%Minimos de Wg con las posiciones de la bandera

min11 = min(Wg(Gen),ENf(Flag));%high,cw
min12 = min(Wg(Gen),Nf(Flag));%low,acw
min13 = min(Wg(Gen),Wf(Flag));%low,dm
min14 = min(Wg(Gen),Sf(Flag));%med,cw
min15 = min(Wg(Gen),ESf(Flag));%high,cw

%Minimos de Sg con las posiciones de la bandera

min16 = min(Sg(Gen),ENf(Flag));%med,cw
min17 = min(Sg(Gen),Nf(Flag));%high,cw
min18 = min(Sg(Gen),Wf(Flag));%med,acw
min19 = min(Sg(Gen),Sf(Flag));%low,dm
min20 = min(Sg(Gen),ESf(Flag));%med,cw


%Minimos de ESg con las posiciones de la bandera

min21 = min(ESg(Gen),ENf(Flag));%low,cw
min22 = min(ESg(Gen),Nf(Flag));%med,cw
min23 = min(ESg(Gen),Wf(Flag));%high,acw
min24 = min(ESg(Gen),Sf(Flag));%low,acw
min25 = min(ESg(Gen),ESf(Flag));%low,dm

%Para la velocidad
V1 = [min1,min2,min4,min5,min7,min8,min12,min13,min19,min20,min24,min25];
maxlow = max(V1);
V2 = [min6,min10,min14,min16,min18,min20,min22];
maxmed = max(V2);
V3 = [min3,min9,min11,min15,min17,min23];
maxhigh = max(V3);

cutlinelow = min(maxlow,Low);
cutlinemed = min(maxmed,Med);
cutlinehigh = min(maxhigh,High);

maxc1 = max(cutlinelow, cutlinemed);
maxc2 = max(cutlinelow, cutlinehigh);
maxc3 = max(cutlinemed, cutlinehigh);

maxa = max(maxc1, maxc2);
finalcutlinespeed = max(maxa, maxc3);

subplot(1,2,1)
speed = defuzz(X3,finalcutlinespeed, 'centroid');
h1 = line([speed speed],[0 1],'Color','k');
t1 = text(speed,0.1,' centroid','FontWeight','bold');
hold on
plot(X3,finalcutlinespeed,'*',X3,Low,'b',X3,Med,'y',X3,High,'r','Linewidth',1.5)
legend({'Centroid','Finalcut Speed','Low','Med','High'},'Location','northeast')

% %Para la rotacion
% R1 = [min1,min7,min13,min19,min25];
% maxDM = max(R1);
% R2 = [min3,min4,min6,min10,min12,min18,min23,min24];
% maxACW = max(R2);
% R3 = [min2,min5,min8,min9,min11,min14,min15,min16,min17,min20,min21,min22];
% maxCW = max(R3);
% 
% cutlineDM = min(maxDM, DM );
% cutlineACW = min(maxACW,ACW);
% cutlineCW = min(maxCW,CW);
% 
% maxcc1 = max(cutlinelow, cutlinemed);
% maxcc2 = max(cutlinelow, cutlinehigh);
% maxcc3 = max(cutlinemed, cutlinehigh);
% 
% maxc = max(maxcc1, maxcc2);
% maxd = max(maxc, maxcc3);
% 
% finalcutlinerotation= max(,FR);
% 
% rotation = defuzz(X2,finalcutrotation, 'centroid');
% subplot(1,2,2)
% h2 = line([rotation rotation],[0 1],'Color','k');
% t3 = text(rotation,0.1,' centroid','FontWeight','bold');
% plot(X2,finalcutlinespeed,'*',X2,CW,'r',X2,DM,X,ACW,'b','Linewidth',1.5)
% legend({'Defuzzy centroid','Finalcut Rotation','CW','DM','ACW'},'Location','northeast')



%     for f = 1:length(X1)
%           for g = 1:length(X1)
%         
%      
%         
%           end
%     end
% 
% 
% 


