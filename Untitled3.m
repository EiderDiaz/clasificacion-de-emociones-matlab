img2=imread('burro.jpg','jpg');
img2gray=rgb2gray(img2);
[Nx2,Ny2]=size(img2gray);

histo2([1,256])=zeros;
histoexp([1,256])=zeros; histogris([1,256])=zeros; histoclara([1,256])=zeros; histoobscura([1,256])=zeros; 


for i=1:Nx2
    for j=1:Ny2
         histo2(int16(img2gray(i,j)+1))= histo2(int16(img2gray(i,j)+1))+1;
    end
end

menor=1; mayor=256; band1=0;band2=0; % se inicializan dabnderas para burbuja
k=1;
while(band1==0)
    if(histo2(k)==0)
        menor=k+1;
    else band1=1;
    end
    k=k+1;
end

k=256;
while(band2==0)
    if(histo2(k)==0)
        mayor=k-1;
    else band2=1;
    end
    k=k-1;
end
for i=1:Nx2
    for j=1:
    