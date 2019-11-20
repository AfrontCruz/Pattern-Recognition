%ma = [1 47 60 23; 1 54 52 93; 2 61 42 46; 2 70 8 100];

%ind = dist_mahalanobis_3_3(ma, 2, 2, [5 5 5]);
%ind = dist_mahalanobis_3_3(ma, 2, 2, [5 5 5]);
%ind = max_proba_3_3(ma, 2, 2, [5 5 5]);

% ma = [47 60 23; 54 52 93; 61 42 46; 70 8 100];
% %ma = [46 59 22; 53 51 92; 60 41 45; 69 7 99];
% v = [1 1 1];
% 
% [x,y] = size(ma)
% 
% for index=1:x
%     ma(index,:,:) = ma(index,:,:) - v;
% end
% 
% ma

% c = [ 10 9 7; 2 3 6 ]
% c = c'
% media = mean(c)
% c(1,:) = c(1,:) - media;
% c(2,:) = c(2,:) - media;
% c(3,:) = c(3,:) - media;
% c
% c'
% 
% mah = 1/3* c'*c
% c = [1 2 3; 4 5 6] 
% mean(c)
x = [];
y = [];
for i = 1:10
    x = [x,i*4.5];
end

for i = 1:10
    y = [y,2.1*i];
end

imagen = imread('peppers.png');

rgb = impixel(imagen, x, y);