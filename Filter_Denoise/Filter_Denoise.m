% 均值滤波去除噪声
% fspecial 创建预定义的滤波算子
I = imread('person.jpg');
J = imnoise(I,'gaussian',0,0.005);
R=J(:,:,1);
T=I(:,:,1);
subplot(231);
imshow(T);
title('原始图像');
subplot(232);
imshow(R);
title('加入高斯噪声的图像');
K1=filter2(fspecial('average',3),R)/255; %模板尺寸为3
K2=filter2(fspecial('average',5),R)/255;
K3=filter2(fspecial('average',7),R)/255;
K4=filter2(fspecial('average',9),R)/255;
subplot(233);
imshow(K1);
subplot(234);
imshow(K2);
subplot(235);
imshow(K3);
subplot(236);
imshow(K4); 
