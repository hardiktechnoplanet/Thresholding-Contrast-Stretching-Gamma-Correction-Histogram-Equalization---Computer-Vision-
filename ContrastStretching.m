clc;
close all;
A = imread('image.bmp');
imshow(A);
figure;
CSval=stretchlim(A,[.05 0.95]);   %range of pixels for which we need to constrast stretching 
CSmin = CSval(1)*255;                     
CSmax = CSval(2)*255;             %contrast stretching will be applied to the pixels having intensity value >csmin and <csmax
disp(CSmin);
disp(CSmax);
for i=1:948
    for j=1:1268
        PI = A(i,j);
        if CSmin<PI<CSmax         %if the pixel intensity is <CSmin and >CSmax then code will enter this loop and contrast stretching (CS) is applied
            newPI = (PI-CSmin)*(255/CSmax);
        elseif PI >= 95           %if the pixel intensity is >=95 then no CS
            newPI = 255;
        else 
            newPI = 0;            
        end
        Q(i,j) =  newPI;
    end
end
imshow(Q);
