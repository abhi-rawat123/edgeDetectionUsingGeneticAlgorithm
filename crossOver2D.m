%crossOver2D
function [child1,child2] = crossOver2D(parent1,parent2,dis_mat)

lb=2;
[m]=size(parent1);
ub=m(1)-1;
x1=lb+round((ub-lb)*rand());
y1=lb+round((ub-lb)*rand());
ub=m(2)-1;
x2=lb+round((ub-lb)*rand());
y2=lb+round((ub-lb)*rand());


if x1>x2
    t=x1;
    x1=x2;
    x2=t;
end
if y1>y2
    t=y1;
    y1=y2;
    y2=t;
end
k=5;
child1=parent1;
child2=parent2;
% a=parent1==child1;


% while (k>0)
k=5;
while(child1==parent1)
    k=k-1;
    if(k==0)
        break;
    end
for i=1:m(1)
    for j=1:m(2)
        
        if(i>=x1 && i<=x2 && j>=y1 && j<=y2)
            child1(i,j)=parent2(i,j);
            child2(i,j)=parent1(i,j);
        else
            child1(i,j)=parent1(i,j);
            child2(i,j)=parent2(i,j);
        end
    end
end
end

    c1 = costFunction1(parent1,dis_mat);
    c2 = costFunction1(parent2,dis_mat);
    c3 = costFunction1(child1,dis_mat);
    c4 = costFunction1(child2,dis_mat);
    p=0.7;
    r=rand();
    if (c1<c3 && c2<c4 && r<p)
        child1=parent1;
        child2=parent2;
    end
end