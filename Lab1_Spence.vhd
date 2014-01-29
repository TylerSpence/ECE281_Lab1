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
use ieee.numeric_std.all;
entity twoscompliment is
  port (   
           --Inputs
           A : in std_logic_vector (7 downto 0);
           --Outputs
           Z : out std_logic_vector (7 downto 0)
			  );
end twoscompliment;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--entity Lab1_Spence is
   -- Port ( A : in  STD_LOGIC;
    --       B : in  STD_LOGIC;
    --       C : in  STD_LOGIC;
    --       X : out  STD_LOGIC;
      --     Y : out  STD_LOGIC;
      --     Z : out  STD_LOGIC);
--end Lab1_Spence;

architecture twoscompliment_v1 of twoscompliment is

begin

  Z    <= std_logic_vector (unsigned(not (A)) + 1);
end twoscompliment_v1;

