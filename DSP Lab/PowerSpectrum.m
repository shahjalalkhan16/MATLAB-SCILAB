clc;
clear all;
close all;
N=1024;
fs=8000;
f=input('enter the frequency:');
n=0:N-1;
x = sin(2*pi*(f/fs)*n);
%pxx=spectrum(x,N);
pxx = spectrum(x,N);
specplot(pxx,fs);
grid on
xlabel('freq(hz)');
ylabel('magnitude(db)');
title('power spectrum of x(n)')