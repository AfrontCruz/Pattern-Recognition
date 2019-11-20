
%Wed 14 Aug 2019 03:15:42 PM CDT


% ejemplo con multiples respresentantes

c1x=randn(1,1000);
c1y=randn(1,1000);

c2x=randn(1,1000)+10;
c2y=randn(1,1000)+10;

c3x=(randn(1,1000)+2)*2;
c3y=(randn(1,1000)+8)*2;

c1=[c1x;c1y];
c2=[c2x;c2y];
c3=[c3x;c3y];

%Medias
media1=mean(c1,2);
media2=mean(c2,2);
media3=mean(c3,2);

while 1
     %clc
     %Vector v
     vx=input('Coordenada x de vx=');
     vy=input('Coordenada y de vx=');
     v=[vx;vy];

     %Distancias
     dist1=norm(v-media1);
     dist2=norm(v-media2);
     dist3=norm(v-media3);

     %Toma de decisión y pertenencia
     dist_tot=[dist1,dist2,dist3];
     minimo=min(dist_tot);
     index=find(dist_tot==minimo);

     %Output
     plotX=plot(v, 'ob','MarkerSize',10,'MarkerFaceColor','b' );    
     fprintf('El vector v pertenece a la clase %d\n',index)

     % Graficas
     plotX=plot(c1x(1,:),c1y(1,:),'ob','MarkerSize',10,'MarkerFaceColor','b' );
     hold on;
     grid on;
     plotX=plot(c2x(1,:),c2y(1,:),'or','MarkerSize',10,'MarkerFaceColor','r' );
     plotX=plot(c3x(1,:),c3y(1,:),'og','MarkerSize',10,'MarkerFaceColor','g' );
     plotX=plot(v(1,:),v(2,:),'sk','MarkerSize',10,'MarkerFaceColor','k'); 
     legend('Clase1','Clase2', 'Clase3','Vector')

     waitfor(plotX)
     ans = input('Verificar otro vector?');
     if(ans==0)
	  break;
     end
end

disp('Fin de programa');