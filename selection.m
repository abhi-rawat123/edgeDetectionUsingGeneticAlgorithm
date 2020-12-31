function [parent1,parent2] = selection(population)

m=length(population.chromosome(:));
cost_vals=zeros(1,m);
for i=1:m
    cost_vals(i)= 1/population.chromosome(i).cost;
end

if any(cost_vals(:)<0)
    a=1;
    b=abs(min(cost_vals))+1;
    cost_vals=a.*cost_vals+b;
end
if(sum(cost_vals)==0)
    parent1=1;
    parent2=2;
return;
end
normalised_cost = cost_vals./sum(cost_vals);
[normalised_cost,indx]=sort(normalised_cost,'ascend');
New_pop=population;
for i=1:m
    New_pop.chromosome(i).gene(:)= population.chromosome(indx(i)).gene;
    New_pop.chromosome(i).cost= population.chromosome(indx(i)).cost;
    New_pop.chromosome(i).normalised_cost=normalised_cost(i);
end

cum_sum=normalised_cost;
for i=1:m-1
    cum_sum(m-i)=cum_sum(m-i+1)+cum_sum(m-i);
end

r=rand();
parent1_ind=m;
for i=1:m
    if(r>cum_sum(i))
        parent1_ind=i-1;
        break;
    end
end

parent2_ind=parent1_ind;
while parent1_ind==parent2_ind
    r=rand();
    for i=1:m
        if(r>cum_sum(i))
            parent2_ind=i;
            break;
        end
    end
end

parent1= New_pop.chromosome(parent1_ind).gene;
parent2= New_pop.chromosome(parent2_ind).gene;


end