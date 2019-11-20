i = imshow('peppers.png');

p_ale = 5;

matriz_class = [];

rgb = impixel;

[num_centroide, yy]= size(rgb);

for index = 1:num_centroide
    r = rgb(index,1);
    g = rgb(index,2);
    b = rgb(index,3);
    
    max_r = r - 10;
    min_r = r + 10;

    disp_r = min_r + (max_r - min_r)*rand(p_ale,1);

    min_g = g - 10;
    max_g = g + 10;
    
    disp_g = min_g + (max_g - min_g)*rand(p_ale,1);
    
    max_b = b + 10;
    min_b = b - 10;
    
    disp_b = min_b + (max_b - min_b)*rand(p_ale,1);
    
    for j = 1:p_ale
        matriz_class = [matriz_class ; index disp_r(j,1) disp_g(j,1) disp_b(j,1)];
    end

end


vector = impixel;

am = matriz_class

ind = dist_mahalanobis_3_3(matriz_class, num_centroide, 10, vector);

fprintf('\nEl vector pertenece a la clase %i\n', ind)