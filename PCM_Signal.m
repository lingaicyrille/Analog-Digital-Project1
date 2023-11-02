clc;
close all;
clear all:

n=8; %number of bits 
n1=8; %frequency sampling rate 
L=2^n; 
load Our_Signal2.mat

%x=0:2*pi/n1:4*pi;
%s=10*sin(x);
s=real(Signal);

subplot (4,1,1); 
plot(t,s);
title('Original Signal');
ylabel('amplitude');
xlabel('time');

vmax=10;
vmin=-vmax;
del=(vmax-vmin)/L;
part=vmin:del:vmax;
code=vmin-(del/2):del:vmax+(del/2);
[ind,q]=quantiz(b,part,code);
l1=length(ind);
l2=length(q);

for i=1:l1
    if(ind(i)~=0)
        ind(i)=ind(i)-1;
    end 
    i=i+1;
end 
ind;
for i=1:l2
    if(q(i)==vmin-(del/2))
        q(i)=vmin+(del/2);
    end 
end 
q;
subplot(4,1,2);
stem(t,q);
grid on;
title('quantize signal');
ylabel('amplitude');
xlabel('time');

code=de2bi(ind,'left-msb');
k=1;
for i=1:l1
    for j=1:7
        coded(k)=code(i,j);
        j=j+1;
        k=k+1;
    end
  i=i+1;
end
coded;
save Make_Digital.mat