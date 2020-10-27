library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity and_gate_tb is
end entity;

architecture and_gate_tb_arch of and_gate_tb is
    component and_gate is
        port (
            -- Input
            a, b : in std_logic;
    
            -- Output
            y    : out std_logic
        );
    end component;

    signal a, b, y : std_logic;

begin
    and_gate_instance : and_gate
        port map (
            a  => a,
            b  => b,
            y  => y
        );

    stimulus : process
    begin
        --
        a <= '0';
        b <= '0';
        wait for 50 ns;
        assert(y = '0') report "Test Failed: a = 0, b = 0" severity error;
        
         --
         a <= '0';
         b <= '1';
         wait for 50 ns;
         assert(y = '0') report "Test Failed: a = 0, b = 1" severity error;

        --
        a <= '1';
        b <= '0';
        wait for 50 ns;
        assert(y = '0') report "Test Failed: a = 1, b = 0" severity error;

         --
         a <= '1';
         b <= '1';
         wait for 50 ns;
         assert(y = '1') report "Test Failed: a = 1, b = 1" severity error;
    end process;
end architecture;
