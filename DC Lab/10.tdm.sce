clc; close; clear;

fs = 100;
t = 0:1/fs:1;

// GENERATION OF 3 MESSAGE SIGNALS FOR MULTIPLEXING
message_1 = 2 * sin(2 * %pi * 3 * t);  // Sine wave signal
figure(1)
subplot(3, 1, 1)
plot2d3(t, message_1); 
xlabel('TIME');
 ylabel('AMPLITUDE');
title('MESSAGE SIGNAL 1 (SINE WAVE)');

message_2 = 1 * squarewave(2 * %pi * 3 * t);  // Square wave
subplot(3, 1, 2)
plot2d3(t, message_2);
 xlabel('TIME');
 ylabel('AMPLITUDE');
title('MESSAGE SIGNAL 2 (SQUARE WAVE)');

message_3 = 3 * cos(2 * %pi * 3 * t);  // Cosine wave
subplot(3, 1, 3)
plot2d3(t, message_3);
 xlabel('TIME');
 ylabel('AMPLITUDE');
title('MESSAGE SIGNAL 3 (COSINE WAVE)');

// GENERATION OF TIME DIVISION MULTIPLEXED SIGNAL
tdm = 0;  // Initialize TDM signal
j = 1;
for i = 1:3:3* length(t)
    tdm(i) = message_1(j);
    i=i+1;
    tdm(i) = message_2(j);
     i=i+1;
    tdm(i) = message_3(j);
    j = j + 1;
end

figure(2)
subplot(2, 1, 1)
plot2d3(tdm);
xlabel('TIME');
ylabel('AMPLITUDE');
title('TIME DIVISION MULTIPLEXED SIGNAL');
