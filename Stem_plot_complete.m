close all

syms t k
T=10;
ck=1/T*(int(t*exp(-j*k*pi/5*t),t,0,4)+int((-4*t+20)*exp(-j*k*pi/5*t),t,4,5)+...
    int((-t+5)*exp(-j*k*pi/5*t),t,5,9)+int((4*t-40)*exp(-j*k*pi/5*t),t,9,10))

% %Probe
% k=1;eval(ck)
% k=-1;eval(ck)

c0=eval(limit(ck,k,0))  %c_0=0

t=-10:.1:10;
T=10;
w0=2*pi/T;
x_t=zeros(1,length(t))+c0;

for m=1:length(t)
    k=m;cm=eval(ck);
    x_t=x_t+cm*exp(j*w0*m*t)+cm'*exp(-j*w0*m*t);
end

k=1:10
pp=eval(ck)

subplot(211)
stem(k,real(pp))
title('Real')
xlabel('Frequency');
ylabel('Magnitude')
grid

subplot(212)
stem(k,imag(pp))
title('imaginary')
xlabel('Frequency')
ylabel('Magnitude')
grid