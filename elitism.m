%elitism
function [pop2]=elitism(pop,next_gen_pop,Er,N)

elite_no=round(Er*N);

[max_val,indx]=sort([pop.chrom(:).fitness],'descend');
for k=1:elite_no
    pop2.chrom(k).gene= pop.chrom(indx(k)).gene;
end
M=length(pop.chrom);
for k=elite_no+1:M
    pop2.chrom(k).gene= next_gen_pop.chrom(k).gene;
end

end