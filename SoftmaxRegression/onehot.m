
labels=train(:,202);
[m,n]=size(labels);
onehot_train=zeros(0,0);
for i=1:m
    for j=1:16
        if labels(i)==j
         onehot_train(j,i)=1;
         disp(j);
         disp(i);
        end
    end
end

labels=test(:,202);
[m,n]=size(labels);
onehot_test=zeros(0,0);
for i=1:m
    for j=1:16
        if labels(i)==j
         onehot_test(j,i)=1;
         disp(j);
         disp(i);
        end
    end
end
