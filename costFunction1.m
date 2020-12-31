function [cost] = costFunction1 (img,dis_mat)

% load disMap
cost=0.0; %total cost

for i=2:size(img,1)-1
    for j=2:size(img,2)-1
        we = img(i,j)*1.0;
        if img(i,j)==0
            cd=dis_mat(i,j);
            cc=0;
            ce=0;
            cf=0;
            ct=0;
        else
            cd=0;
            ce=1.0; %Ce
            n=-1; %no of neighbour edges
            for ki=i-1:i+1
                for kj=j-1:j+1
                    if (img(ki,kj)==1)
                        n=n+1;
                    end
                end
            end
            if n==0
                cc=0;
                ct=0;
                cf=1.0; %Cf
            elseif n==1
                cc=0.0;
                ct=0.0;
                cf=0.5; %Cf
            elseif n==2
                cf=0.0;
                %thick egde
                if (((img(i-1,j)==1)&&((img(i-1,j-1)==1)||(img(i-1,j+1)==1)))||((img(i,j-1)==1)&&((img(i-1,j-1)==1)||(img(i+1,j-1)==1)))||((img(i,j+1)==1)&&((img(i-1,j+1)==1)||(img(i+1,j+1)==1)))||((img(i+1,j)==1)&&((img(i+1,j-1)==1)||(img(i+1,j+1)==1))))
                    ct=1.0;
                    cc=1.0; %Cc=1 Ct=1
                else %thin edge
                    ct=0.0;
                    ccr=0;
                    ccc=0;
                    %cal curvature
                    
                    for row=i-1:i+1
                        for col = j-1: j+1
                            if(img(row,col)==1)
                                ccr= ccr+row-i;
                                ccc=ccc+col-j;
                            end
                        end
                    end
                    if(abs(ccc)+abs(ccr)==0)
                        cc=0;
                    elseif (abs(ccc)+abs(ccr)==1)
                        cc=0.5;
                    else
                        cc=1;
                    end
                end
                % n>=3
            else
                cc=1.0; %Cc=1
                cf=0.0;
                 if (((img(i-1,j)==1)&&((img(i-1,j-1)==1)||(img(i-1,j+1)==1)))||((img(i,j-1)==1)&&((img(i-1,j-1)==1)||(img(i+1,j-1)==1)))||((img(i,j+1)==1)&&((img(i-1,j+1)==1)||(img(i+1,j+1)==1)))||((img(i+1,j)==1)&&((img(i+1,j-1)==1)||(img(i+1,j+1)==1))))
                     ct=1.0; %Ct=1
                else
                    ct=0.0;
                end
                
            end
        end
        %2.0 0.5
        wd = 2.0; wc = 0.5; wf = 3.0;
        %         wt= 2*wf-wc+wd-we+0.01;
        wt=6.51;
        c =double((ce*we)*1.0+(cd*wd)+(cf*wf)+(ct*wt))+(cc*wc);
        cost=cost+c;
    end
end
end