I=imread('0.jpg');
[A,rect] = imcrop(I);
I2 = imcrop(I,rect);
imshow(I2);