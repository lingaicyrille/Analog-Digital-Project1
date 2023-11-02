clc
clear 

load Our_Signal2.mat
load Make_Digital.mat

n=75; %length of data stream to be viewed (8bit)
b = [coded];

figure(1)
subplot (4,1,1); 
plot(t,s, 'r');
title('Original Signal');
ylabel('amplitude');
xlabel('time');
grid on;

f1=1;  %frequency of carrier signal 1
f2=2;  %frequency of carrier signal 2
t=0:1/30:1-1/30; %time scale


%FSK
sf0=sin(2*pi*f1*t);  %freq of carrier signal if 0
E0=sum(sf0.^2);
sf0=sf0/sqrt(E0);  %Carrier signal if 0
sf1=sin(2*pi*f2*t); %freq of carrier signal if 1
E1= sum(sf1.^2);
sf1=sf1/sqrt(E1);  %Carrier signal if 1



%Modulations
fsk=[];

for i=1:n           %loop to determine which carrier to use
    if b(i)==1
        fsk=[fsk sf1]; %if the binary digit is 1, use sf1
    else
        fsk=[fsk sf0]; %if binary digit is 0, use sf0
    end
end

subplot(4,1,2)
stairs(0:75,[b(1:75) b(75)],'LineWidth',1.5)
axis([0 75 -0.5 1.5])
title ('Imported PCM Signal')
xlabel ('Time ms')
ylabel ('Amplitude')
grid on;

tb=0:1/30:75-1/30;
subplot(4,1,3)
plot(tb,fsk(1:75*30),'r')
axis tight;
title('FSK Modulation (transmitted signal)')
xlabel ('Time---->')
ylabel ('Amplitude---->')
grid on;


%Demodulation
qunt=reshape(coded,7,length(coded)/7);
index=bi2de(qunt','left-msb');
q=del*index+vmin+(del/2);

subplot(4,1,4);
plot(q);
axis tight;grid;
title('Demodulated Recieved signal');
ylabel('amplitude');
xlabel('time ms');
