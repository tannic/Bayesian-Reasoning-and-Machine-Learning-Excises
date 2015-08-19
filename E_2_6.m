clear all
load WikiAdjSmall

%Floyd's Algo
D=inf(size(A,1));
[x,y]=find(A);
for i=1:size(A,1)
    D(i,i)=0;
end
for i=1:size(x,1)
    D(x(i),y(i))=1;
end
l=size(A,1);
for k=1:l
    for i=1:l
        for j=1:l
            if D(i,j)>D(i,k)+D(k,j)
                D(i,j)=D(i,k)+D(k,j);
            end
        end
    end
end

D=D(~isinf(D));
D=D(D>0);
hist(D);
