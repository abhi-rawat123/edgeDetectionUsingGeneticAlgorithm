%checkcomp

img=[[0,1,0];[0,1,0];[0,1,0]];
mat=[[0,1,0];[0,1,0];[0,1,0]];
dis_mat=dismat(img);

cost=costFunction1(img,dis_mat)
if(compare(img,2,2,mat)==0)
img=convert_gene(img,2,2,mat)
end