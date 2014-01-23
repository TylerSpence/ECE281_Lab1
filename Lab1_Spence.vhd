----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:23 01/22/2014 
-- Design Name: 
-- Module Name:    Lab1_Spence - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Spence is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Spence;

architecture Behavioral of Lab1_Spence is
signal A_NOT, B_NOT, C_NOT, D, E, F, G, H, I, J : STD_LOGIC;
begin

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

end Behavioral;

