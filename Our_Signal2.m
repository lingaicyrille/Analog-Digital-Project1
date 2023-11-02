clc
clear
close all

% Signal Generation
 
 fc = 1000; %% Carrier Frequency choosing 1000 because it is sufficent at displaying rhis signals spectrum.
 fs = 1000; %% Signal Frequency it uses all of the shift
 fm = 1000;
 
% Time axis for the signal
 N = 20;            %number of harmonics to calculate 20 makes a really good signal
 T = 0.01;          %period of signal 10 miliseconds
w0 = (2*pi)*(1/T);  %omega    
syms t              %make t symbolic

% Piecewise functions
funA = t;
funB = (-4*t + 0.02);
funC = (-t + 0.005);
funD = (4*t - 0.04);


% Solve for Cn
for n = 0:N
Cn(n+1) = (1/T) * (int(funA*exp(-j*w0*n*t),t,0,0.004) + int(funB*exp(-j*w0*n*t),t,0.004,0.005) ...
+ int(funC*exp(-j*w0*n*t),t,0.005,0.009) + int(funD*exp(-j*w0*n*t),t,0.009,0.01));
end


% Solve for Xt variable for data plot
for n = 1:N
Output(n+1) = Cn(n+1) * exp(j*w0*n*t) + conj(Cn(n+1)) * exp(-j*w0*n*t);
end


t = [-0.010:.0001:.020]; %period at which i want my graph to show me

Zn = sqrt((Cn.^2)+(Output.^2));

% Combine both Cn and Xt
Signal_Generation = 1000.*(Cn(1) + sum(Output));
Signal = eval(Signal_Generation);


figure("Name",'Signal Generation')
%plot 
subplot(2,1,1)
plot(t, Signal, 'r')
title('Signal Generation')
xlabel('Time[s]')
ylabel('v(t)')
grid on

% subplot(2,1,2);
% stem(1:N,Zn,'b');
% ylabel('A');
% xlabel('N');
% title('spectrum Plot');%messing some other parts up later in code.


save Our_Signal2.mat % save for later!