% ��ֵ�˲�ȥ������
% fspecial ����Ԥ������˲�����
I = imread('person.jpg');
J = imnoise(I,'gaussian',0,0.005);
R=J(:,:,1);
T=I(:,:,1);
subplot(231);
imshow(T);
title('ԭʼͼ��');
subplot(232);
imshow(R);
title('�����˹������ͼ��');
K1=filter2(fspecial('average',3),R)/255; %ģ��ߴ�Ϊ3
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
