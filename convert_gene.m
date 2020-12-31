function [img]=convert_gene(image,x,y,mat)
 img=image;
 img(x,y)=mat(2,2);
 img(x+1,y+1)=mat(3,3);
 img(x+1,y)=mat(3,2);
 img(x+1,y-1)=mat(3,1);
 img(x,y+1)=mat(2,3);
 img(x,y-1)=mat(2,1);
 img(x-1,y)=mat(1,2);
 img(x-1,y-1)=mat(1,1);
 img(x-1,y+1)= mat(1,3);
end