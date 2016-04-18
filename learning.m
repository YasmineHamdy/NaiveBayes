function p=learning(data,mean,variance)
feature=size(mean,2);
classes=size(mean,1);
p=zeros(feature,classes);
for i=1:feature
     for j=1:classes
         q=(data(1,i)-mean(j,i)).^2;
         z=exp((-1*q)/(2*variance(j,i)));
         k=1/sqrt(2*pi*variance(j,i));
        p(i,j)=k*z;
    end
end
end