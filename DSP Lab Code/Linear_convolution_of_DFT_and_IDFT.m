clc; 
x1=input('enter the first sequence');
x2=input('enter the second sequence');

subplot(3,1,1);
stem(x1,'filled');
title('plot of first sequence');

subplot(3,1,2);
stem(x2,'filled');
title('plot the second sequnce');

n1 =length(x1);
n2 = length(x2);
m = n1+n2-1; % Length of linear convolution
x = [x1 zeros(1,n2-1)]; % Padding of zeros to make it of
% length m
y = [x2 zeros(1,n1-1)];
x_fft = fft(x,m); 
y_fft = fft(y,m); 
dft_xy = x_fft.*y_fft; 
y=ifft(dft_xy,m);
disp('the Linear convolution result is');
disp(y); 
subplot(3,1,3);
stem(y,'filled');
title('plot of Linear convoluted sequence');

