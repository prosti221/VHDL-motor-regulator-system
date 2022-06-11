library IEEE;                                                                      
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity system_struct is
    port(
        mclk       : in std_logic;
        reset      : in std_logic;
        SA         : in std_logic;
        SB         : in std_logic;
        duty_cycle : in std_logic_vector(7 downto 0);
        DIR_sync   : out std_logic;
        EN_sync    : out std_logic;
        velocity   : out signed(7 downto 0);
        abcdefg    : out std_logic_vector(6 downto 0);
        c          : out std_logic
    );
end entity system_struct;

architecture netlist of system_struct is
    signal dir, en         : std_logic; 

    component q_struct is
        port(
            mclk     : in std_logic; --100MHz, positive flank                              
            reset    : in std_logic;
            SA, SB   : in std_logic;
            abcdefg  : out std_logic_vector(6 downto 0);
            velocity : out signed(7 downto 0);
            c        : out std_logic
        );
    end component q_struct;

    component output_synchronizer_ent is                                           
        port(                                                                      
            mclk              : in std_logic; --100MHz, positive flank             
            reset             : in std_logic; --Asynchronous reset, active high 
            en, dir           : in std_logic;                                      
            EN_sync, DIR_sync : out std_logic                                      
        );                                                                         
    end component output_synchronizer_ent; 

    component pulse_width_modulator is
        port(
            mclk        : in std_logic; --100MHz, positive flank
            reset       : in std_logic; --Asynchronous reset, active high
            duty_cycle  : in std_logic_vector(7 downto 0);
            dir, en     : out std_logic
        );
    end component pulse_width_modulator;

begin
   q_struct_0 : q_struct 
   port map(
            mclk     => mclk,
            reset    => reset,
            SA       => SA,
            SB       => SB,
            abcdefg  => abcdefg,
            velocity => velocity,
            c        => c 
            );

   pwm_0 : pulse_width_modulator
   port map(
           mclk       => mclk,
           reset      => reset,
           duty_cycle => duty_cycle,
           dir        => dir,
           en         => en
       );

   output_sync_0 : output_synchronizer_ent
   port map(
           mclk     => mclk,
           reset    => reset,
           en       => en,
           dir      => dir,
           EN_sync  => EN_sync,
           DIR_sync => DIR_sync
           );

end architecture netlist;
