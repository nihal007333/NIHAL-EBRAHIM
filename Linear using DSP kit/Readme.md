## Aim
To perform linear convolution of two sequences using DSP processor

## Theory
Linear convolution is one of the fundamental operations used extensively in signal and system in electrical engineering. It has applications in areas like audio processing, signal filtering, imaging, communication systems and more.
In simple terms, linear convolution is the process of combining two signals or functions to produce a third signal or function. Formally, the linear convolution of two functions f(t) and g(t) is defined as: 
The formula for linear convolution of two discrete signals x[n] and h[n] is given by: 

![image](https://github.com/user-attachments/assets/c4a3f160-20d9-44ac-befa-6c71f0a77d8b)

where: 
x[n] is the input signal. 
 
h[n] is the impulse response of the system. 

y[n] is the output signal. 
In the context of linear convolution in DSP, this operation is applied to digital signals. DSP systems utilize algorithms to perform convolution efficiently, often leveraging Fast Convolution methods to handle large datasets and real-time processing. 

Applications of Linear Convolution : 
	Filtering: Used in digital filters to process signals. 
 
Image Processing: Applied for edge detection and blurring. 
 
System Analysis: Helps in analyzing LTI systems in response to inputs

## Procedure 

Open Code Composer Studio,
 Click on File -  New – CCS Project 
 
Select the Target – C674X Floating point DSP , TMS320C6748 , and  
Connection – Texas Instruments XDS 100v2 USB Debug Probe and Verify. 

Give the project name and select Finish. 

Type the code program for performing linear convolution and choose 

 File – Save As and then save the program with a name including ‘main.c’.
 
 Delete the already existing main.c program. 
 
Select Debug and once finished, select the Run option. 

In the Debug perspective, click Resume to run the code on DSP. Observe the console output to verify the convolution result. 
## Observation
![image](https://github.com/user-attachments/assets/e6567710-006c-4d15-906c-46c0fafd7294)
