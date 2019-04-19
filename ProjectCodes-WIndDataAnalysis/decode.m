



E=[0,60,120,180,240,300,450,600,900,1200,1500,1800,2100,3000,3300,4527];
values=dec(E,z);
[m,n]=size(o);
G=zeros(m,1);
for i=1:m
    for j=1:z
        if o(i)==j
            G(i)=values(j);
        end
    end
end

a=sum(G==30)/m;


function y=dec(E,n) 
y=zeros(n,1);
for i=1:n
    y(i)=(E(i)+E(i+1))/2;
end
end

