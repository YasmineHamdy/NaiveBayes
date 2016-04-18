function class=Probability(p,pro)
class=0;
k=size(p,1);
l=size(p,2);
d=ones(1,l);
for i=1:l
    for j=1:(k-1)
   d(1,i)= d(1,i)*p(j,i);
    end
end
for i=1:size(pro,1)
    d(1,i)=d(1,i)*pro(i,1);
end
m=max(d);
class=find(d==m);
end