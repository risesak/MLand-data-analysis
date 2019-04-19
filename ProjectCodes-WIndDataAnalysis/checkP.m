%Checks if P is a valid transition probability matrix

[n,m]=size(P);
sum1=zeros(n,1);
for i=1:n
    for j=1:n
     sum1(i)=sum1(i)+P(i,j);
    end
end
   

 