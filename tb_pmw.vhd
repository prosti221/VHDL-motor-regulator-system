library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

--I run this for 17 seconds and check that it does the right think in the waveform
entity tb_pwm is

end entity tb_pwm;

architecture behavioural of tb_pwm is
    component pulse_width_modulator is
        port(
            mclk        : in std_logic; --100MHz, positive flank                              
            reset       : in std_logic; 
            duty_cycle  : in std_logic_vector(7 downto 0); 
            dir, en     : out std_logic
        );
    end component pulse_width_modulator;

    component self_test is
        port(
            mclk        : in std_logic; --100MHz, positive flank                              
            reset       : in std_logic;
            duty_cycle  : out std_logic_vector(7 downto 0)
        );
    end component self_test;

    signal mclk, reset    :   std_logic := '0';
    signal en, dir        :   std_logic;
    signal duty_cycle     :   std_logic_vector(7 downto 0);
    constant HALF_PERIOD  :   time := 5 ns;

begin
   reset <= '1' after 1 us, '0' after 150 us;
   mclk <= not mclk after HALF_PERIOD;

   PWM_O : pulse_width_modulator
   port map(
            mclk       => mclk,
            reset      => reset,
            duty_cycle => duty_cycle,
            en         => en,
            dir        => dir
            );

   TEST_0 : self_test
   port map(
            mclk       => mclk,
            reset      => reset,
            duty_cycle => duty_cycle
            );
end architecture behavioural;
