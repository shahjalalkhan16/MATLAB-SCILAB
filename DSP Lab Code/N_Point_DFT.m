clc;
% 4,[1 2 3 4]
N=input('Enter the value of N in N-Point DFT');
x=input('Enter the sequence for which DFT is to be calculated');
n=0:1:N-1;
k=0:1:N-1;
WN=exp(-1j*2*pi*n'*k/N);% row column soman thakle multiplication hobe

Xk=x*WN
MagX=abs(Xk)
PhaseX=angle(Xk)*180/pi
figure(1);
subplot(2,1,1);
stem(x,MagX);
subplot(2,1,2);
plot(k,PhaseX);
