%mutation_mat

function [img]= mutation_mat(image,x,y)

% img=[[0,1,0];[0,1,0];[0,1,0]];
% x=2;
% y=2;
if(x==1 || y==1|| x==size(image,1) || y==size(image,2))
    
        image(x,y)=~image(x,y);
        img=image;
        return;
end
img=image;

mat1=[[1,0,0];[0,1,0];[0,1,0]] ;
mat1_1=[[0,1,0];[0,1,0];[0,1,0]];
mat1_2=[[1,0,0];[0,1,0];[0,0,1]];
p1=[0.6,0.4];

mat2=[[1,0,1];[0,1,0];[0,0,0]];
mat2_1=[[0,0,1];[1,1,0];[0,0,0]] ;
mat2_2=[[1,0,0];[0,1,1];[0,0,0]];
p2=[0.5,0.5];

mat3=[[0,1,0];[0,1,0];[0,0,1]];
mat31 = [[0,1,0];[0,1,0];[0,1,0]] ;
mat32=[[1,0,0];[0,1,0];[0,0,1]];
p3=[0.6,0.4];

mat4=[[1,0,0];[0,1,0];[1,0,0]] ;
mat41=[[1,0,0];[0,1,0];[0,1,0]] ;
mat42=[[0,1,0];[0,1,0];[1,0,0]];
p4=[0.5,0.5];

mat5=[[1,1,0];[0,1,0];[0,0,0]];
mat51=[[1,0,0];[0,1,0];[0,0,0]] ;
mat52=[[1,1,0];[0,0,0];[0,0,0]];
mat53=[[0,1,0];[0,1,0];[0,0,0]];
p5=[0.4,0.2,0.4];

mat6=	[[0,1,0];[1,1,0];[0,0,0]];
mat61=[[0,1,0];[0,1,0];[0,0,0]] ;
mat62=[[0,1,0];[1,0,0];[0,0,0]] ;
mat63=[[0,0,0];[1,1,0];[0,0,0]];
p6=[0.4,0.4,0.2];

mat7=[[0,1,1];[0,1,0];[1,0,0]];
mat71=[[0,0,1];[0,1,0];[1,0,0]] ;
mat72=[[0,1,0];[0,1,0];[1,0,0]];
p7=[0.6,0.4];

mat8=	[[1,1,0];[0,1,0];[1,0,0]];
mat81=[[0,1,0];[0,1,0];[1,0,0]] ;
mat82=[[1,0,0];[0,1,0];[1,0,0]];
p8=[0.5,0.5];

mat9=[[0,1,0];[0,1,0];[1,1,0]];
mat91=[[0,1,0];[0,1,0];[1,0,0]] ;
mat92=[[0,1,0];[0,1,0];[0,1,0]];
p9=[0.3,0.7];

mat10=	[[1,0,0];[1,1,0];[1,0,0]];
mat101=	[[1,0,0];[1,0,0];[1,0,0]] ;
mat102=	[[1,0,0];[0,1,0];[1,0,0]];
p10=[0.6,0.4];

mat11=	[[1,0,1];[0,1,0];[1,0,0]];
mat111=[[0,0,1];[0,1,0];[1,0,0]] ;
mat112=[[1,0,0];[0,1,0];[1,0,0]] ;
mat113=[[1,0,1];[0,1,0];[0,0,0]] ;
mat114=[[1,0,1];[0,0,0];[1,0,0]];
p11=[0.4,0.25,0.25,0.1];

mat12=	[[0,1,0];[0,1,0];[1,0,1]];
mat121=[[0,0,0];[0,1,0];[1,0,1]] ;
mat122=[[0,1,0];[0,1,0];[1,0,0]] ;
mat123=[[0,1,0];[0,1,0];[0,0,1]] ;
mat124=[[0,1,0];[0,0,0];[1,0,1]];
p12=[0.4,0.25,0.25,0.1];

mat13=[[1,1,0];[1,1,0];[0,0,0]];
mat131=[[1,0,0];[0,1,0];[0,0,0]] ;
mat132=[[1,1,0];[0,0,0];[0,0,0]] ;
mat133=[[0,1,0];[0,1,0];[0,0,0]] ;
mat134=[[0,1,0];[1,0,0];[0,0,0]];
p13=[0.4,0.1,0.25,0.25];

mat14=	[[1,0,0];[0,1,0];[0,0,0]];
mat141=[[1,0,0];[0,1,0];[0,0,1]] ;
mat142=[[1,0,0];[0,1,1];[0,0,0]] ;
mat143=[[1,0,0];[0,1,0];[0,1,0]] ;
mat144=[[1,0,0];[0,0,0];[0,0,0]];
p14=[0.4,0.1,0.4,0.1];

mat15=	[[0,0,0];[0,1,0];[0,1,0]];
mat151=[[0,1,0];[0,1,0];[0,1,0]] ;
mat152=[[0,1,0];[0,1,0];[1,0,0]] ;
mat153=[[0,1,0];[0,1,0];[0,0,1]] ;
mat154=[[0,1,0];[0,0,0];[0,0,0]];
p15=[0.4,0.25,0.25,0.1];

mat16=	[[0,1,0];[0,1,0];[0,1,0]];
mat161=[[0,1,0];[1,0,0];[0,1,0]] ;
mat162=[[0,1,0];[0,0,1];[0,1,0]] ;
p16=[0.5,0.5];

mat17=	[[0,1,0];[0,1,0];[0,0,1]];
mat171=[[0,1,0];[0,1,0];[0,1,0]];
p17= (1);

mat18=	[[0,0,0];[1,1,1];[0,0,0]];
mat181=	[[0,1,0];[1,0,1];[0,0,0]] ;
mat182=	[[0,0,0];[1,0,1];[0,1,0]];
p18=[0.5,0.5];

mat19=	[[0,1,0];[0,1,0];[1,0,0]];
mat191=[[0,1,0];[1,0,0];[1,0,0]];
p19=[1];

mat20= [[1,0,0];[0,1,0];[0,0,1]];
mat201=[[1,0,0];[0,1,0];[0,1,0]] ;
mat202=[[1,0,0];[0,1,1];[0,0,0]] ;
mat203=[[0,1,0];[0,1,0];[0,0,1]] ;
mat204=[[0,0,0];[1,1,0];[0,0,1]] ;
mat205=[[0,0,0];[1,1,1];[0,0,0]] ;
mat206=[[0,1,0];[0,1,0];[0,1,0]] ;
mat207=[[0,0,1];[0,1,0];[1,0,0]];
p20=[0.1,0.1,0.1,0.1,0.4,0.1,0.1];

mat21=[[0,0,0];[1,1,1];[0,0,0]];
mat211=[[1,0,0];[0,1,1];[0,0,0]] ;
mat212=[[0,0,0];[1,1,0];[0,0,1]] ;
mat213=[[0,0,1];[1,1,0];[0,0,0]] ;
mat214=[[0,0,0];[0,1,1];[1,0,0]] ;
mat215=[[0,0,1];[0,1,0];[1,0,0]] ;
mat216=[[1,0,0];[0,1,0];[0,0,1]] ;
mat217=[[0,1,0];[0,1,0];[0,1,0]];
p21=[1.0/7,1.0/7,1.0/7,1.0/7,1.0/7,1.0/7,1.0/7];


if(compare(img,x,y,mat1))
    r=rand();
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
        sum=sum+p2(i);
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
        img=convert_gene(img,x,y,mat31);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat32);
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
        img=convert_gene(img,x,y,mat41);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat42);
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
        img=convert_gene(img,x,y,mat51);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat52);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat53);
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
        img=convert_gene(img,x,y,mat61);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat62);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat63);
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
        img=convert_gene(img,x,y,mat71);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat72);
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
        img=convert_gene(img,x,y,mat81);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat82);
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
        img=convert_gene(img,x,y,mat91);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat92);
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
        img=convert_gene(img,x,y,mat101);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat102);
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
        img=convert_gene(img,x,y,mat111);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat112);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat113);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat114);
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
        img=convert_gene(img,x,y,mat121);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat122);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat123);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat124);
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
        img=convert_gene(img,x,y,mat131);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat132);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat133);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat134);
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
        img=convert_gene(img,x,y,mat141);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat142);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat143);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat144);
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
        img=convert_gene(img,x,y,mat151);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat152);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat153);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat154);
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
        img=convert_gene(img,x,y,mat161);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat162);
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
        img=convert_gene(img,x,y,mat171);
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
        img=convert_gene(img,x,y,mat181);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat182);
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
        img=convert_gene(img,x,y,mat191);
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
        img=convert_gene(img,x,y,mat201);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat202);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat203);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat204);
    end
    if(matn==5)
        img=convert_gene(img,x,y,mat205);
    end
    if(matn==6)
        img=convert_gene(img,x,y,mat206);
    end
    if(matn==7)
        img=convert_gene(img,x,y,mat207);
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
        img=convert_gene(img,x,y,mat211);
    end
    if(matn==2)
        img=convert_gene(img,x,y,mat212);
    end
    if(matn==3)
        img=convert_gene(img,x,y,mat213);
    end
    if(matn==4)
        img=convert_gene(img,x,y,mat214);
    end
    if(matn==5)
        img=convert_gene(img,x,y,mat215);
    end
    if(matn==6)
        img=convert_gene(img,x,y,mat216);
    end
    if(matn==7)
        img=convert_gene(img,x,y,mat217);
    end
else
    img(x,y)=~img(x,y);
end


img;
end


