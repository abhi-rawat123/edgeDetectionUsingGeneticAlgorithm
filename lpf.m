t = 0:1/50:1;                     
x = sin(2*pi*15*t) ;
% plot(t,x)
y = fft(x);     
f = (0:length(y)-1)*50/length(y);
%(hs= 1/s+a)
plot(f,abs(y),'*');
z=lowpass(y,0.1);
plot(f,abs(z),'*');
    
