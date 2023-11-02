load Our_Signal2.mat

warning('off','all');
warning;  

%f= 1/10;
%w = 2*pi*f;
Car_Freq = 1000;       % Carrier Frequency 
Car_Sig = cos(2*pi*Car_Freq*t);     %carrier signal

Base_Hilber = imag(hilbert(Signal)); % to obtain the minimum-phase response from a spectral analysis
sb = Signal.*cos(2*pi*Car_Freq*t) + Base_Hilber.*sin(2*pi*Car_Freq*t);

subplot(4,1,1)
plot(t, Signal, 'r')
title('Original Signal')
ylabel('Amplitude');
xlabel('Time(s)');
grid on;

subplot(4,1,2)
plot(t,sb);
title('Single Sideband Modulation'); 
xlabel('Time');
ylabel('Amplitude');
grid

nfft = length(sb); %this Gets the length of the input signal
SSB_Sig_Four = fft(sb,nfft); %this does an Fourier Transform using the input signal
SSB_Sig_Four = SSB_Sig_Four(1:nfft/2); % gets only pos frequencies

xfft = fs.*(0:nfft/2-1)/nfft;

subplot(4,1,3)
stem(xfft,abs(SSB_Sig_Four/max(Signal)),'r');
axis([25 100 0 200])   %only shows up to 100 as we only have half freq spectrum for SSB
title('Single Sideband Frequency Spectrum')  
xlabel('Frequency')
ylabel('Amplitude')

%% SSB Demodulation

% Multiply the SSB signal by the carrier, then apply a lowpass filter
ssb_mult_carrier = sb .* Car_Sig;
ssb_output_lowpass = lowpass(ssb_mult_carrier,100,1000); %single side band outputs

subplot(4,1,4);
plot(t,ssb_output_lowpass)
title('Demodulated Signal')
xlabel('Time')
ylabel('Amplitude')
grid