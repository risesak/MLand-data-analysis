
[m,n]=size(data(:,1));
P=data(:,1);
[p,q]=size(l);

outp1=zeros(1,q);
for i=1:q
    outp1(i)=LOLP_actualfunc(vals(i),m,P);
        
end

 hold on
plot(vals,outp)

plot(vals,outp1)

hold off

 function y=LOLP_actualfunc(bmax,m,P)
 
b=zeros(m,1);
d=1200;
count=0;
% bmax=5*10^14;
 for i=2:m
     b(i)=b(i-1)+(P(i-1)-d)*300*10^6;
     if b(i)>bmax
         b(i)= bmax;
     end
     if b(i)<0
         b(i)=0;
         count=count+1;
     end
     
 end
 y=count/m;
end
 


     
