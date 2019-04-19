 strt=1;%Starting State
 clk=1;
 num_of_iter=10^8;
 s=15;
 o=zeros(num_of_iter,1); 
% [m,n]=size(P);
while clk<num_of_iter+1
    
    if mod(clk,288)>0 && mod(clk,288)<133
    o(clk)=strt;
    strt=next1(strt,P1,s);
    clk=clk+1;
    elseif  mod(clk,288)>132 && mod(clk,288)<205
    o(clk)=strt;
    strt=next1(strt,P2,s);
    clk=clk+1;
    elseif mod(clk,288)>204 && mod(clk,288)<241
    o(clk)=strt;
    strt=next1(strt,P3,s);
    clk=clk+1;
    else
    o(clk)=strt;
    strt=next1(strt,P4,s);
    clk=clk+1;
    end
end



numbers=unique(o);       %list of elements
count=hist(o,numbers); 

% count=zeros(n,1);
% 
% for i=1:num_of_iter %counts instances of each state
%   for j=1:n
%       if o(i)==j
%           count(j)=count(j)+1;
%       end
%   end
% end
% 
% for i=1:n
%         count(i)=count(i)/num_of_iter;     
% end
%  
% Plim=mpower(P,1000);%This finds limiting probabilities
% 


%for limiting probability distribution

 
%  plim_f=zeros(z,1);
%  for i=1:z
%      for j=1:288
%          plim_f(i)=plim_f(i)+plim2(i+z(j-1));
%      end
%  end
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
 
 %it is limiting distibution matrix





function y=next1(x,P,n) %This function finds the next state when we are in xth state as per P martrix.
z=int16(x);
p=P(x,:);
r=rand;
s=0;
% y=19;
for i=1:n
    s=s+p(i);
    if r<=s
        y=i;
        break;
    end
end
 
% if y==19
%    y=1;
end






