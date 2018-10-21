I = imread('0.jpg');
imshow(I);
rect = getrect();
rectangle('Position',rect,'curvature',[1,1],'EdgeColor','r','LineWidth',2);
