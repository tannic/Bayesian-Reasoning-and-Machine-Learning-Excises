clear all
load cliques

l = size(cl,2);
bicl = zeros(l,10);

for i=1:l
    c=cl{1,i};
    for j=1:size(c,2)
        bicl(i,c(j))=1;
    end
end

idx=[];

for i=1:l
    for j=1:l
        if i~=j
            t1=bicl(i,:);
            t2=bicl(j,:);
            t=t1.*t2;
            if isequal(t,t1) && sum(t1)>=sum(t2)
                idx(end+1)=i;
            end
        end
    end
end

bicl(idx,:)=[];
