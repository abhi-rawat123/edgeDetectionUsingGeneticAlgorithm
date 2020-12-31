%costfunction
 function [cost] = costfunction(image,candidate,dis_mat)
 mi=size(candidate);
%   m=mi(1);
%   c=0;
%   for i=1:m
%       for j=1:m
%           if(candidate(i,j)==1)
%               c=c+1;
%           end
%      end
%  end
%  
%   cost=c;
%  end
% %  
% 
mi=size(image);
m=mi(1);
cost=0.00;
wd=2;
wc=0.5;
wf=3;
wt=6.51;
c=0.0;

for i=2:m-1
    for j=2:mi(2)-1
        n=0;
        cc=0;
        ce=0;
        cf=0;
        ct=0;
        cd=0;
        we= double(candidate(i,j));
        if (candidate(i,j)==0)
            cd=double(dis_mat(i,j));
        else
           cd=0;
           ce=1;   
           flag=0;
            if(candidate(i,j-1)==1)
                n=n+1;
                if(candidate(i-1,j-1)==1 ||candidate(i+1,j-1)==1)
                    flag=1;
                end
            end
            if(candidate(i,j+1)==1)
                n=n+1;
                if(candidate(i-1,j+1)==1 ||candidate(i+1,j+1)==1)
                    flag=1;
                end
            end
            if(candidate(i-1,j-1)==1)
                n=n+1;
                if(candidate(i-1,j)==1 ||candidate(i,j-1)==1)
                    flag=1;
                end
            end
            if(candidate(i-1,j+1)==1)
                n=n+1;
                if(candidate(i-1,j)==1 ||candidate(i,j+1)==1)
                    flag=1;
                end
            end
            if(candidate(i-1,j)==1)
                n=n+1;
                if(candidate(i-1,j-1)==1 ||candidate(i-1,j+1)==1)
                    flag=1;
                end
            end
            if(candidate(i+1,j+1)==1)
                n=n+1;
                if(candidate(i,j+1)==1 ||candidate(i+1,j)==1)
                    flag=1;
                end
            end
            if(candidate(i+1,j)==1)
                n=n+1;
                if(candidate(i+1,j-1)==1 ||candidate(i+1,j+1)==1)
                    flag=1;
                end
            end
            if(candidate(i+1,j-1)==1)
                n=n+1;
                if(candidate(i,j-1)==1 ||candidate(i+1,j)==1)
                    flag=1;
                end
            end
        
            if n==0
                cf=1;
            end
            if n==1
                cf=0.5;
            end
            if n==2
                cf=0;
                if(flag==1)
                ct=1;
                cc=1;
                else
                ct=0;
                cc=0.5;
                end
              
                
                %to be altered
            end
            if n>=3
                cc=1;
                if(flag==1)
                ct=1;
                else
                    ct=0;
                end
            end
        end
       
       cost = double(cost + ct*wt+ cf*wf + cc*wc+ cd*wd + ce*we);

    end
end
cost=cost/100;
end

