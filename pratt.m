%Edge detector performance measure function
function F = pratt(Ea,Ed)
Ea=double(Ea); %Ea : Actual edge image
Ed=double(Ed); % Ed : Detected edge image
[N,M]=size(Ea);
[N1,M1]= size(Ed);

if N~=N1 && M~=M1 
  error('Actual and detected edge image sizes must be same');
end;
%===============================================================
for i=1:size(Ea,1)
    for j=1:size(Ea,2)
        if Ea(i,j)<1
            Ea(i,j)=0;
        end
        if Ed(i,j)<1
            Ed(i,j)=0;
        end
    end
end
%===============================================================
a=0.1; % edge shift penalty constant;

Na=sum(sum(Ea));
Nd=sum(sum(Ed));
c=1/max(Na,Nd);
[ia,ja]=find(Ea==1);
%Aes= zeros(1000000,1000000) +5;
for l=1:Na 
  Aes(l)=Ed(ia(l),ja(l));
end
mi=ia(find(Aes==0));
mj=ja(find(Aes==0));
%mi=ia(Aes==0); 
%mj=ja(Aes==0);
F=c*sum(Aes);
for k=1:length(mi) 
  n1=0;n2=0;m1=0;m2=0; 
  while sum(sum(Ed(mi(k)-n1:mi(k)+n2,mj(k)-m1:mj(k)+m2)))<1
    if mi(k)-n1>1
        n1=n1+1;
    end;  
    if mi(k)+n2<N
        n2=n2+1;
    end;  
    if mj(k)-m1>1
        m1=m1+1;
    end;  
    if mj(k)+m2<M 
        m2=m2+1;
    end;  
  end;
  di=max([n1 n2 m1 m2]);
  F=F+c/(1+a*di^2);
end;
% F = F*100;