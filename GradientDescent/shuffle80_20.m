%data is data matrix
%par80 is 80% of shuffled data.
%par20 is remdataining 20% of shuffled data.
[m,n]=size(data);
r=randperm(m);
b=data;
for i=1:n
    b(r,i)=data(:,i);
end    
par80=b(1:108,:);
par20=b(109:135,:);
x=par80(:,1:18);
y=par80(:,19);
xt=par20(:,1:18);
yt=par20(:,19);