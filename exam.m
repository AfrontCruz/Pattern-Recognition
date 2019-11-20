a = imread('peppers.png');

verde = a;
rojo = a;
bw = rgb2gray(a); %%imagen en escala de grises

rojo(:,:,1);
rojo(:,:,2) = 0;
rojo(:,:,3) = 0;

verde(:,:,1) = 0;
verde(:,:,2);
verde(:,:,3) = 0;

