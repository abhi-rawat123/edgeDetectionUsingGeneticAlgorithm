% Function that creates an edge image using laplacian mask operator 
function [BW]= laplacianImage (image)
mask = [-1 -1 -1; -1 8 -1; -1 -1 -1];
result = conv2(image, mask);
level=0.5;
BW = im2bw(result,level);
end

