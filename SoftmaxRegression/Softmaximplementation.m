%this code is a bit slow(please be patient) but works with 70-75% accuracy for training data
%classification.
%this code is nothing but gradient descent on the softmax cost function
%derrived ny MLE.

X=train_wo_labels;
[m,n]=size(X);
theta=rand(16,201);
 num_of_iter=8000;
 alpha=0.1;
 J=zeros(num_of_iter,1);
 Y=onehot_train; %one hot encoded matrix
 for i=1:num_of_iter
Xtheta=X*transpose(theta);
expXtheta=exp(Xtheta);
expXtheta_T=transpose(expXtheta);
hypothesis=expXtheta_T./sum(expXtheta_T);%h(x) for all x is a part of this matrix.

M=-hypothesis+Y;
grad=M*X;
P=Y.*log(hypothesis);
J(i)=-sum(P(:))/m;

theta=theta+alpha*grad/m; 
end
 
 
 
 
 
 



