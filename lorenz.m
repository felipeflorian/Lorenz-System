function dx = lorenz(vals,x0,tf,st)

    %Intervalo de tiempo
    t = 0:0.001:tf; 

    %Valores Parametros
    sigma = vals(1,:);
    ro = vals(2,:);
    beta = vals(3,:);

    %Solucion del sistema de Lorenz por medion de ode45, con condicion inicial
    %x0
    [t,x] = ode45(@(t,x)[vals(1) * (x(2) - x(1)); x(1) * (vals(2) - x(3)) - x(2); x(1) * x(2) - vals(3) * x(3);], t, x0);

    %Grafica


    if nargin < 4
        plot3(x(:,1),x(:,2),x(:,3),'Color','#7E2F8E')
        hold on
        plot3(sqrt(beta*(ro-1)),sqrt(beta*(ro-1)),ro-1,'o','Color','black','MarkerSize',10,'MarkerFaceColor','black');
        plot3(-sqrt(beta*(ro-1)),-sqrt(beta*(ro-1)),ro-1,'o','Color','red','MarkerSize',10,'MarkerFaceColor','red');
        plot3(0,0,0,'o','Color','green','MarkerSize',10,'MarkerFaceColor','green')
    else
        plot3(x(:,1),x(:,2),x(:,3), 'w', 'LineWidth', 2 );
        hold on 
        %plot3(sqrt(beta*(ro-1)),sqrt(beta*(ro-1)),ro-1,'o','Color','yellow','MarkerSize',10,'MarkerFaceColor','yellow');
        %plot3(-sqrt(beta*(ro-1)),-sqrt(beta*(ro-1)),ro-1,'o','Color','red','MarkerSize',10,'MarkerFaceColor','red');
        %plot3(0,0,0,'o','Color','green','MarkerSize',10,'MarkerFaceColor','green')
        set(gca, 'color', 'k', 'xcolor', 'w', 'ycolor', 'w', 'zcolor', 'w');
        set(gcf, 'color', 'k');
        axis off

end