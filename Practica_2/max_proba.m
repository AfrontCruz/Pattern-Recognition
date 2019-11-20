function [class] = max_proba(matriz_clases, num_clases, num_repre, vector)
    b = matriz_clases';
    probas = [];
    c = [];
    
    for class = 1:num_clases %%numero de clases
        for index = 1:num_clases*num_repre %%numero de clases*representantes
            if b(1, index, 1) == class;
            c = [c; b(2, index, 1) b(3, index, 1)];
            end
        end

        p = mean(c);
        c(:,1) = c(:,1)-p(1,1);
        c(:,2) = c(:,2)-p(1,2);

        c = 1/3*c'*c;

        s = vector - p;
        
        prob = (1 / (2*pi)^(num_clases/2))*sqrt(det(c))*exp(-1/2*s*inv(c)*s');

        %%mahalanobis = s*inv(c)*s';
        
        probas = [probas; prob];

        c = [];
    end
    
    sumatoria = sum(probas);
    for class = 1:num_clases %%numero de clases
        aux = probas(class)/sumatoria*100;
        fprintf('La probabilidad de que pertenezca a la clase %i es: %f\n',class,aux)
    end
    
    
    proba_max = max(probas);
    class = find(proba_max==probas);
end