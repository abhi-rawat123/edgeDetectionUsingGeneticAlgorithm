%crossover2
%crossOverBTP
function [child1,child2] = crossOverBTP(p1,p2,Pc,dis_mat)
parent1=p1;
parent2=p2;
child1=parent1;
child2=parent2;
[m,n]= size(parent1);% size of parent1 matrix
lb=2;
ub1=m-1;

x1=lb+round((ub1-lb)*rand());
y1=lb+round((ub1-lb)*rand());

ub2=n-1; 
x2=lb+round((ub2-lb)*rand());
y2=lb+round((ub2-lb)*rand());

if(x1>x2)
    swap(x1,x2);
end

if(y1>y2)
    swap(y1,y2);
end

% iter=5;
% while iter>0
%     for i=x1:x2
%         for j=y1:y2
%             if parent1(i,j)~=parent2(i,j)
%                 break;
%             else
%                 continue;
%             end
% 
%         end
%     end
%     iter=iter-1;
% end

iter=5; % after 5 unsuccessful trails, the parents are replaced with two new mates and the process is repeated
while iter>=0
    for i=1:m
        for j=1:n

            if(i>=x1 && i<=x2 && j>=y1 && j<=y2)
                child1(i,j)=parent2(i,j);
                child2(i,j)=parent1(i,j);
            else
                child1(i,j)=parent1(i,j);
                child2(i,j)=parent2(i,j);
            end
        end
    end
    for i= x1:x2
        for j=y1:y2
            if parent1(i,j)~=parent2(i,j)
                break;
            else
                continue;
            end;
        end
    end
    iter= iter-1;
    [child1,child2] = crossOverBTP(parent1,parent2,Pc,dis_mat);
          
end;   
 
% R1=rand();
%     if(R1>pc)
%       child1=parent1;
%     end
%     R2=rand();
%     if(R2>pc)
%         child2=parent2;
%     end
% 
%     child1.fitness=ff(child1.gene);
%     child2.fitness=ff(child2.gene);

    c1 = costfunction(image,parent1,dis_mat);
    c2 = costfunction(image,parent2,dis_mat);
    c3 = costfunction(image,child1,dis_mat);
    c4 = costfunction(image,child2,dis_mat);
   
    r=rand();
    if (c1<c3 && c2<c4 && r<Pc)
        child1=parent1;
        child2=parent2;
    end
end