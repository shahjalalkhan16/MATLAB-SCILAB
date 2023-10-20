
clc;
clear;
close

n = [1 0 1 0 0 1]
//Binary to polar conversion of Bits

for m=1:length (n)
    if n(m)==0
        nn(m)=-1;
    else
        nn(m)=1;
        end
end

i =1;
t =0:0.01: length (n);
for j=1: length (t)
    if t(j) <=i
        data (j) =nn(i);
     else
         i=i+1;
         data (j)=nn(i)
     end
end
subplot(4, 1, 1);
plot(t,data);
set(gca(),"data_bounds",matrix([0,length(n),-1.5,1.5],2,-1));
xlabel('TIME');
ylabel('AMP');
title('Binary Input');

carrier1 = sin(2.*%pi*2*t)
subplot(4,1,2)
plot(t,carrier1);
xlabel('TIME');
ylabel('AMP');
title('Carrier1 ');

carrier2 = sin(2.*%pi*4*t)
subplot(4,1,3)
plot(t,carrier2);
xlabel('TIME');
ylabel('AMP');
title('Carrier2 ');

for j=1: length (t)
    if data (j)==1
        fsk (j)=carrier1(j);
     else
         fsk (j)=carrier2(j);
     end
end

//z = carrier';
//bpsk =data .*z;
subplot(3,1,3)
plot(t,fsk);
xlabel('TIME');
ylabel('AMP');
title('Binary FSK');
