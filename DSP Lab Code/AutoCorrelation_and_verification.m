clc;
close all;

x=[1,2,3,6,5,4];
n=0:1:length(x)-1;
subplot(2,1,1);
stem(n,x);
xlabel('n');

p=xcorr(x,x);
np=-length(x)+1:length(x)-1;
subplot(2,1,2);
stem(np,p)

energy=sum(x.^2);
centre_index=ceil(length(p)/2);
q=p(centre_index);
if q==energy
disp('p(0) gives energy proved');
else
disp('p(0) gives energy not proved');
end
p_right=p(centre_index:1:length(p));
p_left=p(centre_index:-1:1);
if p_right==p_left
disp('p is even');
else
disp('p is not even');
end