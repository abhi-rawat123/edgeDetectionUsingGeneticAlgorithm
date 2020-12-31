clc
clear
M=15;
N=10;
max_generations=10;
pc=0.5;
pm=0.1;
Er=0.1;

[pop]=initialization(M,N);


for g=1:max_generations
    
    for k=1:M
        pop.chrom(k).fitness=ff(pop.chrom(k).gene(:));
    end
    
    for k=1:2:M
        [parent1,parent2]=selection(pop);
        
        [child1,child2]=crossover(parent1,parent2,'double',pc);
        
        [child1]=mutation(child1,pm);
        [child2]=mutation(child2,pm);
        
        next_gen_pop.chrom(k).gene(:)=child1.gene;
        next_gen_pop.chrom(k+1).gene(:)=child2.gene;
        
    end
    
    [new_pop]=elitism(pop,next_gen_pop,Er,N);
    pop=new_pop;
    
    
end

 for k=1:M
        pop.chrom(k).fitness=ff(pop.chrom(k).gene(:));
 end
 max([pop.chrom(:).fitness])
    
