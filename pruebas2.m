% clc,clear
% [X,Y] = meshgrid(-2:0.2:2);
% F = @(X,Y) 4*Y.^2 - 16;
% %[x,y] = ode45(F,[-2 2],2-1e-4);
% DY = F(1,Y);
% DX = DY*0+1;
% cla
% h1 = quiver(X,Y,DX,DY);
% h2 = streamline(X,Y,DX,DY,-2:2,1.9*ones(1,5));
% set(h2,'color','g')

syms  S C c t y
[T, A] = meshgrid(-10:0.5:10,-10:0.5:10);
S =  -9.8/L*sin(A);
dT = ones(size(S)); %equation
dyu = S./sqrt(dT.^2+S.^2);
dxu = dT./sqrt(dT.^2+S.^2);
quiver(T,Y,dxu,dyu)
xlabel ’t’, ylabel ’y’
title('Direction Field for dy/dt = (2*y - t)/(2*t - y)')
set(gca, 'XLim', [0 10], 'YLim', [0 10]);