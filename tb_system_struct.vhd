library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity tb_system_struct is

end entity tb_system_struct;

architecture tb_beh of tb_system_struct is
    component system_struct is
        port(
            mclk       : in std_logic; --100MHz, positive flank                              
            reset      : in std_logic;                   
            SA         : in std_logic;
            SB         : in std_logic;
            duty_cycle : in std_logic_vector(7 downto 0);
            velocity   : out signed(7 downto 0);
            DIR_sync   : out std_logic;
            EN_sync    : out std_logic;
            abcdefg    : out std_logic_vector(6 downto 0);
            c          : out std_logic

        );
    end component system_struct;

    signal mclk, reset        :   std_logic := '0';
    signal SA                 :   std_logic := '0';
    signal SB                 :   std_logic := '0';
    signal c                  :   std_logic;
    signal DIR_sync           :   std_logic;
    signal EN_sync            :   std_logic;
    signal abcdefg            :   std_logic_vector(6 downto 0);
    signal velocity           :   signed(7 downto 0);
    signal duty_cycle         :   std_logic_vector(7 downto 0);
    constant HALF_PERIOD      :   time := 5 ns;

begin
   reset <= '1', '0' after 5 ns;
   mclk <= not mclk after HALF_PERIOD;
   SA <= '0' after 100 ns, '1' after 150 ns;
   SB <= '1' after 100 ns, '0' after 200 ns;
   duty_cycle <= (others => '0'), std_logic_vector(to_unsigned(20, 8)) after 100 ns;

   SYSTEM : 
   system_struct port map(
            mclk       => mclk,
            reset      => reset,
            SA         => SA,
            SB         => SB,
            duty_cycle => duty_cycle,
            velocity   => velocity,
            DIR_sync   => DIR_sync,
            EN_sync    => EN_sync,
            abcdefg    => abcdefg,
            c          => c 
            );
end architecture tb_beh;
