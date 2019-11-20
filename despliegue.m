% a = imread('peppers.png');
% figure(1)
% imshow(a) %% imagen real
% figure(2)
% b = rgb2gray(a); %%imagen en escala de grises
% imshow(b)
% figure(3)
% c = im2bw(b); %% imamgen binaria
% imshow(c)
% rojo = a;
% figure(4)
% rojo(:,:,1);
% rojo(:,:,2) = 0;
% rojo(:,:,3) = 0;
% imshow(rojo)
% 
% figure(5)
% verde = a;
% verde(:,:,1) = 0;
% verde(:,:,2);
% verde(:,:,3) = 0;
% imshow(verde)
% 
% figure(4)
% azul = a;
% azul(:,:,1) = 0;
% azul(:,:,2) = 0;
% azul(:,:,3);
% imshow(azul);
% 
% array = [a rojo; verde azul];
% figure(6)
% imshow(array)

%[a,b] = size(a) %para saber las dimensiones de un array

a = imread('peppers.png');
[x,y, z] = size(a);

horizontal = a;
vertical = a;
i = a;

for index = 1:x
    if index <= x/3
        horizontal(index,:,1);
        horizontal(index,:,2) = 0;
        horizontal(index,:,3) = 0;
    elseif index <= 2*x/3
        horizontal(index,:,1) = 0;
        horizontal(index,:,2);
        horizontal(index,:,3) = 0;
    else
        horizontal(index,:,1) = 0;
        horizontal(index,:,2) = 0;
        horizontal(index,:,3);
    end
end

for index = 1:y
    if index <= y/3
        vertical(:,index,1);
        vertical(:,index,2) = 0;
        vertical(:,index,3) = 0;
    elseif index <= 2*y/3
        vertical(:,index,1) = 0;
        vertical(:,index,2);
        vertical(:,index,3) = 0;
    else
        vertical(:,index,1) = 0;
        vertical(:,index,2) = 0;
        vertical(:,index,3);
    end
end


for index_y = 1: y
    for index_x = 1 : x
        if index_y <= y/3
            if index_x > x/4 && index_x < 3*x/4
                i(index_x,index_y,1);
                i(index_x,index_y,2) = 0;
                i(index_x,index_y,3) = 0;
            else
                i(index_x,index_y,1) = 0;
                i(index_x,index_y,2);
                i(index_x,index_y,3) = 0;
            end
        elseif index_y <= 2*y/3
            i(index_x,index_y,1) = 0;
            i(index_x,index_y,2);
            i(index_x,index_y,3) = 0;
        else
            if index_x > x/4 && index_x < 3*x/4
                i(index_x,index_y,1) = 0;
                i(index_x,index_y,2) = 0;
                i(index_x,index_y,3);
            else
                i(index_x,index_y,1) = 0;
                i(index_x,index_y,2);
                i(index_x,index_y,3) = 0;
            end
        end
    end
end

figure(1)
imshow(horizontal)
figure(2)
imshow(vertical)
figure(3)
imshow(i)