clc;
clear all;
close all;
x = input('Enter the sequence: ');
N = length(x);
xK = fft(x,N);
xn = ifft(xK);
n =0:N-1;

subplot(2,2,1);
stem(n,x);
xlabel('n--->');
ylabel('amplitude');
title('Input sequece');

subplot(2,2,2);
stem(n,abs(xK));
xlabel('n-->');
ylabel('magnitude');

subplot(2,2,3);
stem(n,angle(xK));
xlabel('n--->');
ylabel('phase');
title('Phase response');

subplot(2,2,4);
stem(n,xn);
xlabel('n--->');
ylabel('amplitude');
title('IFFT');