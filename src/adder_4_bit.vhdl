library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity adder_4_bit is
    port (
        a, b : in std_logic_vector(3 downto 0);
        cin  : in std_logic;

        sum  : out std_logic_vector(3 downto 0);
        cout : out std_logic
    );
end entity;

architecture adder_4_bit_arch of adder_4_bit is
    component full_adder is
        port (
            a, b, cin : in std_logic;
        
            sum, cout  : out std_logic
        );
    end component;

    signal c_temp : std_logic_vector(2 downto 0);

begin
    bit0 : full_adder port map (a(0), b(0), cin, sum(0), c_temp(0));
    bit1 : full_adder port map (a(1), b(1), c_temp(0), sum(1), c_temp(1));
    bit2 : full_adder port map (a(2), b(2), c_temp(1), sum(2), c_temp(2));
    bit3 : full_adder port map (a(3), b(3), c_temp(2), sum(3), cout);
end architecture;
