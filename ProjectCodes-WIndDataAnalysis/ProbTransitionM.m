%This code is for grouping data from 12am to 11 am and then estimating its
%transition probability matrix.
%COlumn 1 represents 2015 and so on.
%This code finds all 4 transition obability matrices directly from the
%data.
r=zeros(0,0);
z=15;

for k=1:31
    a=int16(1+(288*(k-1)));
    b=int16(132+(288*(k-1)));
    y=data(a:b,:);
    r=[r;y];
end
M=max(data,'all');

[m,n]=size(r);
B=zeros(m,n);
E=[0,60,120,180,240,300,450,600,900,1200,1500,1800,2100,3000,3300,4527];

for i=1:m
    for j=1:n
        for k=1:z
        if (r(i,j)<E(k+1) && r(i,j)>=E(k))
            B(i,j)=k;
        end
        end
    end
end

P1=zeros(z,z);
N1=zeros(z,1);
[m,n]=size(B);


 for i=1:(m-1)
     for j=1:n
         for k=1:z
             if (B(i,j)==k)
                  N1(k)=N1(k)+1;
                 for l=1:z
                     if (B(i+1,j)==l)
                         P1(k,l)=P1(k,l)+1;
                     end
                 end
             end
         end
     end
 end
 
 
 P1=P1./sum(P1,2);
 
 
 %Adding zeroes to make a 20*20 matrix.

%  for i=1:20
%      if(N(i)~=0)
%       for j=1:20
%          P1(i,j)=P1(i,j)./sum(;
%       end
%       end
%   end
 
 r=zeros(0,0);
 
 for k=1:31
     a=int16(133+(288*(k-1)));
     b=int16(204+(288*(k-1)));
     y=data(a:b,:);
     r=[r;y];
 end

 M=max(data,'all');
 
 [m,n]=size(r);
 B=zeros(m,n);
 for i=1:m
     for j=1:n
         for k=1:z
         if (r(i,j)<E(k+1) && r(i,j)>=E(k))
             B(i,j)=k;
         end
         end
     end
 end
 P2=zeros(z,z);
 N2=zeros(z,1);
 [m,n]=size(B);
  for i=1:(m-1)
      for j=1:n
          for k=1:z
              if (B(i,j)==k)
                   N2(k)=N2(k)+1;
                  for l=1:z
                      if (B(i+1,j)==l)
                          P2(k,l)=P2(k,l)+1;
                      end
                  end
              end
          end
      end
  end
  
  P2=P2./sum(P2,2);
 
  
  r=zeros(0,0);
 
 for k=1:31
     a=int16(205+(288*(k-1)));
     b=int16(240+(288*(k-1)));
     y=data(a:b,:);
     r=[r;y];
 end
 M=max(data,'all');
 
 [m,n]=size(r);
 B=zeros(m,n);
 for i=1:m
     for j=1:n
         for k=1:z
         if (r(i,j)<E(k+1) && r(i,j)>=E(k))
             B(i,j)=k;
         end
         end
     end
 end
 
 
 
 P3=zeros(z,z);
 N3=zeros(z,1);
 [m,n]=size(B);
 
 
  for i=1:(m-1)
      for j=1:n
          for k=1:z
              if (B(i,j)==k)
                   N3(k)=N3(k)+1;
                  for l=1:z
                      if (B(i+1,j)==l)
                          P3(k,l)=P3(k,l)+1;
                      end
                  end
              end
          end
      end
  end
  disp(B)
  P3=P3./sum(P3,2);
  r=zeros(0,0);
 
 for k=1:31
     a=int16(241+(288*(k-1)));
     b=int16(288+(288*(k-1)));
     y=data(a:b,:);
     r=[r;y];
 end
 M=max(data,'all');
 
 [m,n]=size(r);
 B=zeros(m,n);
 for i=1:m
     for j=1:n
         for k=1:z
         if (r(i,j)<E(k+1) && r(i,j)>=E(k))
             B(i,j)=k;
         end
         end
     end
 end
 
 
 
 P4=zeros(z,z);
 N4=zeros(z,1);
 [m,n]=size(B);
 
 
  for i=1:(m-1)
      for j=1:n
          for k=1:z
              if (B(i,j)==k)
                   N4(k)=N4(k)+1;
                  for l=1:z
                      if (B(i+1,j)==l)
                          P4(k,l)=P4(k,l)+1;
                      end
                  end
              end
          end
      end
  end
  P4=P4./sum(P4,2);
  
  
  
  
    
 
 

    