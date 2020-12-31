%crossover
function [child1,child2] =crossover(parent1,parent2,type,pc)

    no_gene=length(parent1.gene);
    ub=no_gene-1;
    lb=1;
    switch (type)
    
        case('single')
            cp=round(rand()*(ub-lb)+lb);
            part1=parent1.gene(1:cp);
            part2=parent2.gene(cp+1:end);
            child1.gene=[part1,part2];
            
            part1=parent2.gene(1:cp);
            part2=parent1.gene(cp+1:end);
            child2.gene=[part1,part2];
           
        case('double')
            
            cp1=round((ub-lb)*rand()+lb);
            cp2=cp1;
            while cp2==cp1
                cp2=round((ub-lb)*rand()+lb);
            end
            
            if cp2<cp1
                temp=cp1;
                cp1=cp2;
                cp2=temp;
            end
         
            part1=parent1.gene(1:cp1);
            part2=parent2.gene(cp1+1:cp2);
            part3=parent1.gene(cp2+1:end);
            child1.gene=[part1,part2,part3];
            
            
            part1=parent2.gene(1:cp1);
            part2=parent1.gene(cp1+1:cp2);
            part3=parent2.gene(cp2+1:end);
            child2.gene=[part1,part2,part3];


    end
    
    R1=rand();
    if(R1>pc)
      child1=parent1;
    end
    R2=rand();
    if(R2>pc)
        child2=parent2;
    end

    child1.fitness=ff(child1.gene);
    child2.fitness=ff(child2.gene);
    
end
