% N counts number of occurences of a particular state.
% P counts no. of transitions from i to j as p(i,j)
P=zeros(18,18);
N=zeros(18,1);
[m,n]=size(B);

 for i=1:(m-1)
     for j=1:n
         for k=1:18
             if (B(i,j)==k)
                 N(k)=N(k)+1;
                 for l=1:18
                     if (B(i+1,j)==l)
                         P(k,l)=P(k,l)+1;
                     end
                 end
             end
         end
     end
 end
 
 
 for i=1:18
     for j=1:18
         P(i,j)=P(i,j)/N(i);
     end
 end
    