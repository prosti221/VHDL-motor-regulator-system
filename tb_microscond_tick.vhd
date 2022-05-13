library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

--I run this for 17 seconds and check that it does the right think in the waveform
entity tb_microsecond_tick is

end entity tb_microsecond_tick;

architecture behavioural of tb_microsecond_tick is
    component microsecond_tick is
        port(
            mclk        : in std_logic; --100MHz, positive flank                              
            reset       : in std_logic; --Asynchronous reset, active high                    
            tick        : out std_logic
        );
    end component microsecond_tick;

    signal mclk, reset    :   std_logic := '0';
    signal tick           :   std_logic; 
    constant HALF_PERIOD  :   time := 5 ns;

begin
   mclk <= not mclk after HALF_PERIOD;

   TEST_0 : microsecond_tick
   port map(
            mclk       => mclk,
            reset      => reset,
            tick       => tick 
            );
end architecture behavioural;
