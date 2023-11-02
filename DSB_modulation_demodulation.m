clc
clear 
close all

    

warning('off','all'); %ignore the annoying warnings given by ignoring the complex portion of our values.
warning;

load Our_Signal2.mat

Car_Freq = 1000;       % Carrier Frequency 
Car_Sig = cos(2*pi*Car_Freq*t);     %carrier signal (cos wave)

DSB_MOD = Car_Sig .* Signal;     %DSB modulation, mult carrier signal to signal 

% Modulation factor for AM modulation
m = 0.5;
vam = m.*DSB_MOD + Car_Sig; 

subplot(4,1,1)
plot(t, Signal, 'r')
title('Original Signal')
ylabel('Amplitude');
xlabel('Time[s]');
grid on;

subplot(4,1,2)
plot(t,vam);
title('Double Side Band Modulation')
xlabel('Time')
ylabel('Amplitude')
grid

nfft = length(vam); %Get the length of the input signal
AM_Sig_Fourier = fft(vam,nfft); %Perform an FFT of this input signal over the length
AM_Sig_Fourier = AM_Sig_Fourier(1:nfft/2); %ONLY take the upper half of the FFT, engineers don't fool with negative frequencies

xfft = fs.*(0:nfft/2-1)/nfft;
xfft(100)=0;
subplot(4,1,3)
stem(xfft,abs(AM_Sig_Fourier/max(Signal)),'r');
axis([25 175 0 50])
title('AM Frequency Spectrum')
xlabel('Frequency----->')
ylabel('Amplitude----->')
grid on;

%% AM Demodulation

AM_Dsb_Out = (vam - Car_Sig)./m; %inverse the process used for modulation
AM_Demod = AM_Dsb_Out./Car_Sig;

subplot(4,1,4)
plot(t,AM_Demod);
title('Double Side Band Demodulation')
xlabel('Time')
ylabel('Amplitude (mV)')
grid