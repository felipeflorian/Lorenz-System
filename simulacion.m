clear all
b = [10; 28; 8/3];% Valores caoticos. [sigma;ro;beta]
x0 = [0; 1; 20]; %condicion inicial valores x,y,z
figure(1)
lorenz(b,x0,50,1)
