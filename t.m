glass=importdata('glass.data.txt');
input=glass(:,2:10);
output=glass(:,11);
net=NaiveBayes.fit(input,output);
C1 = net.predict(input);
cMat1 = confusionmat(output,C1) ;