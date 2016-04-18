function [m,num] =mean(data,classes,output)
class=output(1,1);
feature=size(data,2);
sets=size(data,1);
m=zeros(classes,feature);
num=zeros(classes,feature);


for i=1:feature
    for j=1:sets
     class=output(j,1);
    num(class,i)= num(class,i)+1;
   m(class,i)=m(class,i)+data(j,i);
    end
end

         m= m./num;
     

end
    