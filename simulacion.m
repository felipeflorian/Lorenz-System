clear all
b = [10; 28; 8/3];% Valores caoticos. [sigma;ro;beta]
x0 = [0; 1; 20]; %condicion inicial valores x,y,z
figure(1)
lorenz(b,x0,50,1)
% view([8,-16])
% %x1(2) = x1(2) - 10;
% figure(2)
% v2n1 = v2n + 10;
% lorenz(b,v2n1,50)
% title('Condición inicial más 10')
% view([8,-16])


% view([-7,14])
% v = VideoWriter('Variacion_beta.avi'); 
% v.FrameRate=20; 
% 
% open(v);
% % 
% for mu =0:0.1:10 
%     lorenz(betaVector,x0,50)
%     view([-7,14])
%     Title = strcat('mu = ',num2str(mu));
%     title(Title)
%     F = getframe(gcf);  
%     writeVideo(v,F); 
%     if mu < 10
%         cla reset
%     end
%     x0 = x0 + mu;
%  end
% % 
% close(v)
%title('Sistema de Lorenz')





