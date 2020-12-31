%dismat

function [dis_mat]= dismat(img)

mx=[[0,1];[-1,1];[-1,0];[-1,1];[0,-1];[-1,1];[1,0];[-1,1];[-1,1];[-1,1];[-1,1];[0,0]];
my=[[-1,1];[0,-1];[-1,1];[1,0];[-1,1];[0,1];[-1,1];[-1,0];[1,-1];[-1,1];[0,0];[-1,1]];

mi=size(img);
dis_mat=zeros(mi(1),mi(2));
max=0;
min=1000;
for x=4:mi(1)-4
    for y=4:mi(2)-4
        if(dis_mat(x,y)>max)
            max=dis_mat(x,y);
        end
        answer= caldiff(img,x,y);
        diff=answer(1);
        matno=answer(2);
        if (matno == 9)
            a=caldiff(img,x-1,y-1);
            b=caldiff(img,x+1,y+1);
            if(a(1) >diff || b(1)>diff)
                continue;
            end
        elseif (matno==10)
            a= caldiff(img,x-1,y+1);
            b= caldiff(img,x+1,y-1);
            if(a(1) >diff || b(1)>diff)
                continue;
            end
        elseif(matno==11)
            a= caldiff(img,x,y+1);
            b= caldiff(img,x,y-1);
            if(a(1) >diff || b(1)>diff)
                continue;
            end
        elseif(matno==12)
            a= caldiff(img,x-1,y);
            b=caldiff(img,x+1,y);
            if(a(1) >diff || b(1)>diff)
                continue;
            end
        else
            a=caldiff(img,x+1,y);
            b=caldiff(img,x-1,y);
            c=caldiff(img,x,y-1);
            d=caldiff(img,x,y+1);
            if(a(1) >diff || b(1)>diff || c(1)>diff || d(1)>diff)
                continue;
            end
        end
        
        dis_mat(x,y)=double(dis_mat(x,y)+diff*1.0/3.0);
        dis_mat(x+mx(matno,1),y+my(matno,1))=double(dis_mat(x+mx(matno,1),y+my(matno,1))+diff*1.0/3.0);
        dis_mat(x+mx(matno,2),y+my(matno,2))=double(dis_mat(x+mx(matno,2),y+my(matno,2))+diff*1.0/3.0);
        if(dis_mat(x,y)>256)
            dis_mat(x,y)=256;
        end
        
        if(dis_mat(x,y)>max)
            max=dis_mat(x,y);
        end
        if(dis_mat(x+mx(matno,1),y+my(matno,1))>max)
            max=dis_mat(x+mx(matno,1),y+my(matno,1));
        end
        if(dis_mat(x+mx(matno,2),y+my(matno,2))>max)
            max=dis_mat(x+mx(matno,2),y+my(matno,2));
        end
        if(dis_mat(x+mx(matno,2),y+my(matno,2))<min)
            min=dis_mat(x+mx(matno,2),y+my(matno,2));
            
        end
    end
end
% if(min==max)
% for x=1:mi(1)
%     for y=1:mi(2)
%         dis_mat(x,y)=0.0;
%     end
% end
% end
if(max==0)
    for x=1:mi(1)
        for y=1:mi(2)
            dis_mat(x,y)= 0;
        end
    end
    return;
end
for x=1:mi(1)
    for y=1:mi(2)
        dis_mat(x,y)= (dis_mat(x,y)/max)*2;
        if(dis_mat(x,y)>=1)
            dis_mat(x,y)=1.0;
        end
                if(dis_mat(x,y)<0.3)
                    dis_mat(x,y)=0.0;
                end
    end
end
end





