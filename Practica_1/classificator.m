num_centroide = input('Introduce el numero de clases: ');
cont = [];
clases = [];
p_ale = 30;


for index = 1:num_centroide
    fprintf('Centroide %i\n',index)
    x = input('Introduce el x: ');
    y = input('Introduce el y: ');
    cont = [cont; [x , y]];

    var_x = input('Variacion en x: ');
    min_x = x - var_x/2;
    max_x = x + var_x/2;

    disp_x = min_x + (max_x - min_x)*rand(p_ale,1);

    var_y = input('Variacion en y: ');
    min_y = y - var_y/2;
    max_y = y + var_y/2;

    disp_y = min_y + (max_y - min_y)*rand(p_ale,1);

    color = input('Color: ', 's');
    board = strcat('o',color);

    clase = strcat('Clase', num2str(index));

    %plotX=plot(x,y,board ,'MarkerSize',10,'MarkerFaceColor',color );
    if index == 1
        hold on;
        grid on;
    end
    plotX=plot(disp_x(:,1),disp_y(:,1),board ,'MarkerSize',10,'MarkerFaceColor', color );
    clases = [clases ; strcat('Clase ', int2str(index))];

end

clases = [clases; 'Vector'];

while 1
    clc
    vectorx = input('Valor del vector en x: ');
    vectory = input('Valor del vector en y: ');
    vector = [vectorx, vectory];
    dist = [];
    for index = 1:num_centroide
        d = norm(vector - cont(index,:));
        dist = [dist ; d];
    end
    dist_min = min(dist);
    ind = find(dist_min==dist);
    
    fprintf('\nEl vector pertenece a la clase %i\n', ind)
    plotX=plot(vectorx,vectory,'sk' ,'MarkerSize',10,'MarkerFaceColor','k' );
    legend( clases(:,:));
    ans = input('\n\nVerificar otro vector?(1 si  -  0 no): ');
     if(ans==0)
	  break;
     end
    delete(plotX);
end



