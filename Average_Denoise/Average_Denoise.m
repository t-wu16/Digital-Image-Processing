% �����˹����
% ������ƽ��������������

a = imread('galaxy.jpg');
subplot(231);
imshow(a);
title('ԭʼͼ��');
Inoise = imnoise(a,'gaussian',0,0.2);
subplot(232);
imshow(Inoise);
title('�����˹�������ͼ��');

Average_5 = Inoise;
for i=1:4
    Inoise_t = imnoise(a,'gaussian',0,0.02);
    Average_5 = Inoise_t * 0.5 + Average_5 * 0.5;
end
subplot(233);
imshow(Average_5);
title('5��ƽ�����ͼ��');

Average_10 = Inoise;
for i=1:9
    Inoise_t = imnoise(a,'gaussian',0,0.02);
    Average_10 = Inoise_t * 0.5 + Average_10 * 0.5; 
end
subplot(234);
imshow(Average_10);
title('10��ƽ�����ͼ��');

Average_100 = Inoise;
for i=1:99
    Inoise_t = imnoise(a,'gaussian',0,0.02);
    Average_100 = Inoise_t * 0.5 + Average_100 * 0.5;
end
subplot(235);
imshow(Average_100);
title('100��ƽ�����ͼ��');
