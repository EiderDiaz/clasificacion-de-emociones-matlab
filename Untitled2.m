img1=imread('shrek.jpg','jpg');
img2=imread('burro.jpg','jpg');

img1gray=rgb2gray(img1); %cambia de rgb a escala de grises
[Nx1,Ny1]=size(img1gray); %size arroja el tamaño de la funcion a evaluar

img2gray=rgb2gray(img2);
[Nx2,Ny2]=size(img2gray);

histo1([1,256])=zeros; %llena el array con zeros
histo2([1,256])=zeros; %llena el array con zeros

for i=1:Nx1
    for j=1:Ny1
        histo1(int16(img1gray(i,j)+1))= histo1(int16(img1gray(i,j)+1))+1;
    end
end

for i=1:Nx2
    for j=1:Ny2
        histo2(int16(img2gray(i,j)+1))= histo2(int16(img2gray(i,j)+1))+1;
    end
end

figure(1)
subplot(2,2,1); image(img1gray); colormap(gray(255));title('shrek');axis off;axis square;
subplot(2,2,2); image(img2gray); colormap(gray(255));title('burro');axis off;axis square;

subplot(2,2,3); bar(histo1);title('shrek')
subplot(2,2,4); bar(histo2);title('burro')
