%initialization

function [pop] = initialization(M,N)

for i=1:M
    for j=1:N
        pop.chrom(i).gene(j)= [round(rand())];
    end
end
end