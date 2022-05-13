library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity input_synchronizer_ent is
    port(
        mclk              : in std_logic;
        reset             : in std_logic;
        SA, SB            : in std_logic;
        SA_sync, SB_sync  : out std_logic
    );
end entity input_synchronizer_ent;

architecture synchronizer_beh of input_synchronizer_ent is
    signal Q1, Q2 : std_logic;

begin
    SYNC:
    process(mclk, reset)
    begin
        if reset then
            Q1 <= '0';
            Q2 <= '0';
        elsif rising_edge(mclk) then
            Q1 <= SA;
            Q2 <= SB;
        end if;
    end process SYNC;
    SA_sync <= Q1;
    SB_sync <= Q2;
end architecture synchronizer_beh;
