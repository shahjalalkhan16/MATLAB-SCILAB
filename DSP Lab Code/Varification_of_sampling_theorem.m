clc;%clear the command window
close all;

f1=50;
t=0:.001:.1;
y=cos(2*pi*f1*t);
fm=f1;

%under sampling
fs=1.5*fm;%sampling frequency
ts=1/fs;
tx=0:ts:0.1;

ys=cos(2*f1*pi*tx);
figure(1);
subplot(3,1,1);
plot(t,y);
title('Sinusoidal signal y(t)');
xlabel('Time in seconds');
ylabel('Amplitude in volts');

subplot(3,1,2);
stem(tx,ys);
grid on;
title('Discrete signal sampled below the nyquist rate');
xlabel('Time in seconds');
ylabel('Amplitude in volts');

subplot(3,1,3);
plot(tx,ys);
grid on;
title('Recovered sinusoidal sampled below the nyquist rate');
xlabel('Time in seconds');
ylabel('Amplitude in volts');

%Right sampling 
fs=2*fm;%sampling frequency
ts=1/fs;
tx=0:ts:0.1;


ys=cos(2*f1*pi*tx);
figure(2);
subplot(3,1,1);
plot(t,y);
grid on;
title('Sinusoidal signal y(t)');
xlabel('Time in seconds');
ylabel('Amplitude in volts');

subplot(3,1,2);
stem(tx,ys);
grid on;
title('Discrete signal sampled at the nyquist rate');
xlabel('Time in seconds');
ylabel('Amplitude in volts');

subplot(3,1,3);
plot(tx,ys);
grid on;
title('Recovered sinusoidal sampled at the nyquist rate');
xlabel('Time in seconds');
ylabel('Amplitude in volts');

%Over sampling 
fs=10*fm;%sampling frequency
ts=1/fs;
tx=0:ts:0.1;

ys=cos(2*f1*pi*tx);
figure(3);
subplot(3,1,1);
plot(t,y);
grid on;
title('Sinusoidal signal y(t)');
xlabel('Time in seconds');
ylabel('Amplitude in volts');

subplot(3,1,2);
stem(tx,ys);
grid on;
title('Discrete signal sampled at greater than the nyquist rate ');
xlabel('Time in seconds');
ylabel('Amplitude in volts');

subplot(3,1,3);
plot(tx,ys);
grid on;
title('Recovered sinusoidal sampled at fs=3*fm Hz');
xlabel('Time in seconds');
ylabel('Amplitude in volts');