% µã±ê¼Ç
I=imread('0.jpg');
imshow(I);hold on;
[x1 y1] = getpts();
plot(x1, y1, '.g', 'MarkerSize', 10);
[x2 y2] = ginput();
plot(x2, y2, '.r', 'MarkerSize', 10);