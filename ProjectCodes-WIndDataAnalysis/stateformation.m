%this code takes in an input matrix and returns an output matrix with same
%dimensions but state instead of values as entries.
% data is the matrix with values of Generation and B is matrix with states.E
% is edge matrix.


[m,n]=size(data);
B=zeros(m,n);
E=[0,60,120,180,240,300,450,600,900,1200,1500,1800,2100,2400,2700,3000,3600,3900,4200,4500];
        
for i=1:m
    for j=1:n
        for k=1:18
        if (data(i,j)<E(k+1) && data(i,j)>=E(k))
            B(i,j)=k;
        end
        end
    end
end

        
        
        
            
          
