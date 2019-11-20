function [class] = dist_euclidiana_3_3(num_centroide, matriz_class, vector, num_repre)
    dist = [];
    c = [];
    b = matriz_class';
    for class = 1:num_centroide
        for index = 1:num_centroide*num_repre %%numero de clases*representantes
            if b(1, index, 1, 1) == class;
            c = [c; b(2, index, 1) b(3, index, 1) b(4, index, 1)];
            end
        end
        media = mean(c);
        d = norm( vector - media );
        c = [];
        dist = [dist ; d];
    end
    
    dist_min = min(dist);
    class = find(dist_min==dist);
    
end
