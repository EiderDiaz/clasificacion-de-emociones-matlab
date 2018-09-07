i = 10;
img1=imread('shrek.jpg','jpg');
img2=imread('burro.jpg','jpg');
figure(1);
subplot(1,2,1); image(img1); colormap(gray(255));title('shrek');axis off;axis square;
subplot(1,2,2); image(img2); colormap(gray(255));title('burro');axis off;axis square;

maximo=max(max(img1));
