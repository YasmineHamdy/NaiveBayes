function v=variance(mean,num,data,output,classes)
feature=size(data,2);
sets=size(data,1);
v=zeros(classes,feature);

for i=1:feature
    for j=1:sets
     rs=0;
     class=output(j,1);
     rs=data(j,i)-mean(class,i);
     rs=rs.^2;
     v(class,i)= v(class,i)+rs;
    end
end
v=v./num;
end
