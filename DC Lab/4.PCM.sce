clc ;
clear ;
f=2;
t =0:0.01 :2;
a =2;

msg =a*sin (2.* %pi *f*t);
subplot (3,1,1);
plot (t, msg); 
xlabel ('TIME '); 
ylabel('AMPLITUDE');
title ('Message Signal' );
x1=msg+a; // Level Shifting to one sided signal
disp (x1, 'Discrete sampled values for message signal' )
// Display sampled values
subplot (3,1,2);
quant = round (x1); // Quantization
plot (t, quant);
xlabel ('TIME');
ylabel('AMPLITUDE');
title ('Modulated Signal' );
disp (quant, 'Quantised sampled values' );
// Displays quantised values
enco = dec2bin (quant ); // Encoding in to binary data
disp (enco, 'encoded values' );
// Displays encoded values
