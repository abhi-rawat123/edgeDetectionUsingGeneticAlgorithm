M=10;
N=2;
for k=1:M
    pop.chrom(k).gene(:)=[round(rand()),round(rand())];
    pop.chrom.fval=ff(pop.chrom(k).gene(1),pop.chrom(k).gene(2));
end