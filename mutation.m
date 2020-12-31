%mutation 
function [child]=mutation(child,pm)
    
    for i=1:length(child.gene)
        R=rand();
        if(R<pm)            
            child.gene(i)=~child.gene(i);
        end
    end
end