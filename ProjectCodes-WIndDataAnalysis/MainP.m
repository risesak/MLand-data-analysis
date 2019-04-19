%This code forms P matrix out of P1,P2,P3,P4  matrices
p=15; %number of states
Z=zeros(p,p);

P=zeros(0,0);

for i=1:132 %loop through each row group corresponding to P1
    Q=zeros(0,0);
    for k=1:288%loops for each column block
        if(k==i+1)%inserts P1 at required location else inserts zero matrix
        Q=[Q,P1];
        else Q=[Q,Z];
        end
    end
    P=[P;Q];
   
end

for i=133:204 % for row blocks corresponding to P2.
    Q=zeros(0,0);
    for k=1:288%iterate through columns
        if(k==i+1))%place at (i+1)th column block
        Q=[Q,P2];
        else Q=[Q,Z];
        end
    end
    P=[P;Q];
   
end

for i=205:240
    Q=zeros(0,0);
    for k=1:288
        if(k==i+1)
        Q=[Q,P3];
        else Q=[Q,Z];
        end
    end
    P=[P;Q];
   
end

for i=241:287
    Q=zeros(0,0);
    for k=1:288
        if(k==i+1)
        Q=[Q,P4];
        else Q=[Q,Z];
        end
    end
    P=[P;Q];
   
end
Q=zeros(0,0);

for k=1:288
    if(k==1)
        Q=[Q,P4];
    else
        Q=[Q,Z];
    end
end
P=[P;Q];


        
        
        

        
