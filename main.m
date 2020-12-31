function [gene] = main(dis_mat)

m= size(dis_mat);
populationSize=36;
threshold=0;
for k=1:populationSize
    flag=0;
    for i=1:m(1)
        for j=1:m(2)
            cand(i,j)=0;
            if(dis_mat(i,j)>0.0)
                flag=1;
            end
            if (dis_mat(i,j)<=threshold)
                candidate(i,j)=0;
                continue;
            end
            if(i==0||j==0)
            candidate(i,j)=dis_mat(i,j);
            continue;
            end
            candidate(i,j)=round(rand());
            
        end
    end
    
    
    if(flag==0)
        gene=cand;
        return;
    end
    population.chromosome(k).gene=candidate;
end
iterations=300;
globalcost=10000000;
globalgene=population.chromosome(1).gene;
costs= zeros(1,iterations);
t=1;
while t<=iterations
    for k=1:populationSize
        population.chromosome(k).cost=costFunction1(population.chromosome(k).gene,dis_mat);
    end
    [ sorted_cost ,indx ] = sort([population.chromosome(:).cost],'ascend');
    costs(t)= sorted_cost(1);
    t=t+1;
    if(sorted_cost(1)<globalcost)
        globalcost=sorted_cost(1);
        globalgene=population.chromosome(indx(1)).gene;
        if(globalcost==0)
            gene=globalgene;
            return;
        end
    end
    
    p1=population.chromosome(indx(1)).gene;
    p2=population.chromosome(indx(2)).gene;
    population.chromosome(1).gene=p1;
    population.chromosome(2).gene=p2;
    
    [parent1,parent2]=selection(population);
    
    if(sorted_cost(1)==0)
        gene=parent1;
        return;
    end
    for n=3:2:populationSize
        child1=parent1;
        child2=parent2;
        [child1,child2] = crossOver2D(parent1,parent2,dis_mat);
        
        Pm=0.08;
        %         if(t>iterations/2)
        %             Pm=0.07;
        %         end
        c1=mutation2D(child1,Pm,dis_mat,threshold);
        c2=mutation2D(child2,Pm,dis_mat,threshold);
        
        population.chromosome(n).gene=c1;
        population.chromosome(n+1).gene=c2;
        
    end
    %     if(mod(t,50)==0)
    %         subplot(1,4,4)
    %         imshow(p1);
    %     end
end
globalcost;
gene=globalgene;

% stem(costs);
end

