%function [t,x_t] = Our_Signal();

syms t k
T = .01; %time of one entire period
ck=1/T*(int(t*exp(-j*k*pi/5*t),t,0,4)+int((-4*t+20)*exp(-j*k*pi/5*t),t,4,5)+...
    int((-t+5)*exp(-j*k*pi/5*t),t,5,9)+int((4*t-40)*exp(-j*k*pi/5*t),t,9,10)) %piecewise function of integrals

% %Probe
% k=1;eval(ck)
% k=-1;eval(ck)

c0 = eval(limit(ck,k,0));  %c_0=0

t=-.01:.0001:.01;
T=.01;
w0=2*pi/T;
x_t=zeros(1,length(t))+c0;

for m=1:length(t)
    k=m;cm=eval(ck);
    x_t=x_t+cm*exp(j*w0*m*t)+cm'*exp(-j*w0*m*t);
end
plot(t,x_t);grid
title('Signal Problem 2-19')
xlabel('time(ms)')
ylabel('Voltage (microvolts)')

save Our_Signal.mat x_t t 
%end
