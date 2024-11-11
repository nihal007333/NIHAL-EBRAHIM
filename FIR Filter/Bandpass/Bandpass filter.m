%bandpass filter
clc;
clear all;
close all;
wc2=0.5*pi;
wc1=0.2*pi;
N=input('Please enter the order of the filter: ');
alpha=(N-1)/2;
n=0:1:N-1;
eps=0.001;
w=0:0.01:pi;%note the normalization later
hd=((sin(wc2*(n-alpha+eps))-sin(wc1*(n-alpha+eps)))./(pi*(n-alpha+eps))); %Coefficients of IIR filter
freq_hd=freqz(hd,1,w);
w_rect=boxcar(N);
w_hann=hamming(N);
w_hamm=hamming(N);
w_bartlett=bartlett(N);

subplot(4,2,1);
stem(w_rect);
title('Rectangular Window sequence');
xlabel('No. of samples');
ylabel('Amplitude');

hn1=hd.*w_rect;%both beingrow vectors
h1=freqz(hn1,1,w);
subplot(4,2,2);
plot(w/pi,10*log10(abs(h1))); %To find magnitude in db,w/pi taken to normalize frequency axis from 0 to 1
title('Frequency response of windowed FIR filter');
xlabel('normalized frequency');
ylabel('Magnitude in dB');

subplot(4,2,3);
stem(w_hamm);
title('Hamming Window sequence');
xlabel('No. of samples');
ylabel('Amplitude');

hn2=hd.*w_hamm; %both being row vectors
h2=freqz(hn2,1,w);
subplot(4,2,4);
plot(w/pi,10*log10(abs(h2))); %To find magnitude in db,w/pi taken to normalize frequency axis from 0 to 1
title('Frequency response of windowed FIR filter');
xlabel('normalized frequency');
ylabel('Magnitude in dB');

subplot(4,2,5);
stem(w_hann);
title('Hanning Window sequence');
xlabel('No. of samples');
ylabel('Amplitude');

hn3=hd.*w_hann; %both being row vectors
h3=freqz(hn3,1,w);
subplot(4,2,6);
plot(w/pi,10*log10(abs(h3))); %To find magnitude in db,w/pi taken to normalize frequency axis from 0 to 1
title('Frequency response of windowed FIR filter');
xlabel('normalized frequency');
ylabel('Magnitude in dB');
subplot(4,2,7);
stem(w_bartlett);
title('Triangular Window sequence');
xlabel('No. of samples');
ylabel('Amplitude');

hn4=hd.*w_bartlett'; %both being row vectors
h4=freqz(hn4,1,w);
subplot(4,2,8);
plot(w/pi,10*log10(abs(h4))); %To find magnitude in db,w/pi taken to normalize frequency axis from 0 to 1
title('Frequency response of windowed FIR filter');
xlabel('normalized frequency');
ylabel('Magnitude in dB');