%this code gives closed form solution of weight matrix
x=par80(:,1:18);
y=par80(:,19);

lambdai=0.01*ones(18,18);
theta=x'*x+lambdai;
inv=theta^-1;
w=inv*x'*y;

 l=(y-x*w)'*(y-x*w);

Jc=(1/(2*m))*(l+lambda*(w'*w));%error calculation
    

