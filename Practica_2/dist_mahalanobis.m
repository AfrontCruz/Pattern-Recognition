function [class] = dist_mahalanobis(matriz_clases, num_clases, num_repre, vector)
    b = matriz_clases';
    distancias = [];
    c = [];
    
    for class = 1:num_clases %%numero de clases
        for index = 1:num_clases*num_repre %%numero de clases*representantes
            if b(1, index, 1) == class;
            c = [c; b(2, index, 1) b(3, index, 1)];
            end
        end

        p = mean(c)
        c(:,1) = c(:,1)-p(1,1);
        c(:,2) = c(:,2)-p(1,2);

        c = 1/3*c'*c;

        s = vector - p;

        mahalanobis = s*inv(c)*s';
        
        distancias = [distancias; mahalanobis];

        c = [];
    end
    
    dist_min = min(distancias);
    class = find(dist_min==distancias);
end