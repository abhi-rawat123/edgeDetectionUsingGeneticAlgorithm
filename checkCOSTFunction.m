%check cost 
% [image,map] = imread('insta.png');
% imshow(image,map)
% t=0;
% dis_mat=(dissimilarity(uint8(image)));
% mi=size(image);
% m=mi(1);
m=3;
for i=1:m
    for j=1:m
        ig(i,j)=round(rand());
%         if dis_mat(i,j)>7
%             dis_mat(i,j)=1;
%         end
            
    end
end
% imshow(img,map)
% imshow((dissimilarity(img)))
% a=costfunction(image,dis_mat,dissimilarity(image));
b=costfunction(ig,ig,dissimilarity(ig));
% c=[a/1000,b/1000]