%load Our_Signal2.mat
A = 1; % Amplitude

sig_int = 160*pi*1.e-4*cumsum(Signal);
FM_Mod = A*cos(Carrier_Freq*2*pi*t + sig_int);

subplot(3, 1, 1)
plot(t,FM_Mod)
title('Frequency Modulation')
xlabel('Time')
ylabel('Amplitude')
grid

nfft = length(FM_Mod); %Get the length of the input signal
FM_Sig_Fourier = fft(FM_Mod,nfft); %Perform an FFT of this input signal over the length
FM_Sig_Fourier = FM_Sig_Fourier(1:nfft/2); %ONLY take the upper half of the FFT, engineers don't fool with negative frequencies

xfft = fs.*(0:nfft/2-1)/nfft;

subplot(3, 1, 2)
stem(xfft,abs(FM_Sig_Fourier/max(Signal)));
axis([20 180 0 30])
title('Frequency Modulation Frequency Spectrum')
xlabel('Frequency')
ylabel('Amplitude')


%% FM Demodulation

fm_demod = diff(FM_Mod);
fm_demod = [fm_demod, fm_demod(1,end)];
fm_demod = fm_demod/(2*pi*Carrier_Freq);
env=abs(hilbert(fm_demod));
dc=mean(env);
env=env-dc;
demod_scale=20;
env=env*demod_scale;
env=env*max(Signal)/max(env);

subplot(3, 1, 3)
plot(t,env)
title('Frequency Demodulation')
xlabel('Time')
ylabel('Amplitude')
grid
