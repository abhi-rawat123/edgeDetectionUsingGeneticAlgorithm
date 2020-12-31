function [b] = compare(img,x,y,mat)

b=true;
b=b*(img(x,y)==mat(2,2));
b=b*(img(x+1,y+1)==mat(3,3));
b=b*(img(x+1,y)==mat(3,2));
b=b*(img(x+1,y-1)==mat(3,1));
b=b*(img(x,y+1)==mat(2,3));
b=b*(img(x,y-1)==mat(2,1));
b=b*(img(x-1,y)==mat(1,2));
b=b*(img(x-1,y-1)==mat(1,1));
b=b*(img(x-1,y+1)==mat(1,3));

end