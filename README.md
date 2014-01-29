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

#Code
Initially, for 3-bit funcionality the input and output signals must be declared
```VHDL
 Port ( A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            C : in  STD_LOGIC;
            X : out  STD_LOGIC;
            Y : out  STD_LOGIC;
            Z : out  STD_LOGIC);
 end Lab1_Spence;
``` 
Then, the architecture of the program must be declared.
```VHDL
 architecture Behavioral of Lab1_Spence is
 signal A_NOT, B_NOT, C_NOT, D, E, F, G, H, I, J : STD_LOGIC;
 begin
```
And finally, the logic deduced from the sop equations must be implemented.
```VHDL
 A_NOT <= not A;
 B_NOT <= not B;
 C_NOT <= not C;
 D <= A_NOT and B; 
 E <= A_NOT and C; 
 F <= A and B_NOT;
 G <= F and C_NOT;
 H <= G or E;
 X <= H or D;
 I <= B and C_NOT;
 J <= B_NOT and C;
 Y <= I or J;
 Z <= C;
```

I then had to create a ucf code to properly implement and assign the 0's and 1's from the program to my board.
```ucf
NET "C" LOC = "G18"; 
NET "B" LOC = "H18"; 
NET "A" LOC = "K18"; 

NET "Z" LOC = "J14";
NET "Y" LOC = "J15";
NET "X" LOC = "K15";
```

#8 bit code
The 8 bit code required the additon of a separate library and defining the inputs in a slightly different manner.
```VHDL
use ieee.numeric_std.all;
 entity twoscompliment is
   port (   
            --Inputs
            A : in std_logic_vector (7 downto 0);
            --Outputs
            Z : out std_logic_vector (7 downto 0)
         );
 end twoscompliment;
```
 The most important line of code inverted all of the inputs and added one to the result to get the appropriate 8 bit number.
```Vhdl
  Z    <= std_logic_vector (unsigned(not (A)) + 1);
 end twoscompliment_v1;
```
The ucf implementation for the 8 bit file was very similar to that of the three bit file; it just contained more lights and switches.
```ucf
NET "A[0]" LOC = "G18";
NET "A[1]" LOC = "H18";
NET "A[2]" LOC = "K18";
NET "A[3]" LOC = "K17";
NET "A[4]" LOC = "L14";
NET "A[5]" LOC = "L13"; 
NET "A[6]" LOC = "N17"; 
NET "A[7]" LOC = "R17"; 

NET "Z[0]" LOC = "J14";
NET "Z[1]" LOC = "J15";
NET "Z[2]" LOC = "K15";
NET "Z[3]" LOC = "K14";
NET "Z[4]" LOC = "E17";
NET "Z[5]" LOC = "P15";
NET "Z[6]" LOC = "F4";
NET "Z[7]" LOC = "R4";
```

#Debugging
When creating the first ucf file (for the 3-bit model) I encountered issues with the msb and had to switch the order of A,B, and C. 
When creating the vhdl file for the 8 bit model, I encountered issues with defining Z in the "begin" section. 
This turned out to be due to me using generic coding due to having a general lack of orientation with coding. I fixed this and then the syntax worked correctly for everything.

#Testing
I demonstrated the functionality of my 3 bit converter to Captain Silva in class on Monday the 27th of January and demonstrated the funtionality of my 8 bit converter to him in his office later that day. 

#Final Schematic
Below is the schematic for the 8 bit converter. Instead of using multiple logic equations, it simply uses an inversion command and adds one, hence performing the arithmatic done to get the two's complement. It can easily be modified for any number of inputs.
![alt tag] (https://raw.github.com/TylerSpence/ECE281_Lab1/master/8bitschematic.png)


