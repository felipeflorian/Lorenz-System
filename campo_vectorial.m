clear all
vals = [10; 28; 8/3];% Valores caoticos. [sigma;ro;beta]
x0 = [0; 1; 20]; %condicion inicial valores x,y,z
tf = 10;
beta = 8/3;
ro = 28;
sigma = 10;
[x,y,z] = meshgrid(-20:10:40);
DX = -sigma*x + sigma*y;
DY = ro*x - y ;
DZ = - beta*z;
quiver3(x,y,z,DX,DY,DZ,'Color','#7E2F8E')
hold on
%plot3(sqrt(beta*(ro-1)),sqrt(beta*(ro-1)),ro-1,'o','Color','black','MarkerSize',4,'MarkerFaceColor','black')
%plot3(-sqrt(beta*(ro-1)),-sqrt(beta*(ro-1)),ro-1,'o','Color','red','MarkerSize',4,'MarkerFaceColor','red')
plot3(0,0,0,'o','Color','green','MarkerSize',4,'MarkerFaceColor','green')
title('Campo Vectorial')


