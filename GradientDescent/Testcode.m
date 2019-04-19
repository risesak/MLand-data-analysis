%This code tests the performance of algorithms
n=27;
lambda=0.01;
%as there are 27 test points
l=(yt-xt*w)'*(yt-xt*w);
Jt=(1/(2*n))*(l+lambda*(w'*w));%test error(mse)
