clc;
close all;
A = imread('image.bmp');
imshow(A);
figure;
imhist(A);figure;
I = im2double(A);

tt= uint8(zeros(948,1268));
q=zeros(256,1);
cdq=zeros(256,1);
pdq=zeros(256,1);
Lcdq=zeros(256,1);
newq=zeros(256,1);
for i=1:948
    for j=1:1268
        imin=A(i,j);
        q(imin+1) = q(imin+1)+1;
        pdq(imin+1) = q(imin+1)/(948*1268);
    end       
end
tot=0;
L=255;
for i=1:size(pdq)
    tot = tot+q(i);
    Lcdq(i)= tot;
    cdq(i)= Lcdq(i)/(948*1268);
    newq(i)=round(cdq(i)*L);
end
for i=1:948
    for j=1:1268
        tt(i,j)=newq(A(i,j)+1);
    end
end
figure;
imshow(tt);
figure;
imhist(tt);
