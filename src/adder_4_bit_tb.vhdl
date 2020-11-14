library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder_4_bit_tb is
end entity;

architecture adder_4_bit_tb_arch of adder_4_bit_tb is
    component adder_4_bit is
        port (
            a, b : in std_logic_vector(3 downto 0);
            cin  : in std_logic;

            sum  : out std_logic_vector(3 downto 0);
            cout : out std_logic
        );
    end component;

    signal a, b : std_logic_vector(3 downto 0);
    signal cin  : std_logic;
    signal sum  : std_logic_vector(3 downto 0);
    signal cout : std_logic;

begin
    adder_4_bit_instance : adder_4_bit port map (a, b, cin, sum, cout);

    process
    begin
        a <= "1100"; b <= "0101"; cin <= '0'; 
        wait for 50 ns;
        assert((sum = "0001") and (cout = '1')) report "Test Failed!" severity error;

        a <= "1110"; b <= "0011"; cin <= '0'; 
        wait for 50 ns;
        assert((sum = "0001") and (cout = '1')) report "Test Failed!" severity error;

        a <= "1001"; b <= "1101"; cin <= '1'; 
        wait for 50 ns;
        assert((sum = "0111") and (cout = '1')) report "Test Failed!" severity error;
    end process;
end architecture;
