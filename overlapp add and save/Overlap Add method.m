clc;
clear all;
close all;
% Step 1: Define the Input Signal and Filter
Xn = input("enter the elements of x: ");  
Hn = input ("enter the elements of h: ");                         
L = 5;                                  

NXn = length(Xn);                     
M = length(Hn);                        
M1 = M - 1;                           
R = rem(NXn, L);                      
N = L + M1;                           

% zero padding
Xn = [Xn, zeros(1, L - R)];          
Hn = [Hn, zeros(1, N - M)];          

 %overlap add method
K = floor(length(Xn) / L);           
y = zeros(1, length(Xn) + M - 1);     
z = zeros(1, M1);                     

for k = 0:K-1
    startIndex = L * k + 1;
    endIndex = min(startIndex + L - 1, length(Xn));
    Xnp = Xn(startIndex:endIndex);

    Xnk = [Xnp, z]; 
    convSegment = mycirconv(Xnk, Hn);

    % Add the current segment to the output
    outputStart = startIndex;
    outputEnd = outputStart + N - 1;
    y(outputStart:outputEnd) = y(outputStart:outputEnd) + convSegment(1:N);
end


disp('Input Signal:');
disp(Xn);
disp('Filter:');
disp(Hn);
disp('Output Signal (Convolved using Overlap-Add Method):');
disp(y);

% Function for Circular Convolution
function y = mycirconv(x, h)
    % Compute the circular convolution using FFT
    N = max(length(x), length(h));
    y = ifft(fft(x, N) .* fft(h, N)); % FFT-based circular convolution
end
