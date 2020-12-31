%crossover
parent1=[round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand())]
parent2=[round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand()),round(rand())]

%2 point crossover using vectors
m=length(parent1);
ub=m-1;
lb=1;
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

part1=parent1(1:cp1);
part2=parent2(cp1+1:cp2);
part3=parent1(cp2+1:end);
child1=[part1,part2,part3];


part1=parent2(1:cp1);
part2=parent1(cp1+1:cp2);
part3=parent2(cp2+1:end);
child2=[part1,part2,part3];



