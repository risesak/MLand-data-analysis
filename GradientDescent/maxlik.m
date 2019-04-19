%this code is an approach to solve mle by gradient descent technique,did
%not work out
theta=rand(18,1);
sigma=0.5;
alpha=0.001;
m=108;
J=zeros(100000,1);
for k=1:100000
    mat=theta;
    for i=1:18
        t21=-(y')*(x(:,i));
        t22=((x*theta)')*x(:,i);
        mat(i)=mat(i)-(alpha/(2*(sigma^2)*m))*(t21+t22);
    end
     l1=(y-x*theta)'*(y-x*theta);
      sigma=sigma-1/sigma+(1/(sigma^3))*(l1);
    theta=mat;
    l=(y-x*theta)'*(y-x*theta);
     J(k)=m*log(1/(((2*3.1416)^0.5)*sigma))-(1/(2*(sigma)^2))*l;
end