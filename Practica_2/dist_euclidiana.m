function [class] = dist_euclidiana(num_centroide, cont, vector)
    dist = [];
    for index = 1:num_centroide
        d = norm(vector - cont(index,:));
        dist = [dist ; d];
    end
    dist_min = min(dist);
    class = find(dist_min==dist);
end
