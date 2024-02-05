library IEEE;
use IEEE.std_logic_1164.all;


entity register_file_tb is
end register_file_tb;

architecture testbench of register_file_tb is 
    signal clk: std_logic := '0';
    signal ena: std_logic;
    signal write_ena: std_logic;
    signal ra_addr: std_logic_vector(2 downto 0);
    signal ra_data_in: std_logic_vector(15 downto 0);
    signal rb_addr: std_logic_vector(2 downto 0);
    signal rc_addr: std_logic_vector(2 downto 0);
    signal rb_data_out: std_logic_vector(15 downto 0);
    signal rc_data_out: std_logic_vector(15 downto 0);
    

begin
    duv: entity work.register_file port map(
        clk => clk,
        ena => ena,
        write_ena => write_ena,
        ra_addr => ra_addr,
        ra_data_in => ra_data_in,
        rb_addr => rb_addr,
        rc_addr => rc_addr,
        rb_data_out => rb_data_out,
        rc_data_out => rc_data_out
    );

    clk <= not clk after 50 ns;

    stimulus: process 
    begin
        ena <= '1';
        write_ena <= '1';
        ra_addr <= "001";
        ra_data_in <= "1010101010101010";

        wait for 50 ns;
        rb_addr <= "001";
    end process;

end architecture;
