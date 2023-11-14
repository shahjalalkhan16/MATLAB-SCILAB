clc;
clear all;
close all;
M=input('enter the down sampling factor');
L=input('enter the length of the input signal');
f1 = input('enter the frequency of first signal');
f2 = input('Enter the frequency of second sinusodal');

n = 0:L-1;

x = sin(2*pi*f1*n) +sin(2*pi*f2*n);
y= interp(x,M);
subplot(2,1,1);
stem(n,x(1:L));
title('Input sequence');
xlabel('Time');
ylabel('Amplitude');

subplot(2,1,2);
m =0:(L*M)-1;
stem(m,y(1:L*M));
title('Down Sampling Sequ');
xlabel('Time');
ylabel('Amplitude');