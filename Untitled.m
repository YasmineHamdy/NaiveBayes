image= importdata('app.txt');
data=image(:,1:3);
img=imread('apple.jpg');
output=image(:,4);
%net=NaiveBayes.fit(data,output);
%C1 = net.predict(data);
%cMat1 = confusionmat(output,C1) ;
[m,n]=mean(data,3,output);
var=variance(m,n,data,output,3);
classes=zeros(size(data,1),1);
for i=1:size(data,1)
p=learning(data(i,:),m,var);
class=Probability(p);
classes(i,1)=class;
end

I2 = im2double(img);
 for i=1:size(I2,1)
   for j=1:size(I2,2)
color_ij = I2(i,j,1:3 );

p=learning(color_ij,m,var);
 class_ij = Probability(p);
   if(class_ij == 1)
   I2(i,j,1 ) = 255;
  I2(i,j,2 ) = 0;
  I2(i,j,3 ) = 0;
   end
   if(class_ij == 2)
   I2(i,j,1 ) = 0;
  I2(i,j,2 ) = 250;
  I2(i,j,3 ) =0 ;
   end
   if(class_ij == 3)
   I2(i,j,1 ) = 255;
  I2(i,j,2 ) = 255;
  I2(i,j,3 ) = 255;
   end
   
   end
 end
imshow(I2);