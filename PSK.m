clc
clear 

load Our_Signal2.mat
load Make_Digital.mat

n=75; %length of data stream to be viewed (75bit)
b = [coded];

figure(1)
subplot (4,1,1); 
plot(t,s, 'r');
title('Original Signal(refrence)');
ylabel('amplitude');
xlabel('time');
grid on;

f1=1;  %frequency of carrier signal 1
f2=2;  %frequency of carrier signal 2
t=0:1/30:1-1/30; %time scale

sa1=sin(2*pi*f1*t);
E1=sum(sa1.^2);
sa1=sa1/sqrt(E1); %unit energy 
sa0=0*sin(2*pi*f1*t);
%PSK
sp=sin(2*pi*f1*t);
E1=sum(sp.^2);
sp0=-sin(2*pi*f1*t)/sqrt(E1);
sp1=sin(2*pi*f1*t)/sqrt(E1);

%Modulations
psk=[];

for i=1:n
    if b(i)==1
        psk=[psk sa1];
    else      
        psk=[psk sp0];        
    end
end

subplot(4,1,2)
stairs(0:75,[b(1:75) b(75)],'LineWidth',1.5)
axis([0 75 -0.5 1.5])
title ('Imported PCM signal')
xlabel ('Time ms')
ylabel ('Amplitude')
grid on;


tb=0:1/30:75-1/30;

subplot(4,1,3)
plot(tb,psk(1:75*30),'r')
axis tight;
title('Transmitted Signal')
xlabel ('Time us')
ylabel ('Amplitude')
grid on;


%Demodulation
qunt=reshape(coded,7,length(coded)/7);
index=bi2de(qunt','left-msb');
q=del*index+vmin+(del/2);

subplot(4,1,4);
plot(q);
axis tight;
grid;
title('Demodulated Recieved signal');
ylabel('amplitude');
xlabel('time ms');

