puntos = [];

str_class = [];

p_ale = input('Introduce el numero de representantes por clase: ');

matriz_class = [];

imagen = imread('peppers.png');
i = imshow('peppers.png');
hold on;

[x, y,naan] = impixel;
rgb = [];

for i = 1:length(x)
    var_x = input('Variacion en x: ');
    min_x = x(i,1) - var_x/2;
    max_x = x(i,1) + var_x/2;

    disp_x = min_x + (max_x - min_x)*rand(p_ale,1);

    var_y = input('Variacion en y: ');
    min_y = y(i,1) - var_y/2;
    max_y = y(i,1) + var_y/2;

    disp_y = min_y + (max_y - min_y)*rand(p_ale,1);
    
    color = input('Color: ', 's');
    board = strcat('o',color);

    puntos = [ x(i,1) y(i,1) ];
    %p_x = [];
    %p_y = [];
    for j = 1:p_ale
        puntos = [puntos ; cast(disp_x(j),'uint32') cast(disp_y(j),'uint32')];
        rgb = [rgb ;i impixel(imagen, disp_x(j), disp_y(j))];
    end
    
    plotX=plot(puntos(:,1),puntos(:,2),board ,'MarkerSize',5,'MarkerFaceColor', color );
    str_class = [str_class ; strcat('Clase ', int2str(i))];
    legend(str_class);
end
 
while 1
    clc
    disp('Elige un vector: ')
    vector = impixel;
    fprintf('Por que metodo quiere resolver?\n (1) Euclidiana\n (2) Mahalanobis\n (3) Maxima probabilidad\n')
    var_1 = input('Respuesta: ') ;
    num_centroide = length(x);
    if var_1 == 1
        ind = dist_euclidiana_3_3(num_centroide, rgb, vector, p_ale);
    elseif var_1 == 2
        ind = dist_mahalanobis_3_3(rgb, num_centroide, p_ale, vector);
    elseif var_1 == 3
        ind = max_proba_3_3(rgb, num_centroide, p_ale, vector);
    end
    
    fprintf('\nEl vector pertenece a la clase %i\n', ind)
    ans = input('\n\nVerificar otro vector?(1 si  -  0 no): ');
     if(ans==0)
	  break;
     end
end
