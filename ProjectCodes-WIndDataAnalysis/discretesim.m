%simulate a discrete random variable
num_of_iter=100000;
array=zeros(num_of_iter,1);
for j=1:num_of_iter

v=rand;
P=[0.3,0.2,0.5];
s=0;

for i=1:3
   s=s+P(i);
   if v<s
       array(j)=i;
       break
   end
end

end

F=zeros(3,1);
for i=1:num_of_iter
    if array(i)==1
        F(1)=F(1)+1;
    elseif array(i)==2
        F(2)=F(2)+1;
    else
        F(3)=F(3)+1;
    end
end
 for i=1:3
        F(i)=F(i)/num_of_iter;     
 end
        



   