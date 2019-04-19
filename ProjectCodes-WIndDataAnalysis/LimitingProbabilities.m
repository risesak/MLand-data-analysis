 
numbers=unique(o);       %list of elements
count=hist(o,numbers);
[m,n]=size(P);
 k=transpose(P)-eye(m);
  for i=1:n
     k(m,i)=1; 
  end
  zero1=zeros(m,1);
  zero1(m,1)=1;
  plim2=k\zero1;
  [m,n]=size(plim2);
  

 pf=zeros(z,1);
 
 for i=1:m
     for k=1:z-1
         if(mod(i,z)==k)
             pf(k)=pf(k)+plim2(i);
         end
     end
     if mod(i,z)==0
             pf(z)=pf(z)+plim2(i);
         end
     
     
 end


psim=zeros(z,1);
 
 [m,n]=size(o);
 for i=1:m
     for j=1:z
         if o(i)==j
             psim(j)=psim(j)+1;
         end
     end
 end
 
 
 psim=psim/num_of_iter;
 
 pdiff=psim-pf;
 
 
 