ECE281_Lab1
===========

#Truth Table



|  A |  B  |  C  |  X  |  Y  |  Z  |
|--:|--: |--: |--:| --:| --:|
|  0 |  0  |  0  |   0 |   0 |   0 |
|  0 |  0  |  1  |   1 |   1 |   1 |
|  0 |  1  |  0  |   1 |   1 |   0 |
|  0 |   1 |  1  |   1 |   0 |   1 |
|  1 |  0  |  0  |   1 |   0 |   0 |
|  1 |  0  |  1  |   0 |   1 |   1 |
|  1 |  1  |  0  |   0 |   1 |   0 |
|  1 |  1  |  1  |   0 |   0 |   1 |

#Minimal SOP Equations
X=A'(B+C)+AB'C' 

Y=BC'+B'C

Z=C

#Analysis of Waveform:
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab1/master/screenshot.png)

#Schematic
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab1/master/circuit%202.png)

The results of the waveform correspond with the intended results of the truth table. For each level on the waveform graph there are two discrete values, corresponding to a 0 and 1. Each level corresponds to the intended value on the truth table.
