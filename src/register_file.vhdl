library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity register_file is
    port (
        clk: in std_logic;
        ena: in std_logic;
        write_ena: in std_logic;
        ra_addr: in std_logic_vector(2 downto 0);
        ra_data_in: in std_logic_vector(15 downto 0);
        rb_addr: in std_logic_vector(2 downto 0);
        rc_addr: in std_logic_vector(2 downto 0);

        rb_data_out: out std_logic_vector(15 downto 0);
        rc_data_out: out std_logic_vector(15 downto 0)
    );
end entity register_file;

architecture rtl of register_file is
type reg_mem is array (2 downto 0) of std_logic_vector(15 downto 0);
signal registers : reg_mem;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if write_ena = '1' then
                registers(to_integer(unsigned(ra_addr))) <= ra_data_in;
            end if;
            if ena = '1' then
                rb_data_out <= registers(to_integer(unsigned(rb_addr)));
                rc_data_out <= registers(to_integer(unsigned(rc_addr)));
            end if;
        end if;
    end process;
end architecture rtl; 
