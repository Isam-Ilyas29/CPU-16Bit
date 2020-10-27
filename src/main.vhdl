library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity full_adder is
    port (
        a, b, cin : in std_logic;
        
        sum, cout  : out std_logic
    );
end entity;

architecture full_adder_arch of full_adder is
begin
    sum <= a xor b xor cin;
    cout <= (a and b) or (a and cin) or (b and cin);
end architecture;
