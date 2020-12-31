%mutation2D
function [mutatedGene] = mutation2D (gene,Pm,dis_mat,threshold)

    measure = size(gene);
    m=measure(1);
    
    mutatedGene=gene;
    for i=1:m
        for j=1:measure(2)
            if (dis_mat(i,j)==0)
                continue;
            end

            r=rand();
            if(r<=Pm)
                r2=rand();
                if(r2<0.9)
                mutatedGene=mutation_mat(mutatedGene,i,j);  
                else
                    mutatedGene(i,j)=~mutatedGene(i,j);
                end
            end
        end
    end
    
    c1 = costFunction1(gene,dis_mat);
    c2 = costFunction1(mutatedGene,dis_mat);
    p=0.2;
    r=rand();
    if (c2 >c1 && r<p)
        mutatedGene=gene;
    end
    
end
