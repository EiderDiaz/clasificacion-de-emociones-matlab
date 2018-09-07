img1=imread('shrek.jpg','jpg');
img2=imread('burro.jpg','jpg');

img1gray=rgb2gray(img1); %cambia de rgb a escala de grises
[Nx1,Ny1]=size(img1gray); %size arroja el tamaño de la funcion a evaluar


for i=1:Nx1
    for j=1:Ny1
        r=((i-Nx1/4)^2+(j-Nx1/2)^2)^0.5;
        if(r<=180)
            circulo(i,j)=1;
        else
            circulo(i,j)=0;
        end
      andL(i,j)=img1gray(i,j)*circulo(i,j);
      orL(i,j)=img1gray(i,j)+255*circulo(i,j);
      notL(i,j)=255-img1gray(i,j);
    end
end
figure(1)
subplot(2,3,1); image(img1gray); colormap(gray(255));title('shrek');axis off;axis square;
subplot(2,3,2); image(255*circulo); colormap(gray(255));title('Mascara circular');axis off;axis square;
subplot(2,3,4); image(andL); colormap(gray(255));title('AND');axis off;axis square;
subplot(2,3,5); image(orL); colormap(gray(255));title('OR');axis off;axis square;
subplot(2,3,6); image(notL); colormap(gray(255));title('NOT');axis off;axis square;
