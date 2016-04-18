glass=importdata('glass.data.txt');
input=glass(:,2:10);
output=glass(:,11);
[m,n]=mean(input,7,output);
var=variance(m,n,input,output,7);
p=learning(input(1,:),m,var);
classes=zeros(size(input,1),1);
for i=1:size(input,1)
    cla=0;
p=learning(input(i,:),m,var);
cla=Probability(p);
classes(i,1)=cla(1,1);
end

