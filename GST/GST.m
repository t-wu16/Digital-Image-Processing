% 灰度变换函数
% 数据类型转换
% 图像反转
I = imread('person.jpg');
H = uint8(256-1-double(I));
subplot(221),imshow(I);
subplot(222),imshow(H);

% 对数变换
K = uint8(28*log(1 + double(I)));
subplot(223),imshow(K);

% 伽马变换
J = uint8(((double(K)/256).^2) * 256);
subplot(224),imshow(J);