
clc; clear; fs= 150;
t =0:1/fs :1;

msg =2*sin (2.* %pi *4*t); p= length (msg);
subplot (3,1,1)
plot (t,msg);
title ( 'Message Signal' );
xlabel('TIME');
ylabel( 'Amplitude ' );

delta = (2. *%pi *2*4)/fs;
disp (delta, 'The Step Size is ') // Generation of Delta Modulation 
delta_mod =0
for i=1:p
    if msg (i)>delta_mod (i)
    d(i)=1;
    delta_mod (i+1) = delta_mod (i)+ delta ;
    else
    d(i)=0;
    delta_mod (i+1) = delta_mod (i) - delta ;
    end
end
subplot (3,1,2)
plot2d2(delta_mod );
title ( 'Delta Modulated Output' );
xlabel('TIME' );
ylabel('AMPLITUDE' );

