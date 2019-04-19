


load('Indian_pines_corrected.mat');
x=indian_pines_corrected;
data_m= reshape(x,size(x,1)*size(x,2),size(x,3)); %converts 3D data to 2D data with features along rows.

load('Indian_pines_gt.mat');
indian_pines_gt_m=reshape(indian_pines_gt,21025,1); %converted to a column vector
Data_m_with_labels=[data_m indian_pines_gt_m];%labels assigned to features by concatenation

sorted_data_with_labels=sortrows(Data_m_with_labels,201);
z=sorted_data_with_labels;
Znew = z(z(:,201)>0,:); %Remove data with labels zero

[m,n]=size(Znew);
train=zeros(0,0);
test=zeros(0,0);
j=1;k=1;
for i=1:m
    if(mod(i,2)==0)
        train(j,:)=Znew(i,:);j=j+1;%generates training data
    else 
         test(k,:)=Znew(i,:);k=k+1; %generates test data
    end
end

%Adding ones as first feature

[m,n]=size(train);
one1=ones(m,1);
train=[one1 train];
[m,n]=size(test);
one1=ones(m,1);
test=[one1 test];

%feature scaling
train_wo_labels=train(:,1:201);
test_wo_labels=test(:,1:201);

[m,n]=size(train_wo_labels);
for i=2:n
    train_wo_labels(:,i)=rescale(train_wo_labels(:,i));
end

[m,n]=size(test_wo_labels);
for i=2:n
    test_wo_labels(:,i)=rescale(test_wo_labels(:,i));
end

    

        
        