%gaa
clc
clear
image = imread('Brain.jpg');

for a=1:size(image,1)
    for b=1:size(image,2)
        if(image(a,b)<40)
            i(a,b)=uint8(0);
        else
            i(a,b)=image(a,b);
        end
    end
end
imsharpen(i);
i=localcontrast(i);
subplot(1,4,1);
imshow(i)
image=i;
% dis_mat=(dismat(image));
% subplot(1,4,3);
% imshow(dis_mat)
dis_mat=zeros(size(image));
mi = size(image);
m=mi(1);
number_of_subimages=0;
inc=15;
for a=4:inc:m-inc
    for b=4:inc:mi(2)-inc
        for x=1:inc+8
            for y=1:inc+8
                subset(x,y)=image(a+x-4,y+b-4);
            end
        end
        dt= dismat(subset);
        for x=0:inc-1
            for y=0:inc-1
                dis_mat(a+x,b+y)= dt(x+5,y+5);
            end
        end
    end
end

subplot(1,4,2);
imshow(dis_mat)
ig=zeros(size(image));

inc=18;
for a=2:inc:m-inc
    for b=2:inc:mi(2)-inc
        for x=0:inc+1
            for y=0:inc+1
                dis_mat_subset(x+1,y+1)=dis_mat(a+x-1,y+b-1);
            end
        end
        
        img=main(dis_mat_subset);
        for x=0:inc-1
            for y=0:inc-1
                ig(a+x,b+y)= img(x+2,y+2);
            end
        end
        number_of_subimages = number_of_subimages+1;
        if(mod(number_of_subimages,50)==0)
            number_of_subimages
        end
    end
end
BW=laplacianImage(image);
size(image)
size(BW)
BW=imresize(BW,[size(image,1),size(image,2)]);
F=pratt(BW,dis_mat)

% ig = main(image,dis_mat);
subplot(1,4,2);
imshow(image)
subplot(1,4,3);
imshow(dis_mat)
uint8Image = uint8(255 * ig);
subplot(1,4,4);
title('Edge image Output')
imshow(uint8Image)
F=pratt(ig,dis_mat);
disp(F);

