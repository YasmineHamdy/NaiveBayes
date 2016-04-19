training=importdata('training.txt');
tic;
output=training(:,11);
training=training(:,(2:10));
[m,n]=mean(training,7,output);
pro=n(:,1)./164;
%var=variance(m,n,training,output,7);
p=learning(training(1,:),m,var);
classes=zeros(size(training,1),1);

for i=1:size(training,1)
p=learning(training(i,:),m,var);
[cla,k]=Probability(p,pro);
classes(i,1)=cla(1,1);
end
runnning_time=toc;