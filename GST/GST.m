% �Ҷȱ任����
% ��������ת��
% ͼ��ת
I = imread('person.jpg');
H = uint8(256-1-double(I));
subplot(221),imshow(I);
subplot(222),imshow(H);

% �����任
K = uint8(28*log(1 + double(I)));
subplot(223),imshow(K);

% ٤��任
J = uint8(((double(K)/256).^2) * 256);
subplot(224),imshow(J);