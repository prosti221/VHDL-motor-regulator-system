library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity self_test is
    port(
        mclk, reset  : in std_logic;
        duty_cycle   : out std_logic_vector(7 downto 0)
        );
end entity self_test;

architecture self_test_beh of self_test is
    signal adr       :   unsigned(4 downto 0) := (others => '0');
    signal next_adr  :   unsigned(4 downto 0) := (others => '0');
    signal data      :   std_logic_vector(7 downto 0);
    signal tick      :   std_logic;
    signal sec_count :   unsigned(1 downto 0) := (others => '0');   --Counts seconds
    CONSTANT UP_TIME :   unsigned(1 downto 0) := to_unsigned(3, 2); --Seconds before next data

    component second_tick is
        port(
            mclk, reset : in std_logic;
            tick        : out std_logic
        );
    end component second_tick;

    component ROM is
        port(
            adr          : in unsigned(4 downto 0);
            data         : out std_logic_vector(7 downto 0)
        );
    end component ROM;

begin
    ROM_0 : rom
    port map(
            adr  => adr,
            data => data 
    );

    TICK_0 : second_tick 
    port map(
            mclk  => mclk,
            reset => reset,
            tick  => tick
    );

    COUNT_SECONDS:
    process(mclk, tick, sec_count)
    begin
    if rising_edge(mclk) then
        if (sec_count = UP_TIME) then
            sec_count <= (others => '0');
        elsif tick then
            sec_count <= sec_count + 1;
        end if;
    end if;
    end process COUNT_SECONDS;

    INCREMENT_ADDRESS:
    process(mclk, sec_count, adr)
    begin
    if rising_edge(mclk) then
        if (adr < 19) and (sec_count = UP_TIME) then
            next_adr <= adr + 1;
        end if;
    end if;
    end process INCREMENT_ADDRESS;

    adr <= next_adr;
    duty_cycle <= data;
end architecture self_test_beh;
