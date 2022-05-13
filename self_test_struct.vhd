library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

--Structural entity to connect the upper part of the system
entity self_test_struct is
    port(
        reset    : in std_logic;
        mclk     : in std_logic;
        dir_sync : out std_logic;
        en_sync  : out std_logic
        );
end entity self_test_struct;

architecture netlist of self_test_struct is
    signal duty_cycle        :   std_logic_vector(7 downto 0);
    signal en, dir           :   std_logic;

    component pulse_width_modulator is
        port(
            mclk        : in std_logic; --100MHz, positive flank                              
            reset       : in std_logic; --Asynchronous reset, active high                    
            duty_cycle  : in std_logic_vector(7 downto 0); 
            dir, en     : out std_logic
        );
    end component pulse_width_modulator;

    component self_test is
        port(
            mclk        : in std_logic; --100MHz, positive flank                              
            reset       : in std_logic; --Asynchronous reset, active high                    
            duty_cycle  : out std_logic_vector(7 downto 0)
        );
    end component self_test;

    component output_synchronizer_ent is
        port(
            mclk              : in std_logic; --100MHz, positive flank
            reset             : in std_logic; --Asynchronous reset, active high
            en, dir           : in std_logic;
            en_sync, dir_sync : out std_logic
        );
    end component output_synchronizer_ent;


begin
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
   OUTPUT_SYNCRONIZER : output_synchronizer_ent
   port map(
            mclk      => mclk,
            reset     => reset,
            en        => en,
            dir       => dir,
            en_sync   => en_sync,
            dir_sync  => dir_sync
            );
end architecture netlist;
