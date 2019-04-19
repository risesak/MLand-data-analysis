weight=rand(18,1);%initialise weight matrix
alpha=0.001;
m=108;
lambda=0.01;
J=zeros(100000,1);
for k=1:100000
    mat=weight;
    for i=1:18
        t1=alpha*lambda*weight(i)/m;
        t21=-(y')*(x(:,i));
        t22=((x*weight)')*x(:,i);
        mat(i)=mat(i)-alpha/m*(t21+t22)-t1;
    end
    weight=mat;
    
   l=(y-x*weight)'*(y-x*weight);
   
 J(k)=(1/(2*m))*(l+lambda*(weight'*weight));%store error after each iteration
   
end