clc;
% Read the signal
x=[1,2,3,6,5,4];
y=[4,5,6,3,2,1];
% define the axis
n=0:1:length(x)-1;

% plot the signal
subplot(3,1,1);
stem(n,x);
xlabel('x value');

subplot(3,1,2);
stem(n,y);
xlabel('y value');

% cross correlate the signal
p=xcorr(x,x);
% the axis for auto correlation results
np=-length(x)+1:length(x)-1;

% display the result
subplot(3,1,3);
stem(np,p)
% properties of Rxx(0) gives the energy of the signal
% find energy of the signal
energy=sum(x.^2);
%set index of the centre value
centre_index=ceil(length(p)/2);
% Acces the centre value Rxx(0)
q=p(centre_index);
% Check if the Rxx(0)=energy
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