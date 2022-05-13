library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity microsecond_tick is
    port(
        mclk, reset : in std_logic; --100 MHz clock
        tick        : out std_logic --A signal/clock that has a period of 1 second.
    );
end entity microsecond_tick;

architecture microsecond_tick_beh of microsecond_tick is
    signal counter      : unsigned(31 downto 0) := (others => '0'); 
    constant MAX_COUNT  : unsigned(31 downto 0) := to_unsigned(100, 32); --This will count up to a micro_second

begin
    COUNT : process(mclk, reset)
    begin
        if reset then
            counter <= (others => '0');
            tick <= '0';
        elsif rising_edge(mclk) then
            if (counter > MAX_COUNT + 1) then
                tick <= '1';
                counter <= (others => '0');
            else
                tick <= '0';
                counter <= counter + 1;
            end if;
        end if;
    end process COUNT;
end architecture microsecond_tick_beh;
