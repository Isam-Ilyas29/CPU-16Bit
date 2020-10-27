library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity and_gate is
    port (
        -- Input
        a, b : in std_logic;

        -- Output
        y    : out std_logic
    );
end entity;

architecture and_gate_arch of and_gate is
begin
    y <= a and b;
end architecture;
