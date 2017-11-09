clc;
close all;
A = imread('image.bmp');
imshow(A);
imhist(A);
I = im2double(A);
c = min(min(I));
d = max(max(I));
C = (d-c)/(d+c);            %S(O/P intensity) = C.(r^gamma) where r is the input intensity), C is calculated in this step
gamma = 1.5;                %selected gamma_correction factor
for i=1:948
    for j=1:1268
        new_i =C*(I(i,j).^(gamma));
        D(i,j) =  new_i;
    end
end
imshow(D);
