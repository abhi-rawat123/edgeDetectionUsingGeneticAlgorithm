%lab practice 
%decimation
% w=-pi*2:0.01:pi*2;
% 
% m=2;
% h=fir1(512/m,1/m);
% subplot(2,2,1)
% plot(w/pi,abs(freqz(h,1,w)));
% 
% f=[0,0.5,1];
% a=[1,0,0];
% x=fir2(512,f,a);
% subplot(2,2,2)
% plot(w/pi,abs(freqz(x,1,w)));
% 
% % x=filter(h,1,x);
% subplot(2,2,3)
% plot(w/pi,abs(freqz(x,1,w)));
% 
% % y=zeros(1,length(x)/m);
% y=x(1:m:length(x));
% subplot(2,2,4)
% plot(w/pi,abs(freqz(y,1,w)));
% 


%%%%%%%%%%%%%%%%interpolation 
% first upsample then filter 

% w=-pi*2:0.01:pi*2;
% l=2;
% f=[0,1/l,1];
% a=[1,0,0];
% 
% %input
% x= fir2(512,f,a);
% subplot(2,2,1)
% plot(w/pi,abs(freqz(x,1,w)));
% 
% y=zeros(1,l*length(x));
% y(1:l:length(y))=x;
% subplot(2,2,2)
% plot(w/pi,abs(freqz(y,1,w)));
% 
% h=l*fir1(256,1/l);
% y=filter(h,1,y);
% subplot(2,2,3)
% plot(w/pi,abs(freqz(y,1,w)));


%%%% downsampling 
% n=1:45;
% n2=1:15;
% 
% m=3;
% x=sin(2*pi*0.04*n);
% 
% subplot(2,1,1)
% stem(n,x);
% 
% y=x(1:m:length(x));
% subplot(2,1,2)
% stem(n2,y);

%%%% upsampling
% n=1:45;
% n2=1:45;
% 
% m=3;
% x=sin(2*pi*0.04*n);
% 
% subplot(2,1,1)
% stem(n,x);
% y=zeros(1,m*length(x));
% y(1:m:length(y))=x;
% subplot(2,1,2)
% stem(n2,y(1:45));






