library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity output_synchronizer_ent is
    port(
        mclk               : in std_logic;
        reset              : in std_logic;
        en, dir            : in std_logic;
        en_sync, dir_sync  : out std_logic
    );
end entity output_synchronizer_ent;

architecture synchronizer_beh of output_synchronizer_ent is

begin
    SYNC:
    process(mclk, reset)
    begin
        if reset then
            en_sync <= '0';
            dir_sync <= '0';
        elsif rising_edge(mclk) then
            en_sync <= en;
            dir_sync <= dir;
        end if;
    end process SYNC;
end architecture synchronizer_beh;
