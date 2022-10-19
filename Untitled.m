clc
clear all
k=imread('15.jpg');
A=rgb2gray(k);
[r,c]=size(A);
for k=1:r
    for j=1:c
        f=A(k,j)
        if f<=127
            A(k,j)=0;
        else if f>127 && f<256
                A(k,j)=255;
            end
        end
    end
end
    figure,imshow(A);
            