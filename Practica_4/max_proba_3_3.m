function [class] = max_proba_3_3(matriz_clases, num_clases, num_repre, vector)
    probas = [];
    c = [];
    b = matriz_clases';
    for class = 1:num_clases
        for index = 1:num_clases*num_repre %%numero de clases*representantes
            if b(1, index, 1, 1) == class;
            c = [c; b(2, index, 1) b(3, index, 1) b(4, index, 1)];
            end
        end
        %c_antes = c;
        media = mean(c);
        for i = 1: num_repre
            c(i,:,:) = c(i,:,:) - media;
        end
        c = (1/num_repre)*c'*c;
        
        s = vector - media;
        
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