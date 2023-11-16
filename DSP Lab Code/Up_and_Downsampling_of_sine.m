clc;
N=input('Enter the length of sinusoidal signal');
M=input('Enter the downsampling factor');
n=1:0.05:N;
x=sin(2*pi*n);
y=downsample(x,M);
subplot(3,1,1);
stem(x);
xlabel('time');
ylabel('amplitude');
title('Input Signal');
subplot(3,1,2);
stem(y);
xlabel('time');
ylabel('amplitude');
title('DownSampled Signal');
z=upsample(x,M);
subplot(3,1,3);
stem(z);
xlabel('time');
ylabel('amplitude');
title('UpSampled Signal');
