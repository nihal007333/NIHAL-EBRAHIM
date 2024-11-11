# EXPERIMENT 10 : OVERLAP ADD AND OVERLAP SAVE METHOD

To simulate linear convolution of two signals using overlap add and overlap save methods

1.	Overlap-Add Method
This procedure cuts the signal up into equal length segments with no overlap. Then it zero-pads the segments and takes the DFT of the segments. Part of the convolution result corresponds to the circular convolution. The tails that do not correspond to the circular convolution are added to the adjoining tail of the previous and subsequent sequence. This addition results in the aliasing that occurs in circular convolution.

2.	Overlap-Save Method 
This procedure cuts the signal up into equal length segments with some overlap. Then it takes the DFT of the segments and saves the parts of the convolution that correspond to the circular convolution. Because there are overlapping sections, it is like the input is copied therefore there is not lost information in throwing away parts of the linear convolution.

# Observation
![Screenshot 2024-11-08 002244](https://github.com/user-attachments/assets/62aaa530-7a18-4672-8847-ea4e1b8c494a)
