library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity full_adder_tb is
end entity;

architecture full_adder_tb_arch of full_adder_tb is
    component full_adder is
        port (
            a, b, cin : in std_logic;
        
            sum, cout  : out std_logic
        );
    end component;

    signal a, b, cin, sum, cout : std_logic;

begin
    full_adder_instance : full_adder
        port map (
            a => a,
            b => b,
            cin => cin,
            sum => sum,
            cout => cout
        );
    
    process
    begin
        a <= '0';
        b <= '0';
        cin <= '0';
        wait for 50 ns;
        assert((sum = '0') and (cout = '0')) report "Test Failed, a = 0, b = 0, cin = 0" severity error;
        
        a <= '0';
        b <= '0';
        cin <= '1';
        wait for 50 ns;
        assert((sum = '1') and (cout = '0')) report "Test Failed, a = 0, b = 0, cin = 1" severity error;

        a <= '0';
        b <= '1';
        cin <= '0';
        wait for 50 ns;
        assert((sum = '1') and (cout = '0')) report "Test Failed, a = 0, b = 1, cin = 0" severity error;

        a <= '0';
        b <= '1';
        cin <= '1';
        wait for 50 ns;
        assert((sum = '0') and (cout = '1')) report "Test Failed, a = 0, b = 1, cin = 1" severity error;

        a <= '1';
        b <= '0';
        cin <= '0';
        wait for 50 ns;
        assert((sum = '1') and (cout = '0')) report "Test Failed, a = 1, b = 0, cin = 0" severity error;

        a <= '1';
        b <= '0';
        cin <= '1';
        wait for 50 ns;
        assert((sum = '0') and (cout = '1')) report "Test Failed, a = 1, b = 0, cin = 1" severity error;

        a <= '1';
        b <= '1';
        cin <= '0';
        wait for 50 ns;
        assert((sum = '0') and (cout = '1')) report "Test Failed, a = 1, b = 1, cin = 0" severity error;

        a <= '1';
        b <= '1';
        cin <= '1';
        wait for 50 ns;
        assert((sum = '1') and (cout = '1')) report "Test Failed, a = 1, b = 1, cin = 1" severity error;

    end process;
end architecture;
