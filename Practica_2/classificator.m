num_centroide = input('Introduce el numero de clases: ');
cont = [];
clases = [];
matriz_class = [];

p_ale = input('Introduce el numero de representantes por clase: ');

for index = 1:num_centroide
    fprintf('Centroide %i\n',index)
    x = input('Introduce el x: ');
    y = input('Introduce el y: ');
    %%cont = [cont; [x , y]];

    var_x = input('Variacion en x: ');
    min_x = x - var_x/2;
    max_x = x + var_x/2;

    disp_x = min_x + (max_x - min_x)*rand(p_ale,1);

    var_y = input('Variacion en y: ');
    min_y = y - var_y/2;
    max_y = y + var_y/2;
    

    disp_y = min_y + (max_y - min_y)*rand(p_ale,1);
    
    for j = 1:p_ale
        matriz_class = [matriz_class ; index disp_x(j,1) disp_y(j,1)];
    end

    color = input('Color: ', 's');
    board = strcat('o',color);

    clase = strcat('Clase', num2str(index));
    
    mat = [disp_x(:,1) disp_y(:,1)];
    media = mean(mat);
    
    cont = [cont; media];

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
    fprintf('Por que metodo quiere resolver?\n (1) Euclidiana\n (2) Mahalanobis\n (3) Maxima probabilidad\n')
    var_1 = input('Respuesta: ') ;
    
    if var_1 == 1
        ind = dist_euclidiana(num_centroide, cont, vector);
    elseif var_1 == 2
        ind = dist_mahalanobis(matriz_class, num_centroide, p_ale ,vector);
    elseif var_1 == 3
        ind = max_proba(matriz_class, num_centroide, p_ale ,vector);
    end
    
    fprintf('\nEl vector pertenece a la clase %i\n', ind)
    plotX=plot(vectorx,vectory,'sk' ,'MarkerSize',10,'MarkerFaceColor','k' );
    legend( clases(:,:));
    ans = input('\n\nVerificar otro vector?(1 si  -  0 no): ');
     if(ans==0)
	  break;
     end
    delete(plotX);
end



