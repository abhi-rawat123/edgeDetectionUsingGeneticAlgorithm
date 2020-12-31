% %checkAll
% 
% %dissimilarity
% clc
% clear
% [image,map] = imread('triangleFill.png');
% imshow(image,map)
% t=0;
% dis_mat=(dismat(image));
% imshow(dis_mat) 
% % dis_mat=image;
% p1=dis_mat;
% p2=~dis_mat;
% % imshow(p2);
% [c1,c2]=crossOver2D(p1,p2,dis_mat);
% imshow(c1)

% ig=[[0,0,0,0,0];[0,1,1,0,0];[0,0,0,1,0]];
% c=costFunction1(ig,ig);
% c
% ccr=0;
% ccc=0;
% %cal curvature 
% i=2;
% j=3;
% for row=i-1:i+1
%     for col = j-1: j+1
%         if(ig(row,col)==1)
%             ccr= ccr+row-i;
%             ccc=ccc+col-j;
%         end
%     end
% end
% if(abs(ccc)+abs(ccr)==0)
%     cc=0;
% elseif (abs(ccc)+abs(ccr)==1)
%     cc=0.5;
% else
%     cc=1;
% end

ig=[[0,0,0,0,0];[0,1,1,0,0];[0,0,0,1,0];[0,0,0,0,0]];
img=mutation2D(ig,ig,0.2,ig,3)