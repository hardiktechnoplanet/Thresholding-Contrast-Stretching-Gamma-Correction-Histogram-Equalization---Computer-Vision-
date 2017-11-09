clc;
clear all;
A = imread('image.bmp');
A_size = size(A);
mean_Intensity = mean(mean(A));  
for i = 1:948 
    for j = 1:1268
        if A(i,j) >= mean_Intensity
            B(i,j) = 1;
        else
            B(i,j) = 0;
        end
     end
end
imshow(B);