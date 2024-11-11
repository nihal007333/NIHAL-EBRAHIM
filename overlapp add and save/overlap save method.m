clc;
clear all;
close all;
x=input("enter the elements of x: ");
h= input("enter the elements of h: ");
N=5;


% Code to perform Convolution using Overlap Save Method
lx=length(x);
lh=length(h);
m=lh-1;
x=[zeros(1,m) x zeros(1,lx+lh-1)];
disp(x);
h=[h zeros(1,N-lh)];
L=N-lh+1;
k=5;%floor((length(h))/L);
for i=0:k-1
y=x(1,i*L+1:i*L+N);
disp(y);
q=mycirconv1(y,h);  %Call the mycirconv1 function.
p(i+1,:)=q;
end
p1=p(:,lh:N)';
p=p1(:)'

% Function for Circular Convolution
function y = mycirconv1(x, h)
    % Compute the circular convolution using FFT
    N = length(x);
    y = ifft(fft(x) .* fft(h, N)); % FFT-based circular convolution
end
disp(p);
%for verification 
disp(cconv(x,h))
