clc;
close all;
clear all;
x1 = input('Enter first sequence:');
x2 = input('Enter 2nd sequence:');


subplot(3,1,1);
stem(x1);
xlabel('Time');
ylabel('Amplititude')
title('First sequence');

subplot(3,1,2);
stem(x2);
xlabel('Time');
ylabel('Amplititude')
title('Second sequence');

y = conv(x1,x2);
disp(y);
subplot(3,1,3);
stem(y);
xlabel('Time');
ylabel('Amplititude')
title('cONVOLUTION SEQUENCE');