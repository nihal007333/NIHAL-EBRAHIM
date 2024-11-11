## Aim:
 To generate a sine wave using DSP processor
 
## Theory:

Sinusoidal are the most smooth signals with no abrupt variation in their amplitude, the amplitude witnesses gradual change with time.
Sinusoidal signals can be defined as a periodic signal with waveform as that of a sine wave. 
The amplitude of sine wave increase from a value of 0 at 0° angle to a maximum value of 1 at 90° , it further reaches its minimum value of -1 at 270° and then return to 0 at 360° . After any angle greater than 360° , the sinusoidal signal repeats the values so we can say that time period of sinusoidal signal is 2π i.e. 360°.If we observe the graph, we can see that the amplitude varying gradually with a maximum value of 1 and a minimum value of -1. We can also observe that the wave begins to repeat its value after a time period or angle value of 2π hence periodicity of sinusoidal signal is 2π.
These are sinusoidal signal parameters:

• Graph: It is a plot used to depict the relation between quantities. Depending upon the number of variables, we can decide to number of axes each perpendicular to the other.

• Time period: The period for a signal can be defined as the time taken by a periodic signal to complete one cycle.

• Amplitude: Amplitude can be defined as the maximum distance between the horizontal axis and the vertical position of any signal. 

• Frequency: This can be defined as the number of times a signal oscillates in one second. It can be mathematically defined as the reciprocal of a period.

• Phase: It can be defined as the horizontal position of a waveform in one oscillation. The symbol θ is used to indicate the phase. 

If we consider a sinusoidal signal y(t) having an amplitude A, frequency f, and phase of quantity then we can represent the signal as

                                           𝑦(𝑡) = 𝐴 𝑠𝑖𝑛(2𝜋𝑓𝑡 + 𝜃)
                                           
 If we denote 2πf as an angular frequency ω the we can re-write the signal as 
 
                                            𝑦(𝑡) = 𝐴 𝑠𝑖𝑛(𝜔𝑡 + 𝜃 )



## PROCEDURE 
 
1.	Open Code Composer Studio,
 Click on File -  New – CCS Project 
 Select the Target – C674X Floating point DSP , TMS320C6748 , and  
 Connection – Texas Instruments XDS 100v2 USB Debug Probe and Verify.
 Give  the project name and select Finish. 
2.	Type the code program for generating the sine wave and choose 
 File – Save As and then save the program with a name including ‘main.c’. Delete the already existing main.c program.  
3.	Select Debug and once finished, select the Run option. 

4.	From the Tools Bar, select Graphs – Single Time. 
Select the DSP Data Type as 32-bit Floating point and time display unit as second(s). Change the Start address with the array name used in the program(here,s). 
5.	Click OK to apply the settings and Run the program or clock Resume in CCS. 

## Observation
![image](https://github.com/user-attachments/assets/31017001-9cac-4acd-a8b2-8ee495ba8b32)
