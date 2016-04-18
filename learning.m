function p=learning(data,mean,variance)
sets=size(data,1);
feature=size(mean,2);
classes=size(mean,1);
p=zeros(sets,classes);
for i=1:feature
     for j=1:classes
         q=(data(1,feature)-mean(j,i)).^2;
         v=(variance(j,i)).^2;
         z=exp((-1*q)/(2*v));
         k=1/sqrt(2*pi);
         o=k/variance(j,i);
        p(i,j)=o*z;
    end
end
end