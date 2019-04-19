%this code calculates sigma and weight matrix using mle approach

x=par80(:,1:18);
y=par80(:,19);

theta=x'*x;
inv=theta^-1;
w=inv*x'*y; %weight matrix calculated

ssq=0; %sigma squared initialised

 l=(y-x*w)'*(y-x*w);

Jcm=(1/(2*m))*(l+(w'*w));%error calculation

for k=1:108    
    ssq=ssq+(y(k)-(x(k,:)*w))^2; %summing up squared errors
end

sigmaf=(ssq/m)^0.5; %final sigma value