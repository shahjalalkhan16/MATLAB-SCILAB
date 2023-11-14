clc; 
clear all;
x1=input('enter the first sequence');
x2=input('enter the second sequence');
n1 = length(x1);
n2 = length(x2);
subplot(3,1,1);
stem(x1,'filled');
title('plot of first sequence'); 

subplot(3,1,2);
stem(x2,'filled');
title('plot the second sequnce'); 
y1=fft(x1,n1);
y2=fft(x2,n2); 
y3=y1.*y2; 
y=ifft(y3,n2);
disp('the circular convolution result is	');
disp(y);

subplot(3,1,3);
stem(y,'filled');
title('plot of circularly convoluted sequence');
