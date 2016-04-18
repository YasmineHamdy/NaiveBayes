image= importdata('image.txt');
data=image(:,1:3);
img=imread('apple.jpg');
output=image(:,4);
net=NaiveBayes.fit(data,output);
C1 = net.predict(data);
cMat1 = confusionmat(output,C1) ;
I2=img;
I3=img;
I4=img;
I5=img;
for i=1:size(I2,1)
   for j=1:size(I2,2)
color_ij = I2(i,j,1:3);
color=double(color_ij);
c=[color(:,:,1) color(:,:,2) color(:,:,3)];
 C = net.predict(c);
   if(C == 1)
   I2(i,j,1 ) = 255;
  I2(i,j,2 ) = 0;
  I2(i,j,3 ) = 0;
  I3(i,j,1 ) = 255;
  I3(i,j,2 ) = 0;
  I3(i,j,3 ) = 0;
   I4(i,j,1 ) =0;
  I4(i,j,2 ) = 0;
  I4(i,j,3 ) = 0;
  
   I5(i,j,1 ) =0;
  I5(i,j,2 ) = 0;
  I5(i,j,3 ) = 0;
   end
   if(C== 2)
   I2(i,j,1 ) = 0;
  I2(i,j,2 ) = 250;
  I2(i,j,3 ) = 0;
   I3(i,j,1 ) =0;
  I3(i,j,2 ) = 0;
  I3(i,j,3 ) = 0;
   
   I4(i,j,1 ) = 0;
  I4(i,j,2 ) = 250;
  I4(i,j,3 ) = 0;
   
   I5(i,j,1 ) =0;
  I5(i,j,2 ) = 0;
  I5(i,j,3 ) = 0;
   
   end
   if(C == 3)
   I2(i,j,1 ) = 255;
  I2(i,j,2 ) = 255;
  I2(i,j,3 ) = 255;
   I3(i,j,1 ) =0;
  I3(i,j,2 ) = 0;
  I3(i,j,3 ) = 0;
   I4(i,j,1 ) =0;
  I4(i,j,2 ) = 0;
  I4(i,j,3 ) = 0;
   
   I5(i,j,1 ) =255;
  I5(i,j,2 ) = 255;
  I5(i,j,3 ) = 255;
   
   end
   
   end
end


imshow(I3);

