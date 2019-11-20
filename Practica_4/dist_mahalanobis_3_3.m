function [class] = dist_mahalanobis_3_3(matriz_clases, num_clases, num_repre, vector)
    distancias = [];
    c = [];
    b = matriz_clases';
    for class = 1:num_clases
        for index = 1:num_clases*num_repre %%numero de clases*representantes
            if b(1, index, 1, 1) == class;
            c = [c; b(2, index, 1) b(3, index, 1) b(4, index, 1)];
            end
        end
        c_antes = c;
        media = mean(c);
        for i = 1: num_repre
            c(i,:,:) = c(i,:,:) - media;
        end
        c = (1/num_repre)*c'*c;
        
        s = vector - media;
        
        mahalanobis = s*inv(c)*s';
        distancias = [distancias; mahalanobis];
        c = [];
    end

     
    dist_min = min(distancias);
    class = find(dist_min==distancias);
end