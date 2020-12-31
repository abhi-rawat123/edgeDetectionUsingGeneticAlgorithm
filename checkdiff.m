%check_diff

clc
clear
% [image,map] = imread('fl.png');
% imshow(image,map)
% dis_mat=(dismat(image));
% c=costFunction1(image,dis_mat)
% imshow(dis_mat)
t=600;
mod(t,200)

%mutation_mat



 img=[[1,1,0];[1,1,0];[0,0,0]]
 x=2;
 y=2;
% img=image;
mat=[[0,0,0];[0,0,0];[0,0,0]];

mat1=[[1,0,0];[0,1,0];[0,1,0]] ;
mat1_1=[[0,1,0];[0,1,0];[0,1,0]];
mat1_2=[[1,0,0];[0,1,0];[0,0,1]];
p1=[0.6,0.4];

mat2=[[1,0,1];[0,1,0];[0,0,0]];
mat2_1=[[0,0,1];[1,1,0];[0,0,0]] ;
mat2_2=[[1,0,0];[0,1,1];[0,0,0]];
p2=[0.5,0.5];

mat3=[[0,1,0];[0,1,0];[0,0,1]];
mat3_1 = [[0,1,0];[0,1,0];[0,1,0]] ;
mat3_2=[[1,0,0];[0,1,0];[0,0,1]];
p3=[0.6,0.4];

mat4=[[1,0,0];[0,1,0];[1,0,0]] ;
mat4_1=[[1,0,0];[0,1,0];[0,1,0]] ;
mat4_2=[[0,1,0];[0,1,0];[1,0,0]];
p4=[0.5,0.5];

mat5=[[1,1,0];[0,1,0];[0,0,0]];
mat5_1=[[1,0,0];[0,1,0];[0,0,0]] ;
mat5_2=[[1,1,0];[0,0,0];[0,0,0]];
mat5_3=[[0,1,0];[0,1,0];[0,0,0]];
p5=[0.4,0.2,0.4];

mat6=	[[0,1,0];[1,1,0];[0,0,0]];
mat6_1=[[0,1,0];[0,1,0];[0,0,0]] ;
mat6_2=[[0,1,0];[1,0,0];[0,0,0]] ;
mat6_3=[[0,0,0];[1,1,0];[0,0,0]];
p6=[0.4,0.4,0.2];

mat7=[[0,1,1];[0,1,0];[1,0,0]];
mat7_1=[[0,0,1];[0,1,0];[1,0,0]] ;
mat7_2=[[0,1,0];[0,1,0];[1,0,0]];
p7=[0.6,0.4];

mat8=	[[1,1,0];[0,1,0];[1,0,0]];
mat8_1=[[0,1,0];[0,1,0];[1,0,0]] ;
mat8_2=[[1,0,0];[0,1,0];[1,0,0]];
p8=[0.5,0.5];

mat9=[[0,1,0];[0,1,0];[1,1,0]];
mat9_1=[[0,1,0];[0,1,0];[1,0,0]] ;
mat9_2=[[0,1,0];[0,1,0];[0,1,0]];
p9=[0.3,0.7];

mat10=	[[1,0,0];[1,1,0];[1,0,0]];
mat10_1=	[[1,0,0];[1,0,0];[1,0,0]] ;
mat10_2=	[[1,0,0];[0,1,0];[1,0,0]];
p10=[0.6,0.4];

mat11=	[[1,0,1];[0,1,0];[1,0,0]];
mat11_1=[[0,0,1];[0,1,0];[1,0,0]] ;
mat11_2=[[1,0,0];[0,1,0];[1,0,0]] ;
mat11_3=[[1,0,1];[0,1,0];[0,0,0]] ;
mat11_4=[[1,0,1];[0,0,0];[1,0,0]];
p11=[0.4,0.25,0.25,0.1];

mat12=	[[0,1,0];[0,1,0];[1,0,1]];
mat12_1=[[0,0,0];[0,1,0];[1,0,1]] ;
mat12_2=[[0,1,0];[0,1,0];[1,0,0]] ;
mat12_3=[[0,1,0];[0,1,0];[0,0,1]] ;
mat12_4=[[0,1,0];[0,0,0];[1,0,1]];
p12=[0.4,0.25,0.25,0.1];

mat13=[[1,1,0];[1,1,0];[0,0,0]];
mat13_1=[[1,0,0];[0,1,0];[0,0,0]] ;
mat13_2=[[1,1,0];[0,0,0];[0,0,0]] ;
mat13_3=[[0,1,0];[0,1,0];[0,0,0]] ;
mat13_4=[[0,1,0];[1,0,0];[0,0,0]];
p13=[0.4,0.1,0.25,0.25];

mat14=	[[1,0,0];[0,1,0];[0,0,0]];
mat14_1=[[1,0,0];[0,1,0];[0,0,1]] ;
mat14_2=[[1,0,0];[0,1,1];[0,0,0]] ;
mat14_3=[[1,0,0];[0,1,0];[0,1,0]] ;
mat14_4=[[1,0,0];[0,0,0];[0,0,0]];
p14=[0.4,0.1,0.4,0.1];

mat15=	[[0,0,0];[0,1,0];[0,1,0]];
mat15_1=[[0,1,0];[0,1,0];[0,1,0]] ;
mat15_2=[[0,1,0];[0,1,0];[1,0,0]] ;
mat15_3=[[0,1,0];[0,1,0];[0,0,1]] ;
mat15_4=[[0,1,0];[0,0,0];[0,0,0]];
p15=[0.4,0.25,0.25,0.1];

mat16=	[[0,1,0];[0,1,0];[0,1,0]];
mat16_1=[[0,1,0];[1,0,0];[0,1,0]] ;
mat16_2=[[0,1,0];[0,0,1];[0,1,0]] ;
p16=[0.5,0.5];

mat17=	[[0,1,0];[0,1,0];[0,0,1]];
mat17_1=[[0,1,0];[0,0,1];[0,0,1]];
p17=[1];

mat18=	[[0,0,0];[1,1,1];[0,0,0]];
mat18_1=	[[0,1,0];[1,0,1];[0,0,0]] ;
mat18_2=	[[0,0,0];[1,0,1];[0,1,0]];
p18=[0.5,0.5];

mat19=	[[0,1,0];[0,1,0];[1,0,0]];
mat19_1=[[0,1,0];[1,0,0];[1,0,0]];
p19=[1];

mat20= [[1,0,0];[0,1,0];[0,0,1]];
mat20_1=[[1,0,0];[0,1,0];[0,1,0]] ;
mat20_2=[[1,0,0];[0,1,1];[0,0,0]] ;
mat20_3=[[0,1,0];[0,1,0];[0,0,1]] ;
mat20_4=[[0,0,0];[1,1,0];[0,0,1]] ;
mat20_5=[[0,0,0];[1,1,1];[0,0,0]] ;
mat20_6=[[0,1,0];[0,1,0];[0,1,0]] ;
mat20_7=[[0,0,1];[0,1,0];[1,0,0]];
p20=[1.0/7,1.0/7,1.0/7,1.0/7,1.0/7,1.0/7,1.0/7];

mat21=[[0,0,0];[1,1,1];[0,0,0]];
mat21_1=[[1,0,0];[0,1,1];[0,0,0]] ;
mat21_2=[[0,0,0];[1,1,0];[0,0,1]] ;
mat21_3=[[0,0,1];[1,1,0];[0,0,0]] ;
mat21_4=[[0,0,0];[0,1,1];[1,0,0]] ;
mat21_5=[[0,0,1];[0,1,0];[1,0,0]] ;
mat21_6=[[1,0,0];[0,1,0];[0,0,1]] ;
mat21_7=[[0,1,0];[0,1,0];[0,1,0]];
p21=[1.0/7,1.0/7,1.0/7,1.0/7,1.0/7,1.0/7,1.0/7];


if(compare(img,x,y,mat1))
    r=rand()
    matn=1;
    sum=0;
    for i=1:2
        sum=sum+p1(i);
        if(sum>=r)
            matn=i; break;
            break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat1_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat1_2);
    end
elseif(compare(img,x,y,mat2))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p2,2)
        sum=sum+p2(i)
        if(sum>=r)
            matn=i; break;
               break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat2_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat2_2);
    end
elseif(compare(img,x,y,mat3))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p3)
        sum=sum+p3(i);
        if(sum>=r)
            matn=i; break;
               break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat3_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat3_2);
    end
elseif(compare(img,x,y,mat4))
   r=rand();
    matn=1;
    sum=0;
    for i=1:size(p4,2)
        sum=sum+p4(i);
        if(sum>=r)
            matn=i; break;
               break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat4_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat4_2);
    end
elseif(compare(img,x,y,mat5))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p5,2)
        sum=sum+p5(i);
        if(sum>=r)
            matn=i; break;
               break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat5_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat5_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat5_3);
    end
elseif(compare(img,x,y,mat6))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p6,2)
        sum=sum+p6(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat6_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat6_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat6_3);
    end
elseif(compare(img,x,y,mat7))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p7,2)
        sum=sum+p7(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat7_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat7_2);
    end
elseif(compare(img,x,y,mat8))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p8,2)
        sum=sum+p8(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat8_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat8_2);
    end
elseif(compare(img,x,y,mat9))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p9,2)
        sum=sum+p9(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat9_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat9_2);
    end
elseif(compare(img,x,y,mat10))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p10,2)
        sum=sum+p10(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat10_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat10_2);
    end
elseif(compare(img,x,y,mat11))
    r=rand();
    matn=1;
    sum=0;
    for i=1:size(p11,2)
        sum=sum+p11(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat11_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat11_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat11_3);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat11_4);
    end
elseif(compare(img,x,y,mat12))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p12,2)
        sum=sum+p12(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat12_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat12_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat12_3);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat12_4);
    end
elseif(compare(img,x,y,mat13))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p13,2)
        sum=sum+p13(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat13_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat13_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat13_3);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat13_4);
    end
elseif(compare(img,x,y,mat14))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p14,2)
        sum=sum+p14(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat14_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat14_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat14_3);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat14_4);
    end
elseif(compare(img,x,y,mat15))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p15,2)
        sum=sum+p15(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat15_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat15_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat15_3);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat15_4);
    end
elseif(compare(img,x,y,mat16))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p16,2)
        sum=sum+p16(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat16_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat16_2);
    end
elseif(compare(img,x,y,mat17))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p17,2)
        sum=sum+p17(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat17_1);
    end
    
elseif(compare(img,x,y,mat18))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p18,2)
        sum=sum+p18(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat18_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat18_2);
    end
elseif(compare(img,x,y,mat19))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p19,2)
        sum=sum+p19(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat19_1);
    end
elseif(compare(img,x,y,mat20))
      r=rand();
    matn=1;
    sum=0;
    for i=1:size(p20,2)
        sum=sum+p20(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat20_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat20_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat20_3);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat20_4);
    end
    if(matn==5)
        img=convert_gene(img,x,y,mat20_5);
    end
    if(matn==6)
        img=convert_gene(img,x,y,mat20_6);
    end
    if(matn==7)
        img=convert_gene(img,x,y,mat20_7);
    end
elseif(compare(img,x,y,mat21))
     r=rand();
    matn=1;
    sum=0;
    for i=1:size(p21,2)
        sum=sum+p21(i);
        if(sum>=r)
            matn=i; break;
        end
    end
    if(matn==1)
        img=convert_gene(img,x,y,mat21_1);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat21_2);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat21_3);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat21_4);
    end
    if(matn==5)
        img=convert_gene(img,x,y,mat21_5);
    end
    if(matn==6)
        img=convert_gene(img,x,y,mat21_6);
    end
    if(matn==7)
        img=convert_gene(img,x,y,mat21_7);
    end
else
    img(x,y)=~img(x,y);
end

img



