% a = imread('peppers.png');
% figure(1)
% 
% b = rgb2gray(a); %%imagen en escala de grises
% 
% %%imshow(b) %% imagen real  
% %%imshow(a,b)
% 
% verde = a;
% verde(:,:,1) = 0;
% verde(:,:,2);
% verde(:,:,3) = 0;
% 
% rojo = a;
% rojo(:,:,1);
% rojo(:,:,2) = 0;
% rojo(:,:,3) = 0;
% 
% subimage(verde)
% subimage(rojo)

a = imread('peppers.png');
[x,y, z] = size(a);

horizontal = a;
vertical = a;
i = a;

for ix = 1:x/2
    for iy = 1:y/2
        a(ix,iy,1) = 0;
        a(ix,iy,2);
        a(ix,iy,3) = 0; 
    end
end

for ix = 1:x/2
    for iy = y/2:y
        a(ix,iy,1);
        a(ix,iy,2) = 0;
        a(ix,iy,3) = 0; 
    end
end
imshow(a)