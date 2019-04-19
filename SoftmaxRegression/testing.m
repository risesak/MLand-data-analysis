%This code checks accuracy simply by ratio of coorrectly claassified and
%total train/data points.

%accuracy on training data

X=train_wo_labels;
[m,n]=size(X);

Xtheta=X*transpose(theta);
expXtheta=exp(Xtheta);
expXtheta_T=transpose(expXtheta);
hypothesis=expXtheta_T./sum(expXtheta_T);

hypo_t=transpose(hypothesis);

[val, idx] = max(hypo_t, [], 2);

diff=train(:,202)-idx;

nzero=sum(diff(:)==0);
train_acc=nzero*100/5124


%accuracy on test data
X=test_wo_labels;
[m,n]=size(X);

Xtheta=X*transpose(theta);
expXtheta=exp(Xtheta);
expXtheta_T=transpose(expXtheta);
hypothesis=expXtheta_T./sum(expXtheta_T);

hypo_t=transpose(hypothesis);

[val, idx] = max(hypo_t, [], 2);

diff=test(:,202)-idx;

nzero=sum(diff(:)==0);
test_acc=nzero*100/5124


