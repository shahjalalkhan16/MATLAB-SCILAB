clc;
%input 4,[10 -2+2i -2 -2-2i]
N=input('Enter the value of N in N-Point IDFT');
x=input('Enter the sequence for which DFT is to be calculated');
n=0:1:N-1;
k=0:1:N-1;
WN=exp(1j*2*pi*n'*k/N);
Xk=x*WN/N;
MagX=abs(Xk)
PhaseX=angle(Xk)*180/pi
figure(1);
subplot(2,1,1);
stem(k,MagX);
subplot(2,1,2);
plot(k,PhaseX);

