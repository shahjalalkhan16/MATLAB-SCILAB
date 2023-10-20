

clc; 
clear;
f=10;
t=0:0.001:0.2
x=sin(2*%pi*f*t);
n=5;
impulse=zeros(1, length(t));
for i=1:length(t)
     if n*i<=length(t) then
         impulse(n*i)=1;
    end
end 
I_sample=impulse.*x;
subplot(3,1,1)
plot(t,x, 'linewidth',2);
xgrid;
xtitle("Baseband Signal of frequency 10 MHz", "Time", "Amplitude");
subplot(3,1,2)
plot(t,impulse, 'linewidth',2);
xgrid;
xtitle("Sampling Signal", "Time", "Amplitude");
subplot(3,1,3)
plot(t,I_sample, 'linewidth', 2);
xgrid;
xtitle("Sampled Signal", "Time", "Amplitude");
