
clc; 
clear;

f=10;
t=0:0.001:0.2
x=sin(2*%pi*f*t);
n=4;
rec=[0 ones(1,n) zeros(1,n)]; 
while length(rec) <= length(t)
     rec=[rec ones(1,n) zeros(1, n)]
end
rec(length(t) +1:length(rec))=[]
FT_sample=rec.*x;

for i=1:length(rec)
    if rec(i)==1
        FT_sample(i+1:i+n)=FT_sample(i+1)
    end
end

subplot(3,1,1)
plot(t,x,'linewidth',2);
xgrid;
xtitle("Baseband Signal of frequency 10 MHz", "Time", "Amplitude");

subplot(3,1,2)
plot(t,rec, 'linewidth', 2);
xgrid;
xtitle("Sampling Signal", "Time", "Amplitude");

subplot(3,1,3)
plot(t,FT_sample, 'linewidth',2);
xgrid;
xtitle("Sampled Signal", "Time", "Amplitude");
