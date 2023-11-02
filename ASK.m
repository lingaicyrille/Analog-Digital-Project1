 
%Ask code
clc
clear 

load Our_signal2.mat
%load Make_Digital.mat

n=75; %length of data stream to be viewed (8bit)
b = [0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 0 1 0 1];
s=real(Signal);
subplot (4,1,1); 
plot(t,s, 'r');
title('Original Signal');
ylabel('amplitude');
xlabel('time');
grid on;

f1=1;  %frequency of carrier signal 1  == %Fc
f2=2;  %frequency of carrier signal 2
t=0:1/30:1-1/30; %time scale  == Tbit

%ASK
Su=sin(2*pi*f1*t);  %Carrier Signal == biteqn
E1=sum(sa1.^2);      %energy of singal 
sa1=sa1/sqrt(E1);     %Signal at 1
sa0=0*sin(2*pi*f1*t); %signal at 0


%Modulations
Fc = 15000 ;
 %delta = 2.5e-7;
 %Tbit = 0:delta:(2.5e-4)-delta;
 %biteqn = sin(2*pi*Fc*Tbit);
 %TSK = 0:delta:0.042-delta;

Gamma = 2.5e-7;
Su=sin(2*pi*f1*t);  %Carrier Signal == biteqn
t=0:1/30:1-1/30; %time scale  == Tbit
TSK = 0:delta:0.042-delta;

ask=[];
sa0 = 0*Su;
sa1 = 1*Su;

for i=1:n               %for loop to check for binary digits in signal
    if b(i)==1
        ask=[ask, sa1];  %if the binary is a 1, use sa1 signal
    else
        ask=[ask, sa0];  %if the binary is a 0, use sa2 signal
    end
end

figure(1)
subplot(4,1,2)
stairs(0:75,[b(1:75) b(75)],'LineWidth',1.5)
axis([0 75 -0.5 1.5])
title ('Encoded Message Signal (from PCM)')
xlabel ('Time-[us]---->')
ylabel ('Amplitude---->')
grid on;

subplot(4,1,3);
tb=0:1/30:75-1/30;
%plot(tb, ask(1:8*30),'b','LineWidth',1.5)
plot(tb, ask(1:75*30),'r')
title('ASK Modulation (Transmitted Signal)')
axis tight;
xlabel ('Time--[us]')
ylabel ('Amplitude')
grid on;


%Demodulation
qunt=reshape(coded,7,length(coded)/7);
index=bi2de(qunt','left-msb');
q=del*index+vmin+(del/2);

subplot(4,1,4);
plot(q);
axis tight;
grid on;
title('Demodulated Recieved signal');
ylabel('amplitude---->');
xlabel('time-[ms]--->')

